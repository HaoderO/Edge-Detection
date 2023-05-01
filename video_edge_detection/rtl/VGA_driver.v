module VGA_driver
(
    input   wire                clk             ,
    input   wire                rst_n           ,
    output  wire                VGA_req         ,
    input   wire    [15:0]      VGA_din         ,
    output  wire                VGA_clk         ,
    output  wire                VGA_blank       ,
    output  wire                VGA_hsync       ,
    output  wire                VGA_vsync       ,
    output  wire    [15:0]      VGA_data        ,
    output  reg                 VGA_de           
);

    parameter H_SYNC            = 16'd96        ;
    parameter H_BACK            = 16'd48        ;
    parameter H_DISP            = 16'd640       ;
    parameter H_FRONT           = 16'd16        ;
    parameter H_TOTAL           = 16'd800       ;

    parameter V_SYNC            = 16'd2         ;
    parameter V_BACK            = 16'd33        ;
    parameter V_DISP            = 16'd480       ;
    parameter V_FRONT           = 16'd10        ;
    parameter V_TOTAL           = 16'd525       ;

    reg     [15:0]              cnt_h           ;
    wire                        add_cnt_h       ;
    wire                        end_cnt_h       ;
    reg     [15:0]              cnt_v           ;
    wire                        add_cnt_v       ;
    wire                        end_cnt_v       ;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cnt_h <= 'd0;
    else if(add_cnt_h) begin
        if(end_cnt_h)
            cnt_h <= 'd0;
        else
            cnt_h <= cnt_h + 1'b1;
    end
end

assign add_cnt_h = 'd1;
assign end_cnt_h = add_cnt_h && cnt_h==H_TOTAL-1;

always @(posedge clk or negedge rst_n) begin 
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
assign end_cnt_v = add_cnt_v && cnt_v==V_TOTAL-1;

assign VGA_req = (cnt_h >= H_SYNC + H_BACK - 1) && (cnt_h < H_SYNC + H_BACK + H_DISP - 1) &&
                 (cnt_v >= V_SYNC + V_BACK    ) && (cnt_v < V_SYNC + V_BACK + V_DISP    )
                 ? 1'b1 : 1'b0;

assign VGA_clk = clk;

assign VGA_blank = rst_n;

assign VGA_hsync = (cnt_h < H_SYNC) ? 1'b0 : 1'b1;

assign VGA_vsync = (cnt_v < V_SYNC) ? 1'b0 : 1'b1;

assign VGA_data = VGA_de ? VGA_din : 16'b0;

always @(posedge clk) begin
    VGA_de <= VGA_req;
end

endmodule