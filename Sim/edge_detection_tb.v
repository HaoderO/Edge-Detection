`timescale 1ns/1ns
module edge_detection_tb;
// Ports
reg             board_clk         ;
reg             rx                ;
reg             sys_rst_n         ;
reg   [14:0]    data_mem[32399:0] ;

wire            tx                ;
wire            hsync             ;
wire            vsync             ;
wire  [4:0]     rgb_red           ;
wire  [5:0]     rgb_green         ;
wire  [4:0]     rgb_blue          ;

edge_detection edge_detection_dut 
  (
    .board_clk      (board_clk       ),
    .sys_rst_n      (sys_rst_n       ),
    .rx             (rx              ),

    .tx             (tx              ),
    .hsync          (hsync           ),
    .vsync          (vsync           ),
    .rgb_red        (rgb_red         ),
    .rgb_green      (rgb_green       ),
    .rgb_blue       (rgb_blue        ),
    .vga_driver_clk (vga_driver_clk  ),
    .rgb_blk        (rgb_blk         ) 
  );

initial begin
  begin
    board_clk = 1'b1;
    sys_rst_n = 1'b0;
    #20
    sys_rst_n = 1'b1;
  end
end

always  #10 board_clk = !board_clk;

initial 
  begin
    $readmemh("D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Doc/logo.txt",data_mem);
  end

//rx 赋初值,调用 rx_byte
initial
  begin
      rx <= 1'b1;
      #200
      rx_byte();
  end

//rx_byte
task rx_byte();
  integer j;
    for(j=0;j<32400;j=j+1)
      rx_bit(data_mem[j]);
endtask

//rx_bit
task rx_bit(input[7:0] data);//data 是 data_mem[j]的值。
integer i;
  for(i=0;i<10;i=i+1)
begin
  case(i)
      0: rx <= 1'b0; //起始位
      1: rx <= data[0];
      2: rx <= data[1];
      3: rx <= data[2];
      4: rx <= data[3];
      5: rx <= data[4];
      6: rx <= data[5];
      7: rx <= data[6];
      8: rx <= data[7]; //上面 8 个发送的是数据位
      9: rx <= 1'b1; //停止位
  endcase
  #(52*20);
end
endtask

//defparam uart_vga_dut.u3.baud_cnt_max = 52;

endmodule
