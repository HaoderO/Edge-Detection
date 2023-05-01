module top
#(
    parameter H_DISP        = 640               ,
    parameter V_DISP        = 480                    
)
(
    input                   sys_clk             ,
    input                   sys_rst_n           ,
    // CMOS 
    output                  cmos_xclk           ,
    output                  cmos_rst_n          ,
    output                  cmos_pwdn           ,
    input                   cmos_pclk           ,
    input                   cmos_href           ,
    input                   cmos_vsync          ,
    input   [ 7:0]          cmos_data           ,
    output                  cmos_scl            ,
    inout                   cmos_sda            ,
    // SDRAM 
    output                  sdram_clk           ,
    output                  sdram_cke           ,
    output                  sdram_cs_n          ,
    output                  sdram_ras_n         ,
    output                  sdram_cas_n         ,
    output                  sdram_we_n          ,
    output  [ 1:0]          sdram_ba            ,
    output  [ 1:0]          sdram_dqm           ,
    output  [12:0]          sdram_addr          ,
    inout   [15:0]          sdram_dq            ,
    // VGA 
    output                  VGA_clk             ,
    output                  VGA_blank           ,
    output                  VGA_hsync           ,
    output                  VGA_vsync           ,
    output  [15:0]          VGA_data            ,
    output                  VGA_de               
);

    wire                    rst_n               ;
    // PLL 
    wire                    clk_24m             ;
    wire                    clk_100m            ;
    wire                    clk_100m_shift      ;
    wire                    clk_25m             ;
    wire                    locked              ;
    // CMOS 
    wire    [ 7:0]          FPS_rate            ;
    // SDRAM 
    wire                    wr_en               ;
    wire    [15:0]          wr_data             ;
    wire                    rd_en               ;
    wire    [15:0]          rd_data             ;
    wire                    sdram_init_done     ;
    // RGB 
    wire                    RGB_hsync           ;
    wire                    RGB_vsync           ;
    wire    [15:0]          RGB_data            ;
    wire                    RGB_de              ;

pll_clk u_pll_clk
(
    .inclk0                 (sys_clk            ),
    .areset                 (~sys_rst_n         ),

    .c0                     (clk_24m            ),
    .c1                     (clk_100m           ),
    .c2                     (clk_100m_shift     ),
    .c3                     (clk_25m            ),
    .locked                 (locked             ) 
);

assign rst_n = sys_rst_n & locked & sdram_init_done;

ov5640_top
#(
    .H_DISP                 (H_DISP             ),
    .V_DISP                 (V_DISP             ) 
)
u_ov5640_top
(
    .clk_24m                (clk_24m            ),
    .rst_n                  (rst_n              ),

    .cmos_xclk              (cmos_xclk          ),
    .cmos_rst_n             (cmos_rst_n         ),
    .cmos_pwdn              (cmos_pwdn          ),
    .cmos_pclk              (cmos_pclk          ),
    .cmos_href              (cmos_href          ),
    .cmos_vsync             (cmos_vsync         ),
    .cmos_data              (cmos_data          ),
    .cmos_scl               (cmos_scl           ),
    .cmos_sda               (cmos_sda           ),

    .RGB_vld                (wr_en              ),
    .RGB_data               (wr_data            ),
    .FPS_rate               (FPS_rate           ) 
);

sdram_top u_sdram_top
(
    .ref_clk                (clk_100m           ),
    .out_clk                (clk_100m_shift     ),
    .rst_n                  (sys_rst_n          ),

    .wr_clk                 (cmos_pclk          ),
    .wr_en                  (wr_en              ),
    .wr_data                (wr_data            ),
    .wr_min_addr            (24'd0              ),
    .wr_max_addr            (H_DISP * V_DISP    ),
    .wr_len                 (10'd512            ),
    .wr_load                (~sys_rst_n         ),

    .rd_clk                 (clk_25m            ),
    .rd_en                  (rd_en              ),
    .rd_data                (rd_data            ),
    .rd_min_addr            (24'd0              ),
    .rd_max_addr            (H_DISP * V_DISP    ),
    .rd_len                 (10'd512            ),
    .rd_load                (~sys_rst_n         ),

    .sdram_init_done        (sdram_init_done    ),
    .sdram_pingpang_en      (1'b1               ),

    .sdram_clk              (sdram_clk          ),
    .sdram_cke              (sdram_cke          ),
    .sdram_cs_n             (sdram_cs_n         ),
    .sdram_ras_n            (sdram_ras_n        ),
    .sdram_cas_n            (sdram_cas_n        ),
    .sdram_we_n             (sdram_we_n         ),
    .sdram_ba               (sdram_ba           ),
    .sdram_addr             (sdram_addr         ),
    .sdram_dq               (sdram_dq           ),
    .sdram_dqm              (sdram_dqm          ) 
);

VGA_driver u_VGA_driver 
(
    .clk                    (clk_25m            ),
    .rst_n                  (rst_n              ),

    .VGA_req                (rd_en              ),
    .VGA_din                (rd_data            ),

    .VGA_clk                (VGA_clk            ),
    .VGA_blank              (VGA_blank          ),
    .VGA_hsync              (RGB_hsync          ),
    .VGA_vsync              (RGB_vsync          ),
    .VGA_data               (RGB_data           ),
    .VGA_de                 (RGB_de             ) 
);

ISP_top
#(
    .H_DISP                 (H_DISP             ),
    .V_DISP                 (V_DISP             ) 
)   
u_ISP_top   
(   
    .clk                    (clk_25m            ),
    .rst_n                  (rst_n              ),
    .RGB_hsync              (RGB_hsync          ),
    .RGB_vsync              (RGB_vsync          ),
    .RGB_data               (RGB_data           ),
    .RGB_de                 (RGB_de             ),

    .DISP_hsync             (VGA_hsync          ),
    .DISP_vsync             (VGA_vsync          ),
    .DISP_data              (VGA_data           ),
    .DISP_de                (VGA_de             ) 
);

endmodule 