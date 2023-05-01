module edge_detection
(
   input    wire           board_clk      ,
   input    wire           rx             ,    
   input    wire           sys_rst_n      ,
//   input    wire           key_pulse      ,
   output   wire           tx             ,        
   output   wire           hsync          ,
   output   wire           vsync          ,
   output   wire [4:0]     rgb_red        ,
   output   wire [5:0]     rgb_green      ,
   output   wire [4:0]     rgb_blue       ,
   output   wire           vga_driver_clk ,
   output   wire           rgb_blk        
);

parameter    baud_rate = 9600;
parameter    system_clock = 50000000;
//parameter    system_clock = 500000;//仿真用，缩短仿真时间

//tips：参考系统框图定义内部连线，能有效避免连线错误
   wire  [2:0]    rgb_r   ;
   wire  [2:0]    rgb_g ;
   wire  [1:0]    rgb_b  ;

   wire           clk_25M;
   wire           clk_50M;
   wire           rx_valid_flag;
   wire  [7:0]    pix_data;
   wire  [7:0]    rx_out;
   wire  [9:0]    pix_x;
   wire  [9:0]    pix_y;
   wire           sobel_valid_flag;
   wire  [7:0]    sobel_out;
//VGA模块不支持RGB332故通过补充R G B三个通道的低位，将RGB332转换为RGB565
//高三位也是包含了图像数据的重要信息
assign rgb_red    = {rgb_r , 2'b0};
assign rgb_green  = {rgb_g , 3'b0};
assign rgb_blue   = {rgb_b , 3'b0};

//使用的VGA模块需要一路驱动时钟，与640×480对应
assign vga_driver_clk = clk_25M;

pll_ip u0
   (
      .inclk0        (board_clk  ), //50MHz

      .c0            (clk_25M    ), //25MHz
      .c1            (clk_50M    )  //50MHz
   );
   
uart_rx //注意带参数模块的例化方式
   #(
      .baud_rate     (baud_rate   ),
      .system_clock  (system_clock)
   )
u1
   (
      .sys_clk       (clk_50M    ),
      .sys_rst_n     (sys_rst_n  ),
      .rx            (rx         ),

      .para_out      (rx_out     ),
      .valid_flag    (rx_valid_flag)   
   );

sobel_algorithm u2
   (
      .sys_clk       (clk_50M    ),
      .sys_rst_n     (sys_rst_n  ),
      .data_in       (rx_out     ),
      .in_flag       (rx_valid_flag),
//    .threshold     (),
      .data_out      (sobel_out),
      .out_flag      (sobel_valid_flag)
   );

vga_ctrl u3
   (
      .vga_clk       (clk_25M    ), 
      .sys_rst_n     (sys_rst_n  ), 
      .pix_data      (pix_data   ), 

      .hsync         (hsync      ), 
      .vsync         (vsync      ), 
      .pix_x         (pix_x      ), 
      .pix_y         (pix_y      ), 
      .vga_rgb       ({rgb_r, rgb_g, rgb_b}), 
      .vga_blk       (rgb_blk    )
   );
   
vga_pic u4
   (
      .sys_clk       (clk_50M    ),
      .vga_clk       (clk_25M    ),
      .sys_rst_n     (sys_rst_n  ),
      .pix_x         (pix_x      ),
      .pix_y         (pix_y      ),
      .pic_data_in   (sobel_out  ),
      .rx_valid_flag (sobel_valid_flag),

      .pix_data      (pix_data   )   //RGB565
   );

uart_tx
   #(
      .baud_rate     (baud_rate  ),
      .system_clock  (system_clock)
   )
u5
   (
      .sys_clk       (clk_50M    ),
      .sys_rst_n     (sys_rst_n  ),
      .para_in       (sobel_out  ),
      .valid_flag    (sobel_valid_flag),
      .tx            (tx         )
   );

endmodule
