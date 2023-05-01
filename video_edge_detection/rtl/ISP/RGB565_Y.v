module RGB565_Y
(
    input   wire                clk                 ,
    input   wire                rst_n               ,
    input   wire                RGB_hsync           ,
    input   wire                RGB_vsync           ,
    input   wire    [15:0]      RGB_data            ,
    input   wire                RGB_de              ,
    
    output  wire                Y_hsync             ,
    output  wire                Y_vsync             ,
    output  wire    [ 7:0]      Y_data              ,
    output  wire                Y_de                 
);

    wire            [ 7:0]      R0, G0, B0          ;
    reg             [15:0]      R1, G1, B1          ;
    reg             [15:0]      R2, G2, B2          ;
    reg             [15:0]      R3, G3, B3          ;
    reg             [15:0]      Y1, Cb1, Cr1        ;
    reg             [ 7:0]      Y2, Cb2, Cr2        ;
    reg             [ 2:0]      RGB_de_r            ;
    reg             [ 2:0]      RGB_hsync_r         ;
    reg             [ 2:0]      RGB_vsync_r         ;

assign R0 = {RGB_data[15:11],RGB_data[13:11]};
assign G0 = {RGB_data[10: 5],RGB_data[ 6: 5]};
assign B0 = {RGB_data[ 4: 0],RGB_data[ 2: 0]};

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        {R1,G1,B1} <= {16'd0, 16'd0, 16'd0};
        {R2,G2,B2} <= {16'd0, 16'd0, 16'd0};
        {R3,G3,B3} <= {16'd0, 16'd0, 16'd0};
    end
    else begin
        {R1,G1,B1} <= { {R0 * 16'd77},  {G0 * 16'd150}, {B0 * 16'd29 } };
        {R2,G2,B2} <= { {R0 * 16'd43},  {G0 * 16'd85},  {B0 * 16'd128} };
        {R3,G3,B3} <= { {R0 * 16'd128}, {G0 * 16'd107}, {B0 * 16'd21 } };
    end
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        Y1  <= 16'd0;
        Cb1 <= 16'd0;
        Cr1 <= 16'd0;
    end
    else begin
        Y1  <= R1 + G1 + B1;
        Cb1 <= B2 - R2 - G2 + 16'd32768;
        Cr1 <= R3 - G3 - B3 + 16'd32768;
    end
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        Y2  <= 8'd0;
        Cb2 <= 8'd0;
        Cr2 <= 8'd0;
    end
    else begin
        Y2  <= Y1[15:8];  
        Cb2 <= Cb1[15:8];
        Cr2 <= Cr1[15:8];
    end
end

assign Y_data = Y2; //只取Y分量输出,即灰度值

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        RGB_de_r    <= 3'b0;
        RGB_hsync_r <= 3'b0;
        RGB_vsync_r <= 3'b0;
    end
    else begin  
        RGB_de_r    <= {RGB_de_r[1:0],    RGB_de};
        RGB_hsync_r <= {RGB_hsync_r[1:0], RGB_hsync};
        RGB_vsync_r <= {RGB_vsync_r[1:0], RGB_vsync};
    end
end

assign Y_de    = RGB_de_r[2];
assign Y_hsync = RGB_hsync_r[2];
assign Y_vsync = RGB_vsync_r[2];

endmodule