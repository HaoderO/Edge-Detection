module sel_seg_ctrl
    (
        input   wire            sys_clk     ,//50M
        input   wire            sys_rst_n   ,
//        input   wire            tube_en     ,
        input   wire    [11:0]  data_in     ,//输入的是BCD码

        output  wire    [7:0]   sel         ,
        output  reg     [7:0]   seg
    );

reg     [7:0]   sel_reg;
reg     [3:0]   data_div;
reg             vision_clk = 1'b0;     //根据视觉暂留原理，略大于60Hz为佳
reg     [15:0]  div_cnt = 16'd0;    //分频计数器

parameter div_constant = 16'd25_000 - 1'b0; //分频常数的一半
//设扫描频率为1KHz，则分频常数=50M/1K=50_000
//分频得到的时钟要在计数器到分频常数一半时翻转
//为简化代码，直接设置div_constant为分频常数的一半

/*********************************************************/
always @(posedge sys_clk or negedge sys_rst_n) 
    if (sys_rst_n == 1'b0) 
        div_cnt <= 16'd0;
//    else if (tube_en == 1'b0) 
//        div_cnt <= 16'd0;
    else if (div_cnt == div_constant) 
        div_cnt <= 16'd0;
    else 
        div_cnt <= div_cnt + 1'b1;

always @(posedge sys_clk or negedge sys_rst_n) 
    if (sys_rst_n == 1'b0) 
        vision_clk <= 16'd0;
    else if (div_cnt == div_constant) 
        vision_clk <= ~vision_clk;
    else 
        vision_clk <= vision_clk;

//位选
always @(posedge vision_clk or negedge sys_rst_n) 
    if (sys_rst_n == 1'b0) 
        sel_reg <= 8'b0000_0001;//不会有人都设0吧
    else if (sel_reg == 8'b1000_0000) 
        sel_reg <= 8'b0000_0001;
    else 
        sel_reg <= sel_reg << 1;

assign sel = sel_reg;

/*********************************************************/
//BCD码很容易将“个位、十位、百位……”拆开，符合数码管的结构和控制原理
always@(sel_reg or data_in)
    begin
        case(sel_reg)
            8'b0000_0001 : data_div <= data_in[3:0]  ;//对多个变量赋值必须用begin …… end
            8'b0000_0010 : data_div <= data_in[7:4]  ;
            8'b0000_0100 : data_div <= data_in[11:8] ;
            //8'b0000_1000 : data_div <= data_in[15:12];
            //8'b0001_0000 : data_div <= data_in[19:16];
            //8'b0010_0000 : data_div <= data_in[23:20];
            //8'b0100_0000 : data_div <= data_in[27:24];
            //8'b1000_0000 : data_div <= data_in[31:28];
            default      : data_div <= 4'b0000;
        endcase
    end

always @(posedge sys_clk or negedge sys_rst_n)
    if (sys_rst_n == 1'b0) 
        seg <= 8'hc0;
//    else if (tube_en == 1'b0) 
//        seg <= 8'hc0;
    else    case(data_div)
        4'd0    : seg <= 8'hc0; //0
        4'd1    : seg <= 8'hf9; //1
        4'd2    : seg <= 8'ha4; //2
        4'd3    : seg <= 8'hb0; //3
        4'd4    : seg <= 8'h99; //4
        4'd5    : seg <= 8'h92; //5
        4'd6    : seg <= 8'h82; //6
        4'd7    : seg <= 8'hf8; //7
        4'd8    : seg <= 8'h80; //8
        4'd9    : seg <= 8'h90; //9
        4'd10   : seg <= 8'h88; //a
        4'd11   : seg <= 8'h83; //b
        4'd12   : seg <= 8'hc6; //c
        4'd13   : seg <= 8'ha1; //d
        4'd14   : seg <= 8'h86; //e
        4'd15   : seg <= 8'h8e; //f
        default : seg <= 8'hc0;
    endcase
    
endmodule
 
