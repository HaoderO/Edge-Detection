`timescale 1 ns/1 ns

module img_gray_gen
//  分辨率640x480@60Hz 像素时钟25Mhz   
#(
    parameter H_SYNC        = 96                    ,   //行同步信号
    parameter H_BACK        = 48                    ,   //行显示后沿
    parameter H_DISP        = 640                   ,   //行有效数据
    parameter H_FRONT       = 16                    ,   //行显示前沿
    parameter H_TOTAL       = 800                   ,   //行扫描周期

    parameter V_SYNC        = 2                     ,   //场同步信号
    parameter V_BACK        = 33                    ,   //场显示后沿
    parameter V_DISP        = 480                   ,   //场有效数据   
    parameter V_FRONT       = 10                    ,   //场显示前沿
    parameter V_TOTAL       = 525                       //场扫描周期
)

(
    input   wire            clk                     ,
    input   wire            rst_n                   ,

    output  wire            gray_hsync              ,   //输出数据行同步
    output  wire            gray_vsync              ,   //输出数据场同步
    output  reg   [ 7:0]    gray_data               ,   //输出数据
    output  reg             gray_de                     //输出数据使能
);

    reg     [15:0]          cnt_h                   ;
    wire                    add_cnt_h               ;
    wire                    end_cnt_h               ;
    reg     [15:0]          cnt_v                   ;
    wire                    add_cnt_v               ;
    wire                    end_cnt_v               ;

    reg     [ 7:0]          ram [H_DISP*V_DISP-1:0] ;
    reg     [31:0]          i                       ;

//  行、场计数
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cnt_h <= 0;
    else if(add_cnt_h) begin
        if(end_cnt_h)
            cnt_h <= 0;
        else
            cnt_h <= cnt_h + 1;
    end
end

assign add_cnt_h = 1;
assign end_cnt_h = add_cnt_h && cnt_h==H_TOTAL-1;

always @(posedge clk or negedge rst_n) begin 
    if(!rst_n)
        cnt_v <= 0;
    else if(add_cnt_v) begin
        if(end_cnt_v)
            cnt_v <= 0;
        else
            cnt_v <= cnt_v + 1;
    end
end

assign add_cnt_v = end_cnt_h;
assign end_cnt_v = add_cnt_v && cnt_v==V_TOTAL-1;

//  行场信号同步
assign gray_hsync = (cnt_h < H_SYNC - 1) ? 1'b0 : 1'b1;
assign gray_vsync = (cnt_v < V_SYNC - 1) ? 1'b0 : 1'b1;

//  数据请求
assign gray_req = (cnt_h >= H_SYNC + H_BACK - 1) && (cnt_h < H_SYNC + H_BACK + H_DISP - 1) &&
                  (cnt_v >= V_SYNC + V_BACK    ) && (cnt_v < V_SYNC + V_BACK + V_DISP    );

//  将txt文件中的灰度图像素数据存入raw
initial begin
    $readmemh("./../../matlab/origin_img.txt", ram);
end

//数据输出
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        gray_data <= 8'd0;
        i <= 0;
    end
    else if(gray_req) begin
        gray_data <= ram[i];
        i <= i + 1;
    end
    else if(i==H_DISP*V_DISP) begin
        gray_data <= 8'd0;
        i <= 0;
    end
end

//数据使能
always @(posedge clk) begin 
    gray_de <= gray_req;
end

endmodule