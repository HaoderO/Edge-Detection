`timescale 1 ns/1 ns

module top
#(
    parameter               H_DISP = 640        ,   //图像宽度
    parameter               V_DISP = 480            //图像高度
)
(
    input   wire            clk                 ,
    input   wire            rst_n               ,

    output  wire            VGA_hsync           ,   //VGA行同步
    output  wire            VGA_vsync           ,   //VGA场同步
    output  wire    [ 7:0]  VGA_data            ,   //VGA数据
    output  wire            VGA_de                  //VGA数据使能
);

    wire                    gray_hsync          ;   //灰度数据行同步
    wire                    gray_vsync          ;   //灰度数据场同步
    wire    [ 7:0]          gray_data           ;   //灰度数据
    wire                    gray_de             ;   //灰度数据使能

img_gray_gen
#(
    .H_DISP                 (H_DISP             ),  //图像宽度
    .V_DISP                 (V_DISP             )   //图像高度
)
u_img_gray_gen
(
    .clk                    (clk                ),  //时钟
    .rst_n                  (rst_n              ),  //复位
    
    .gray_hsync             (gray_hsync         ),  //gray行同步
    .gray_vsync             (gray_vsync         ),  //gray场同步
    .gray_data              (gray_data          ),  //gray数据
    .gray_de                (gray_de            )   //gray数据使能
);

sobel
#(
    .H_DISP                 (H_DISP             ),  //图像宽度
    .V_DISP                 (V_DISP             )   //图像高度
)
u_sobel
(
    .clk                    (clk                ),  //时钟
    .rst_n                  (rst_n              ),  //复位

    .Y_hsync                (gray_hsync         ),  //Y分量行同步
    .Y_vsync                (gray_vsync         ),  //Y分量场同步
    .Y_data                 (gray_data          ),  //Y分量数据
    .Y_de                   (gray_de            ),  //Y分量数据使能

    .value                  (8'd50              ),  //阈值

    .sobel_hsync            (VGA_hsync          ),  //sobel行同步
    .sobel_vsync            (VGA_vsync          ),  //sobel场同步
    .sobel_data             (VGA_data           ),  //sobel数据
    .sobel_de               (VGA_de             )   //sobel数据使能
);

endmodule