module uart_rx
(
   input                sys_clk,
   input                sys_rst_n,
   input                rx,
   output   reg   [7:0] para_out,
   output   reg         valid_flag
);

   parameter         baud_rate = 9600;
   parameter         system_clock = 50000000;
   reg               rx_reg1;
   reg               rx_reg2;
   reg               rx_reg3;
   reg               start_flag;
   reg               work_en;
   integer           baud_cnt;
   reg               bit_flag;
   integer           bit_cnt;
   reg      [7:0]    rx_data;
   reg               rx_flag;
   parameter    baud_cnt_max = system_clock/baud_rate;
   
always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      rx_reg1 <= 1'b1;
   else 
      rx_reg1 <= rx;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      rx_reg2 <= 1'b1;
   else 
      rx_reg2 <= rx_reg1;
      
always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      rx_reg3 <= 1'b1;
   else
      rx_reg3 <= rx_reg2;   

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      start_flag <= 1'b0;
   else 
      if ((rx_reg3 == 1'b1) & (rx_reg2 == 1'b0))
         start_flag <= 1'b1;
      else
         start_flag <= 1'b0;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      work_en <= 1'b0;
   else 
      if (start_flag == 1'b1)
         work_en <= 1'b1;
      else if ((bit_cnt == 8) & (bit_flag == 1'b1))
         work_en <= 1'b0;
      else
         work_en <= work_en;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      baud_cnt <= 0;
   else 
      if ((baud_cnt == baud_cnt_max - 1) | (work_en == 1'b0))
         baud_cnt <= 0;
      else if (work_en == 1'b1)
         baud_cnt <= baud_cnt + 1;
      else
         baud_cnt <= baud_cnt;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      bit_flag <= 1'b0;
   else 
      if (baud_cnt == baud_cnt_max/2 - 1)
         bit_flag <= 1'b1;
      else
         bit_flag <= 1'b0;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      bit_cnt <= 0;
   else 
      if ((bit_cnt == 8) & (bit_flag == 1'b1))
         bit_cnt <= 0;
      else if (bit_flag == 1'b1)
         bit_cnt <= bit_cnt + 1;
      else
         bit_cnt <= bit_cnt;
always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      rx_data <= 8'b00000000;
   else 
      if ((bit_cnt >= 1) & (bit_cnt <= 8) & (bit_flag == 1'b1))
         rx_data[bit_cnt - 1] <= rx_reg3;
      else
         rx_data <= rx_data;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      rx_flag <= 1'b0;
   else 
      if ((bit_cnt == 8) & (bit_flag == 1'b1))
         rx_flag <= 1'b1;
      else
         rx_flag <= 1'b0;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      para_out <= 8'b00000000;
   else 
      if (rx_flag == 1'b1)
         para_out <= rx_data;

always @(posedge sys_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      valid_flag <= 1'b0;
   else 
      valid_flag <= rx_flag;
   
endmodule
