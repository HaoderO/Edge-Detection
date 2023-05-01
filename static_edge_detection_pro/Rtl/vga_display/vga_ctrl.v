module vga_ctrl
(
   input    wire           vga_clk     ,
   input    wire           sys_rst_n   ,
   input    wire  [7:0]    pix_data    ,
   
   output   wire  [9:0]    pix_x       ,
   output   wire  [9:0]    pix_y       ,
   output   wire           driver_clk  ,
   output   wire           hsync       ,
   output   wire           vsync       ,
   output   wire  [7:0]    vga_rgb     ,
   output   wire           vga_blk     
);

//640×480
   parameter     h_sync    = 10'd96;
   parameter     h_back    = 10'd40;
   parameter     h_left    = 10'd8;
   parameter     h_valid   = 10'd640;
   parameter     h_right   = 10'd8;
   parameter     h_front   = 10'd8;
   parameter     h_total   = 10'd800;
   
   parameter     v_sync    = 10'd2;
   parameter     v_back    = 10'd25;
   parameter     v_top     = 10'd8;
   parameter     v_valid   = 10'd480;
   parameter     v_bottom  = 10'd8;
   parameter     v_front   = 10'd2;
   parameter     v_total   = 10'd525;

reg   [9:0]    h_cnt;
reg   [9:0]    v_cnt;

assign driver_clk = vga_clk;

always @(posedge vga_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      h_cnt <= 10'd0;
   else  if (h_cnt == h_total - 1)
      h_cnt <= 10'd0;
   else
      h_cnt <= h_cnt + 1'b1;

always @(posedge vga_clk or negedge sys_rst_n)
   if (sys_rst_n == 1'b0)
      v_cnt <= 10'd0;
   else  if ((v_cnt == v_total - 1) && (h_cnt == h_total - 1))
      v_cnt <= 10'd0;
   else  if (h_cnt == h_total - 1)
      v_cnt <= v_cnt + 1'b1;
   else
      v_cnt <= v_cnt;
   
assign vga_blk = (((h_cnt >= h_sync + h_back + h_left) && 
                  (h_cnt < h_sync + h_back + h_left + h_valid)) && 
                  ((v_cnt >= v_sync + v_back + v_top) && 
                  (v_cnt < v_sync + v_back + v_top + v_valid))) 
               ? 1'b1 : 1'b0;
   
assign pix_x = (vga_blk == 1'b1) ? (h_cnt - (h_sync + h_back + h_left) - 1'b1) : pix_x;
   
assign pix_y = (vga_blk == 1'b1) ? (v_cnt - (v_sync + v_back + v_top)) : pix_y;
   
assign hsync = ((h_cnt >= 0) && (h_cnt < h_sync)) ? 1'b0 : 1'b1;
   
assign vsync = ((v_cnt >= 0) && (v_cnt < v_sync)) ? 1'b0 : 1'b1;
   
assign vga_rgb = (vga_blk == 1'b1) ? pix_data : 8'b0;

endmodule