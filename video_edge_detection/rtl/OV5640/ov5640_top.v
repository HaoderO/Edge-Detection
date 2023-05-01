module ov5640_top
#(
    parameter CMOS_H_PIXEL      = 12'd640           ,
    parameter CMOS_V_PIXEL      = 12'd480           ,
    parameter H_DISP            = 12'd480           ,
    parameter V_DISP            = 12'd272            
)
(
    input   wire                clk_24m             ,
    input   wire                rst_n               ,

    output  wire                cmos_xclk           ,
    output  reg                 cmos_rst_n          ,
    output  wire                cmos_pwdn           ,
    input   wire                cmos_pclk           ,
    input   wire                cmos_href           ,
    input   wire                cmos_vsync          ,
    input   wire    [ 7:0]      cmos_data           ,
    output  wire                cmos_scl            ,
    inout   wire                cmos_sda            ,

    output  wire                RGB_vld             ,
    output  wire    [15:0]      RGB_data            ,
    output  wire    [ 7:0]      FPS_rate             
);

    reg     [18:0]              delay_cnt           ;
    wire                        sccb_vld            ;
    wire                        sccb_en             ;
    wire    [23:0]              sccb_data           ;        
    wire                        sccb_done           ;
    wire                        sccb_dri_clk        ;
    wire                        sccb_cfg_done       ;

assign cmos_xclk  = clk_24m;

assign cmos_pwdn  = 1'b0;

always @(posedge clk_24m or negedge rst_n) begin
    if(!rst_n)
        delay_cnt <= 'b0;
    else if(delay_cnt <= 504000)
        delay_cnt <= delay_cnt + 1'b1;                    
end

always @(posedge clk_24m or negedge rst_n) begin
    if(!rst_n)
        cmos_rst_n <= 1'b0;    
    else if(delay_cnt==240000)
        cmos_rst_n <= 1'b1;
end

assign sccb_vld = delay_cnt == 504001;

sccb_ov5640_cfg
#(
    .CMOS_H_PIXEL           (CMOS_H_PIXEL           ),
    .CMOS_V_PIXEL           (CMOS_V_PIXEL           ) 
)
u_sccb_ov5640_cfg
(
    .clk                    (sccb_dri_clk           ),
    .rst_n                  (rst_n                  ),
    .sccb_vld               (sccb_vld               ),
    .sccb_done              (sccb_done              ),
    .sccb_en                (sccb_en                ),
    .sccb_data              (sccb_data              ),
    .sccb_cfg_done          (sccb_cfg_done          ) 
);

sccb 
#(
    .DEVICE_ID              (8'h78                  ),
    .CLK                    (26'd24_000_000         ),
    .SCL                    (18'd250_000            ) 
)
u_sccb
(       
    .clk                    (cmos_xclk              ),
    .rst_n                  (rst_n                  ),

    .sccb_en                (sccb_en                ),
    .sccb_addr              (sccb_data[23:8]        ),
    .sccb_data              (sccb_data[7:0]         ),

    .sccb_done              (sccb_done              ),
    .sccb_scl               (cmos_scl               ),
    .sccb_sda               (cmos_sda               ),

    .sccb_dri_clk           (sccb_dri_clk           ) 
);

cmos_capture
#(
    .CMOS_H_PIXEL           (CMOS_H_PIXEL           ),
    .CMOS_V_PIXEL           (CMOS_V_PIXEL           ),
    .H_DISP                 (H_DISP                 ),
    .V_DISP                 (V_DISP                 ) 
)
u_cmos_capture
(
    .clk_24m                (clk_24m                ),
    .cmos_pclk              (cmos_pclk              ),
    .rst_n                  (rst_n & sccb_cfg_done  ),

    .cmos_href              (cmos_href              ),
    .cmos_vsync             (cmos_vsync             ),
    .cmos_data              (cmos_data              ),

    .RGB_vld                (RGB_vld                ),
    .RGB_data               (RGB_data               ),
    .FPS_rate               (FPS_rate               ) 
);

endmodule