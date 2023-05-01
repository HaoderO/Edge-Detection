module sobel
#(
    parameter H_DISP        = 12'd640               ,   
    parameter V_DISP        = 12'd480                   
)   
(   
    input   wire            clk                     ,
    input   wire            rst_n                   ,
    input   wire            Y_de                    ,
    input   wire            Y_hsync                 ,
    input   wire            Y_vsync                 ,
    input   wire    [ 7:0]  Y_data                  ,

    output  wire            sobel_de                ,
    output  wire            sobel_hsync             ,
    output  wire            sobel_vsync             ,
    output  wire    [ 7:0]  sobel_data               
);

    parameter THRESHOLD        = 11'd50             ;

    wire    [ 7:0]          matrix_11               ;
    wire    [ 7:0]          matrix_12               ;
    wire    [ 7:0]          matrix_13               ;
    wire    [ 7:0]          matrix_21               ;
    wire    [ 7:0]          matrix_22               ;
    wire    [ 7:0]          matrix_23               ;
    wire    [ 7:0]          matrix_31               ;
    wire    [ 7:0]          matrix_32               ;
    wire    [ 7:0]          matrix_33               ;

    reg     [ 9:0]          Gx1,Gx3,Gy1,Gy3,Gx,Gy   ;
    reg     [10:0]          G                       ;

    reg     [ 3:0]          Y_de_r                  ;
    reg     [ 3:0]          Y_hsync_r               ;
    reg     [ 3:0]          Y_vsync_r               ;

matrix_3x3_8bit
#(
    .H_DISP                 (H_DISP                 ),
    .V_DISP                 (V_DISP                 )
)
u_matrix_3x3_8bit
(
    .clk                    (clk                    ),
    .rst_n                  (rst_n                  ),
    .din_vld                (Y_de                   ),
    .din                    (Y_data                 ),
    .matrix_11              (matrix_11              ),
    .matrix_12              (matrix_12              ),
    .matrix_13              (matrix_13              ),
    .matrix_21              (matrix_21              ),
    .matrix_22              (matrix_22              ),
    .matrix_23              (matrix_23              ),
    .matrix_31              (matrix_31              ),
    .matrix_32              (matrix_32              ),
    .matrix_33              (matrix_33              )
);

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        Gx1 <= 'd0;
        Gx3 <= 'd0;
        Gy1 <= 'd0;
        Gy3 <= 'd0; 
    end
    else begin
        Gx1 <= matrix_11 + (matrix_21 << 1) + matrix_31;
        Gx3 <= matrix_13 + (matrix_23 << 1) + matrix_33;
        Gy1 <= matrix_11 + (matrix_12 << 1) + matrix_13;
        Gy3 <= matrix_31 + (matrix_32 << 1) + matrix_33; 
    end
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        Gx <= 'd0;
        Gy <= 'd0;
    end
    else begin
        Gx <= (Gx1 > Gx3) ? (Gx1 - Gx3) : (Gx3 - Gx1);
        Gy <= (Gy1 > Gy3) ? (Gy1 - Gy3) : (Gy3 - Gy1);
    end
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        G <= 'd0;
    end
    else begin
        G <= Gx + Gy;
    end
end

assign sobel_data = (G > THRESHOLD) ? 8'h00 : 8'hff;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        Y_de_r    <= 4'b0;
        Y_hsync_r <= 4'b0;
        Y_vsync_r <= 4'b0;
    end
    else begin  
        Y_de_r    <= {Y_de_r[2:0],    Y_de};
        Y_hsync_r <= {Y_hsync_r[2:0], Y_hsync};
        Y_vsync_r <= {Y_vsync_r[2:0], Y_vsync};
    end
end

assign sobel_de    = Y_de_r[3];
assign sobel_hsync = Y_hsync_r[3];
assign sobel_vsync = Y_vsync_r[3];
    
endmodule