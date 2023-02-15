module key_filter
(
   input    wire  sys_clk     , 
   input    wire  sys_rst_n   , 
   input    wire  key_in      , //AC620按键是低电平有效
   output   reg   key_flag      //高电平有效
);

parameter  cnt_max = 20'd999999; //50MHz计数1000000次=20ms
reg   [19:0]    cnt_20ms; //按键稳定时间达20ms判定按键有效

always @(posedge sys_clk or negedge sys_rst_n)
    if (sys_rst_n == 1'b0)
        cnt_20ms <= 20'd0;
    else if (key_in == 1'b1)
        cnt_20ms <= 20'd0;
    else if (cnt_20ms == cnt_max)
        cnt_20ms <= cnt_max;
    else
        cnt_20ms <= cnt_20ms + 20'd1;  

always @(posedge sys_clk or negedge sys_rst_n)
    if (sys_rst_n == 1'b0)
        key_flag <= 1'b0;
    else if (cnt_20ms == cnt_max - 20'd1)
        key_flag <= 1'b1;
    else
        key_flag <= 1'b0;
   
endmodule
