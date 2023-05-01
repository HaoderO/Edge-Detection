module sobel_algorithm
(
   input    wire        sys_clk        ,
   input    wire        sys_rst_n      ,
   input    wire  [7:0] data_in        ,
   input    wire        in_flag        ,   //接RX的数据有效信号
//     input    wire  [7:0] threshold,
   output   reg   [7:0] data_out       ,
   output   reg         out_flag
);

//设矩阵为180行180列
   parameter       row        = 8'd180       ;
   parameter       column     = 8'd180       ;
   parameter       threshold  = 8'b0000_1100 ;
   parameter       black      = 8'b0000_0000 ;
   parameter       white      = 8'b1111_1111 ;
   
   wire   [7:0]    dout_1;
   wire   [7:0]    dout_2;
   reg    [7:0]    col_cnt;
   reg    [7:0]    row_cnt;
   reg             wr_en_1;
   reg    [7:0]    din_1;
   reg             wr_en_2;
   reg    [7:0]    din_2;
   reg             rd_en_12;//两个FIFO的读使能（一起更新）
   reg             dout_flag;//求和结果输出
   reg    [7:0]    rd_num_cnt;//读出数据个数
   
   reg    [7:0]    dout_1_reg; //第“1”行数据
   reg    [7:0]    dout_2_reg; //第“2”行数据
   reg    [7:0]    data_in_reg;//第“3”行数据
   reg             rd_en_reg;  //三行数据准备完成的标志
   reg             rd_en_reg1; //为了与寄存数据保持一致

//九宫格数据
// a1 a2 a3 
// b1 b2 b3 
// c1 c2 c3 
reg   [7:0]    a_1;
reg   [7:0]    a_2;
reg   [7:0]    a_3;
reg   [7:0]    b_1;
reg   [7:0]    b_2;
reg   [7:0]    b_3;
reg   [7:0]    c_1;
reg   [7:0]    c_2;
reg   [7:0]    c_3;

reg            gx_gy_flag;//可以计算gx,gy的标志
reg   [8:0]    gx;//gx、gy、gxy均为有符号数
reg   [8:0]    gy;

reg            gxy_flag;//可以计算gxy的标志
reg   [7:0]    gxy;

reg            compare_flag;//可以将gxy与threshold比较的标志

//列计数
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      col_cnt <= 8'd0;
   else if ((col_cnt == column - 8'd1) && (in_flag == 1'b1))
      col_cnt <= 8'd0;
   else if (in_flag == 1'b1)
      col_cnt <= col_cnt + 8'd1;

//行计数
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      row_cnt <= 0;
   else if ((col_cnt == column - 1'b1) && (row_cnt == row - 1'b1) && (in_flag == 1'b1))
      row_cnt <= 0;
   else if ((col_cnt == column - 1'b1) && (in_flag == 1'b1))
      row_cnt <= row_cnt + 1'b1;

//FIFO1写使能
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      wr_en_1 <= 1'b0;
   else if ((row_cnt == 8'b0) && (in_flag == 1'b1)) //将第0行数据写入FIFO1的标志
      wr_en_1 <= 1'b1;
   else
      wr_en_1 <= dout_flag;

//FIFO1写数据
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      din_1 <= 8'd0;
   else if ((row_cnt == 8'd0) && (in_flag == 1'b1))
      din_1 <= data_in; //第0行数据给FIFO1
   else if (dout_flag == 1'b1)
      din_1 <= dout_2;  //FIFO2数据给FIFO1
   else
      din_1 <= din_1;

//FIFO2写使能
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      wr_en_2 <= 1'b0;
   //首尾两行数据不写入FIFO2，因为第0行直接给FIFO1了，最后一行求和后运算就结束了
   //注意如n行数据在程序中的首行序号为0，末行数据为n-1,倒数第二行为n-1,
   //故要注意“row_cnt <= row - 8'd2”所表达的意思
   else if ((row_cnt >= 8'd1) && (row_cnt <= row - 8'd2) && (in_flag == 1'b1))
      wr_en_2 <= 1'b1;
   else
      wr_en_2 <= 1'b0;

//FIFO2写数据
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      din_2 <= 8'd0;
   else if ((row_cnt >= 8'd1) && (row_cnt <= row - 8'd2) && (in_flag == 1'b1))
      din_2 <= data_in;
   else
      din_2 <= din_2;

//读使能，两个FIFO数据的转移是同时进行的
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      rd_en_12 <= 1'b0;
   //“row_cnt >= 8'd2”开始转移数据
   //因为这时三行数据才都是有效的
   else if ((row_cnt >= 8'd2) && (row_cnt <= row - 8'd1) && (in_flag == 1'b1))
      rd_en_12 <= 1'b1;
   else
      rd_en_12 <= 1'b0;

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      dout_flag <= 1'b0;
   else if ((wr_en_2 == 1'b1) && (rd_en_12 == 1'b1))
      dout_flag <= 1'b1;
   else
      dout_flag <= 1'b0;

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      rd_num_cnt <= 8'b0;
   else if ((rd_num_cnt == (column - 1'b1)) && (rd_en_12 == 1'b1))
      rd_num_cnt <= 8'b0;
   else if (rd_en_12 == 1'b1)
      rd_num_cnt <= rd_num_cnt + 1'b1;  
   else
      rd_num_cnt <= rd_num_cnt;  

/***********************数据打拍*********************************/
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      dout_1_reg <= 8'd0;
   else if (rd_en_reg == 1'b1)
      dout_1_reg <= dout_1;
   else
      dout_1_reg <= dout_1_reg;

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      dout_2_reg <= 8'd0;
   else if (rd_en_reg == 1'b1)
      dout_2_reg <= dout_2;
   else
      dout_2_reg <= dout_2_reg;

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      data_in_reg <= 8'd0;
   else if (rd_en_reg == 1'b1)
      data_in_reg <= data_in;
   else
      data_in_reg <= data_in_reg;

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      rd_en_reg <= 1'b0;
   else if (rd_en_12 == 1'b1)
      rd_en_reg <= rd_en_12;
   else
      rd_en_reg <= 1'b0;

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      rd_en_reg1 <= 1'b0;
   else if (rd_en_reg == 1'b1)
      rd_en_reg1 <= rd_en_reg;
   else
      rd_en_reg1 <= 1'b0;
/**********************************************************************/

/**********************************************************************/
always @(negedge sys_rst_n or posedge sys_clk)//注意对多个变量赋值的写法
   if (sys_rst_n == 1'b0) 
      begin
         a_1 <= 8'd0;
         a_2 <= 8'd0;
         a_3 <= 8'd0;
         b_1 <= 8'd0;
         b_2 <= 8'd0;
         b_3 <= 8'd0;
         c_1 <= 8'd0;
         c_2 <= 8'd0;
         c_3 <= 8'd0;
      end
   else
      begin
         a_1 <= a_2;
         a_2 <= a_3;
         a_3 <= dout_1_reg;
         b_1 <= b_2;
         b_2 <= b_3;
         b_3 <= dout_2_reg;
         c_1 <= c_2;
         c_2 <= c_3;
         c_3 <= data_in_reg;
      end
/**********************************************************************/

/**********************************************************************/
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      gx_gy_flag <= 1'b0;
   else if ((rd_en_reg1 == 1'b1) && ((rd_num_cnt >= 8'd3) || (rd_num_cnt == 8'd0)))
       gx_gy_flag <= 1'b1;
   else 
       gx_gy_flag <= 1'b0;

always @(negedge sys_rst_n or posedge sys_clk)
  if (sys_rst_n == 1'b0)
      gx <= 9'd0;
   else if (gx_gy_flag == 1'b1)
      gx <= a_3 - a_1 + ((b_3 - b_1) << 1) + c_3 - c_1;//用左移代替乘法，优化面积
   else
      gx <= gx;

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      gy <= 9'd0;
   else if (gx_gy_flag == 1'b1)
      gy <= a_1 - c_1 + ((a_2 - c_2) << 1) + a_3 - c_3;//用左移代替乘法，优化面积
   else
      gy <= gy;

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      gxy_flag <= 1'b0;
   else if (gx_gy_flag == 1'b1)
      gxy_flag <= 1'b1;
   else
      gxy_flag <= 1'b0;

//注意:计算Gxy时采用近似算法，即令Gxy=|Gx|+|Gy|
//这就有四种组合，即++、+-、-+、-
//通过最高位是0还是1来判断正负负
//二进制中，有符号数的最高位为0是表示正数，最高位为1是表示负
//还要注意:负数在计算机中是补码形式存在的，在进行数学运算的时候需要转换成原码
//即符号位不变其他位取反加一

/*****************    !!!错误写法!!!    ************
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      gxy <= 9'd0;
   else if(((gx[8] == 1'b0) && (gx[8] == 1'b0)) && (gxy_flag == 1'b1)))
      gxy <= gx + gy;   
   else if (((gx[8] == 1'b0) && (gx[8] == 1'b1)) && (gxy_flag == 1'b1))
      gxy <= gx - gy;                             
   else if (((gx[8] == 1'b1) && (gx[8] == 1'b0)) && (gxy_flag == 1'b1))
      gxy <= gy - gx;   
   else if (((gx[8] == 1'b1) && (gx[8] == 1'b1)) && (gxy_flag == 1'b1))
      gxy <=8'dd0 - (gx + gy);
   else
      gxy <= gxy
*/
always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      gxy <= 8'd0;
   else if (((gx[8] == 1'b0) && (gx[8] == 1'b0)) && (gxy_flag == 1'b1))
      gxy <= gx[7:0] + gy[7:0];
   else if (((gx[8] == 1'b0) && (gx[8] == 1'b1)) && (gxy_flag == 1'b1))
      gxy <= gx[7:0] + (~gy[7:0] + 1'b1);
   else if (((gx[8] == 1'b1) && (gx[8] == 1'b0)) && (gxy_flag == 1'b1))
      gxy <= (~gx[7:0] + 1'b1) + gy[7:0];
   else if (((gx[8] == 1'b1) && (gx[8] == 1'b1)) && (gxy_flag == 1'b1))
      gxy <= (~gx[7:0] + 1'b1) + (~gy[7:0] + 1'b1);
   else
      gxy <= gxy;

/**********************************************************************/

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      compare_flag <= 1'b0;
   else if (gxy_flag == 1'b1)
      compare_flag <= 1'b1;
   else
      compare_flag <= 1'b0;

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      data_out <= 8'd0;
   else if ((compare_flag == 1'b1) && (gxy >= threshold))
      data_out <= black;   
   else if ((compare_flag == 1'b1) && (gxy < threshold))
      data_out <= white;

always @(negedge sys_rst_n or posedge sys_clk)
   if (sys_rst_n == 1'b0)
      out_flag <= 1'b0;
   else if (compare_flag == 1'b1)
      out_flag <= 1'b1;
   else      
      out_flag <= 1'b0;

fifo_ip fifo_1
   (
      .clock   (sys_clk    ),
      .data    (din_1      ),
      .rdreq   (rd_en_12   ),
      .wrreq   (wr_en_1    ),
      .q       (dout_1     )
   );

fifo_ip fifo_2
   (
      .clock   (sys_clk    ),
      .data    (din_2      ),
      .rdreq   (rd_en_12   ),
      .wrreq   (wr_en_2    ),
      .q       (dout_2     )
   );

endmodule
