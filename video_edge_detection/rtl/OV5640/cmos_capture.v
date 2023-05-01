module cmos_capture
#(
    parameter CMOS_H_PIXEL      = 12'd640           ,
    parameter CMOS_V_PIXEL      = 12'd480           ,
    parameter H_DISP            = 12'd480           ,
    parameter V_DISP            = 12'd272            
)   
(   
    input   wire                clk_24m             ,
    input   wire                cmos_pclk           ,
    input   wire                rst_n               ,
    input   wire                cmos_href           ,
    input   wire                cmos_vsync          ,
    input   wire    [ 7:0]      cmos_data           ,
    
    output  wire                RGB_vld             ,
    output  wire    [15:0]      RGB_data            ,
    output  reg     [ 7:0]      FPS_rate         
);

    parameter WAIT              = 10                             ;
    parameter TIME_1S           = 24_000000                      ;

    parameter H_START           = CMOS_H_PIXEL[11:2]-H_DISP[11:2];
    parameter H_STOP            = H_START + H_DISP               ;
    parameter V_START           = CMOS_V_PIXEL[11:2]-V_DISP[11:2];
    parameter V_STOP            = V_START + V_DISP               ;

    reg                         cmos_vsync_r1       ;
    reg                         cmos_vsync_r2       ;
    reg                         cmos_href_r1        ;
    reg                         cmos_href_r2        ;
    wire                        cmos_vsync_pos      ;
    reg     [ 3:0]              frame_cnt           ;
    wire                        frame_vld           ;
    reg                         byte_flag           ;

    reg     [11:0]              cnt_h               ;
    wire                        add_cnt_h           ;
    wire                        end_cnt_h           ;
    reg     [11:0]              cnt_v               ;
    wire                        add_cnt_v           ;
    wire                        end_cnt_v           ;
    reg                         RGB565_vld          ;
    reg     [15:0]              RGB565_data         ;

    wire                        frame_vsync         ;
    wire                        frame_hsync         ;
    reg                         frame_vsync_r       ;
    wire                        frame_vsync_pos     ;
    reg     [24:0]              cnt_1s              ;
    wire                        add_cnt_1s          ;
    wire                        end_cnt_1s          ;
    reg     [ 7:0]              cnt_FPS             ;

always @(posedge cmos_pclk or negedge rst_n) begin
    if(!rst_n) begin
        cmos_vsync_r1 <= 1'b0;
        cmos_vsync_r2 <= 1'b0;
        cmos_href_r1  <= 1'b0;
        cmos_href_r2  <= 1'b0;
    end
    else begin
        cmos_vsync_r1 <= cmos_vsync;
        cmos_vsync_r2 <= cmos_vsync_r1;
        cmos_href_r1  <= cmos_href;
        cmos_href_r2  <= cmos_href_r1;
    end
end

assign cmos_vsync_pos = (~cmos_vsync_r1 & cmos_vsync);

always @(posedge cmos_pclk or negedge rst_n) begin
    if(!rst_n) begin
        frame_cnt <= 'd0;
    end
    else if(cmos_vsync_pos && frame_vld==1'b0) begin
        frame_cnt <= frame_cnt + 1'b1;
    end
end

assign frame_vld = (frame_cnt >= WAIT) ? 1'b1 : 1'b0;

always  @(posedge cmos_pclk or negedge rst_n) begin
    if(!rst_n) begin
        byte_flag <= 1'b0;
    end
    else if(cmos_href) begin
        byte_flag <= ~byte_flag;
    end
    else begin
        byte_flag <= 1'b0;
    end
end

always  @(posedge cmos_pclk or negedge rst_n) begin
    if(!rst_n) begin
        RGB565_data <= 'h0;
    end
    else if(byte_flag == 1'b0) begin                   
        RGB565_data <= {cmos_data, RGB565_data[7:0]};
    end
    else if(byte_flag == 1'b1) begin               
        RGB565_data <= {RGB565_data[15:8], cmos_data};
    end
end

always  @(posedge cmos_pclk or negedge rst_n) begin
    if(!rst_n) begin
        RGB565_vld <= 1'b0;
    end
    else if(frame_vld && byte_flag) begin
        RGB565_vld <= 1'b1;
    end
    else begin
        RGB565_vld <= 1'b0;
    end
end

always @(posedge cmos_pclk or negedge rst_n) begin
    if(!rst_n)
        cnt_h <= 'd0;
    else if(add_cnt_h) begin
        if(end_cnt_h)
            cnt_h <= 'd0;
        else
            cnt_h <= cnt_h + 1'b1;
    end
end

assign add_cnt_h = RGB565_vld;
assign end_cnt_h = add_cnt_h && cnt_h== CMOS_H_PIXEL-1;

always @(posedge cmos_pclk or negedge rst_n) begin 
    if(!rst_n)
        cnt_v <= 'd0;
    else if(add_cnt_v) begin
        if(end_cnt_v)
            cnt_v <= 'd0;
        else
            cnt_v <= cnt_v + 1'b1;
    end
end

assign add_cnt_v = end_cnt_h;
assign end_cnt_v = add_cnt_v && cnt_v== CMOS_V_PIXEL-1;

assign RGB_data = RGB565_data;
assign RGB_vld  = RGB565_vld && (cnt_h >= H_START) && (cnt_h < H_STOP)
                             && (cnt_v >= V_START) && (cnt_v < V_STOP);

assign frame_vsync = frame_vld ? cmos_vsync_r2 : 1'b0;
assign frame_hsync = frame_vld ? cmos_href_r2  : 1'b0;

always @(posedge clk_24m or negedge rst_n) begin
    if(!rst_n)
        frame_vsync_r <= 1'b0;
    else
        frame_vsync_r <= frame_vsync;
end

assign frame_vsync_pos = (~frame_vsync_r & frame_vsync);

always @(posedge clk_24m or negedge rst_n) begin
    if(!rst_n)
        cnt_1s <= 'd0;
    else if(add_cnt_1s) begin
        if(end_cnt_1s)
            cnt_1s <= 'd0;
        else
            cnt_1s <= cnt_1s + 1'b1;
    end
end

assign add_cnt_1s = frame_vld;
assign end_cnt_1s = add_cnt_1s && cnt_1s== TIME_1S-1;

always @(posedge clk_24m or negedge rst_n) begin
    if(!rst_n)
        cnt_FPS <= 'd0;
    else if(end_cnt_1s) begin
        cnt_FPS <= 'd0;
    end
    else if(frame_vld && frame_vsync_pos)begin
        cnt_FPS <= cnt_FPS + 'd1;
    end
end

always @(posedge clk_24m or negedge rst_n) begin
    if(!rst_n) begin
        FPS_rate <= 'd0;
    end
    else if(end_cnt_1s) begin
        FPS_rate <= cnt_FPS;
    end
end

endmodule 