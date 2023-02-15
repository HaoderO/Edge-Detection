module uart_tx
#(
   parameter         baud_rate = 9600,
   parameter         system_clock = 50000000
)
(
   input                   sys_clk,
   input                   sys_rst_n,
   input    wire   [7:0]   para_in,
   input                   valid_flag,
   output   reg            tx
);

   reg               work_en;
   reg      [12:0]   baud_cnt;
   reg               bit_flag;
   reg      [3:0]    bit_cnt;
   localparam        baud_cnt_max = system_clock/baud_rate ;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      work_en <= 1'b0;
   else if (valid_flag == 1'b1)
      work_en <= 1'b1;
   else if ((bit_cnt == 4'd9) && (bit_flag == 1'b1))
      work_en <= 1'b0;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      baud_cnt <= 13'd0;
   else if ((work_en == 1'b0) || (baud_cnt == baud_cnt_max - 1))
      baud_cnt <= 13'd0;
   else if (work_en == 1'b1)
      baud_cnt <= baud_cnt + 1'b1;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      bit_flag <= 1'b0;
   else if (baud_cnt == 13'd1)
      bit_flag <= 1'b1;
   else
      bit_flag <= 1'b0;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      bit_cnt <= 4'd0;
   else if ((bit_cnt == 4'd9) && (bit_flag == 1'b1))
      bit_cnt <= 4'd0;
   else if ((work_en == 1'b1) && (bit_flag == 1'b1))
      bit_cnt <= bit_cnt + 1'b1;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      tx <= 1'b1;
   else if (bit_flag == 1'b1)
      case (bit_cnt)
         0 : tx <= 1'b0;
         1 : tx <= para_in[0];
         2 : tx <= para_in[1];
         3 : tx <= para_in[2];
         4 : tx <= para_in[3];
         5 : tx <= para_in[4];
         6 : tx <= para_in[5];
         7 : tx <= para_in[6];
         8 : tx <= para_in[7];
         9 : tx <= 1'b1;
         default : tx <= 1'b1;
      endcase
   
endmodule