module hc595_ctrl
(
    input   wire            sys_clk     ,
    input   wire            sys_rst_n   ,
    input   wire    [7:0]   sel         ,//位选
    input   wire    [7:0]   seg         ,//段选 高位→低位：dp g f e d c b a

    output  reg             ds          ,//74hc595的串行数据输入端
    output  reg             shcp        ,//移位时钟，↑将输入的串行数据从Q0依次移到Q7后经Q7输出
    output  reg             stcp        ,//8位存储器时钟（存储并行数据），OE为低电平时Q0~Q7并行输出
    output  wire            oe 
);
    
wire   [15:0]   data;

//根据74HC595数据手册选择合适的工作频率（与工作电压有关）
//工作频率过高数码管显示会产生较明显的余辉（可以直接用50M驱动尝试下）
reg    [1:0]    div_cnt;//分频计数器，将50M四分频作为工作频率

//每控制显示一个字符需要16bit的数据控制，即data
//而ds是串行输入端，故要将data拆成一位一位的数据送入ds
//故要用bit位信号控制将data从低位到高位依次送入ds，0~15循环计数
reg    [3:0]    bit_cnt;

//对位选和段选信号重新排列，使其经74hc595转换后能正确对应到数码管的控制端
//data的表示看原理图就明白了
assign data = {sel[0],sel[1],sel[2],sel[3],sel[4],sel[5],sel[6],sel[7],seg[0],seg[1],seg[2],seg[3],seg[4],seg[5],seg[6],seg[7]} ;
assign oe   = 1'b0;//使74HC595一直处于并行输出状态

always @(posedge sys_clk or negedge sys_rst_n) 
    if (sys_rst_n == 1'b0) 
        div_cnt <= 2'd0;
    else if (div_cnt == 2'd3) 
        div_cnt <= 2'd0;
    else 
        div_cnt <= div_cnt + 1'b1;

always @(posedge sys_clk or negedge sys_rst_n) 
    if (sys_rst_n == 1'b0) 
        bit_cnt <= 4'd0;
    else if ((bit_cnt == 4'd15)&&(div_cnt == 2'd3)) 
        bit_cnt <= 4'd0;
    else if (div_cnt == 2'd3) 
        bit_cnt <= bit_cnt + 1'b1;
    else 
        bit_cnt <= bit_cnt;

always @(posedge sys_clk or negedge sys_rst_n) 
    if (sys_rst_n == 1'b0) 
        ds <= 1'b0;
    else if (div_cnt == 2'd0) 
        ds <= data[bit_cnt];
    else 
        ds <= ds;

//这里涉及一个“眼”的概念
//简单来说就是希望采集稳定准确的数据（中间位置）
//即让shcp的上升沿采集 data[bit_cnt] 中间时刻的数据
always @(posedge sys_clk or negedge sys_rst_n)  
    if (sys_rst_n == 1'b0) 
        shcp <= 1'b0;
    else if (div_cnt == 2'd2) 
        shcp <= 1'b1;
    else if (div_cnt == 2'd0) 
        shcp <= 1'b0;
    else 
        shcp <= shcp;

//当16bit的数据准备就绪后，有stcp控制两片74HC595并行输出
always @(posedge sys_clk or negedge sys_rst_n) 
    if (sys_rst_n == 1'b0) 
        stcp <= 1'b0;
    else if ((bit_cnt == 4'd0)&&(div_cnt == 2'd0)) 
        stcp <= 1'b1;
    else if ((bit_cnt == 4'd0)&&(div_cnt == 2'd2)) 
        stcp <= 1'b0;
    else 
        stcp <= stcp;

endmodule