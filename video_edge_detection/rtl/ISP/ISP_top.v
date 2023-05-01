module ISP_top
#(
    parameter H_DISP            = 12'd640       ,
    parameter V_DISP            = 12'd480        
)
(
    input   wire                clk             ,
    input   wire                rst_n           ,
    input   wire                RGB_hsync       ,
    input   wire                RGB_vsync       ,
    input   wire    [15:0]      RGB_data        ,
    input   wire                RGB_de          ,

    output  wire                DISP_hsync      ,
    output  wire                DISP_vsync      ,
    output  wire    [15:0]      DISP_data       ,
    output  wire                DISP_de          
);

    wire                        Y_hsync         ;
    wire                        Y_vsync         ;
    wire            [ 7:0]      Y_data          ;
    wire                        Y_de            ;

    wire                        sobel_hsync     ;
    wire                        sobel_vsync     ;
    wire            [ 7:0]      sobel_data      ;
    wire                        sobel_de        ;

RGB565_Y u_RGB565_Y
(
    .clk                    (clk               ),
    .rst_n                  (rst_n             ),
    .RGB_hsync              (RGB_hsync         ),
    .RGB_vsync              (RGB_vsync         ),
    .RGB_data               (RGB_data          ),
    .RGB_de                 (RGB_de            ),

    .Y_hsync                (Y_hsync           ),
    .Y_vsync                (Y_vsync           ),
    .Y_data                 (Y_data            ),
    .Y_de                   (Y_de              ) 
);

sobel
#(
    .H_DISP                 (H_DISP            ),
    .V_DISP                 (V_DISP            ) 
)
u_sobel
(
    .clk                    (clk               ),
    .rst_n                  (rst_n             ),
    .Y_hsync                (Y_hsync           ),
    .Y_vsync                (Y_vsync           ),
    .Y_data                 (Y_data            ),
    .Y_de                   (Y_de              ),

    .sobel_hsync            (sobel_hsync       ),
    .sobel_vsync            (sobel_vsync       ),
    .sobel_data             (sobel_data        ),
    .sobel_de               (sobel_de          ) 
);

assign DISP_hsync = sobel_hsync;
assign DISP_vsync = sobel_vsync;
assign DISP_data  = {sobel_data[7:3],sobel_data[7:2],sobel_data[7:3]};
assign DISP_de    = sobel_de;

endmodule