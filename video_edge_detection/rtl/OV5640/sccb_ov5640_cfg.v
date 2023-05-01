module sccb_ov5640_cfg
#(
    parameter CMOS_H_PIXEL      = 12'd640           ,
    parameter CMOS_V_PIXEL      = 12'd480           ,
    parameter TOTAL_H_PIXEL     = 13'd1800          ,
    parameter TOTAL_V_PIXEL     = 13'd1000          ,
    parameter REG_NUM           = 240                
)
(
    input   wire                clk                 ,
    input   wire                rst_n               ,
    input   wire                sccb_vld            ,
    input   wire                sccb_done           ,
    output  reg                 sccb_en             ,
    output  reg     [23:0]      sccb_data           ,
    output  reg                 sccb_cfg_done        
);

    reg                         sccb_vld_r          ;
    wire                        sccb_start          ;
    reg    [7:0]                reg_cnt             ;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        sccb_vld_r <= 1'b0;
    else
        sccb_vld_r <= sccb_vld;
end

assign sccb_start = sccb_vld && ~sccb_vld_r;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        sccb_en <= 1'b0;
    else if(sccb_start)                   
        sccb_en <= 1'b1;
    else if(sccb_done && reg_cnt < REG_NUM)
        sccb_en <= 1'b1;
    else
        sccb_en <= 1'b0;    
end 
 
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        reg_cnt <= 8'd0;
    else if(sccb_en)   
        reg_cnt <= reg_cnt + 8'b1;
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        sccb_cfg_done <= 1'b0;
    else if((reg_cnt == REG_NUM) && sccb_done)
        sccb_cfg_done <= 1'b1;  
end        

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        sccb_data <= 24'b0;
    else begin
        case(reg_cnt)
//基本配置 ------------------------------------------------------------------------------------
            8'd0  : sccb_data <= {16'h3008,8'h02}; //复位休眠 Bit[7]:复位 Bit[6]:休眠
            8'd1  : sccb_data <= {16'h300e,8'h58}; //DVP 使能 DVP enable
            8'd2  : sccb_data <= {16'h4300,8'h61}; //格式控制 RGB565
            8'd3  : sccb_data <= {16'h503d,8'h00}; //测试图案 00正常 80彩条 81混乱 82棋盘
//PLL -----------------------------------------------------------------------------------------
            8'd4  : sccb_data <= {16'h3035,8'h11}; //PLL
            8'd5  : sccb_data <= {16'h3036,8'h3c}; //PLL
            8'd6  : sccb_data <= {16'h3037,8'h13}; //PLL bit[4]:0/1 bypass/÷2
//ISP(VGA模式) --------------------------------------------------------------------------------
            8'd7  : sccb_data <= {16'h3800,8'h00};
            8'd8  : sccb_data <= {16'h3801,8'h00};
            8'd9  : sccb_data <= {16'h3802,8'h00};
            8'd10 : sccb_data <= {16'h3803,8'h04};
            8'd11 : sccb_data <= {16'h3804,8'h0a};
            8'd12 : sccb_data <= {16'h3805,8'h3f};
            8'd13 : sccb_data <= {16'h3806,8'h07};
            8'd14 : sccb_data <= {16'h3807,8'h9b};
//输出窗口设置 --------------------------------------------------------------------------------
            8'd15 : sccb_data <= {16'h3808,{4'd0,CMOS_H_PIXEL[11:8]  }}; //图像宽度高4位
            8'd16 : sccb_data <= {16'h3809,      CMOS_H_PIXEL[ 7:0]   }; //图像宽度低8位
            8'd17 : sccb_data <= {16'h380a,{5'd0,CMOS_V_PIXEL[10:8]  }}; //图像高度高3位
            8'd18 : sccb_data <= {16'h380b,      CMOS_V_PIXEL[ 7:0]   }; //图像高度低8位
            
            8'd19 : sccb_data <= {16'h380c,{3'd0,TOTAL_H_PIXEL[12:8] }}; //图像宽度总像素高5位
            8'd20 : sccb_data <= {16'h380d,      TOTAL_H_PIXEL[ 7:0]  }; //图像宽度总像素低8位
            8'd21 : sccb_data <= {16'h380e,{3'd0,TOTAL_V_PIXEL[12:8] }}; //图像高度总像素高5位    
            8'd22 : sccb_data <= {16'h380f,      TOTAL_V_PIXEL[ 7:0]  }; //图像高度总像素低8位
//预缩放 --------------------------------------------------------------------------------------
            8'd23 : sccb_data <= {16'h3810,8'h00}; //Timing Hoffset[11:8]
            8'd24 : sccb_data <= {16'h3811,8'h10}; //Timing Hoffset[7:0]
            8'd25 : sccb_data <= {16'h3812,8'h00}; //Timing Voffset[10:8]
            8'd26 : sccb_data <= {16'h3813,8'h06}; //Timing Voffset[7:0]
            8'd27 : sccb_data <= {16'h3814,8'h31}; //Timing X INC
            8'd28 : sccb_data <= {16'h3815,8'h31}; //Timing Y INC
//翻转 ----------------------------------------------------------------------------------------
            8'd29 : sccb_data <= {16'h3820,8'h46}; //上下翻转：40/46
            8'd30 : sccb_data <= {16'h3821,8'h01}; //左右翻转：01/07
//SCCB ----------------------------------------------------------------------------------------
            8'd31 : sccb_data <= {16'h3103,8'h02}; //Bit[1]:1 PLL Clock
            8'd32 : sccb_data <= {16'h3108,8'h01}; //系统分频
//VCM -----------------------------------------------------------------------------------------
            8'd33 : sccb_data <= {16'h3600,8'h08}; //VCM控制,用于自动聚焦
            8'd34 : sccb_data <= {16'h3601,8'h33}; //VCM控制,用于自动聚焦
//AEC/AGC -------------------------------------------------------------------------------------
            8'd35 : sccb_data <= {16'h3a02,8'h17}; //60Hz max exposure
            8'd36 : sccb_data <= {16'h3a03,8'h10}; //60Hz max exposure
            8'd37 : sccb_data <= {16'h3a0f,8'h30}; //AEC控制;stable range in high
            8'd38 : sccb_data <= {16'h3a10,8'h28}; //AEC控制;stable range in low
            8'd39 : sccb_data <= {16'h3a11,8'h60}; //AEC控制; fast zone high
            8'd40 : sccb_data <= {16'h3a13,8'h43}; //AEC(自动曝光控制)
            8'd41 : sccb_data <= {16'h3a14,8'h17}; //50Hz max exposure
            8'd42 : sccb_data <= {16'h3a15,8'h10}; //50Hz max exposure
            8'd43 : sccb_data <= {16'h3a18,8'h00}; //AEC 增益上限
            8'd44 : sccb_data <= {16'h3a19,8'hf8}; //AEC 增益上限
            8'd45 : sccb_data <= {16'h3a1b,8'h30}; //AEC控制;stable range out high
            8'd46 : sccb_data <= {16'h3a1e,8'h26}; //AEC控制;stable range out low
            8'd47 : sccb_data <= {16'h3a1f,8'h14}; //AEC控制; fast zone low
//5060Hz --------------------------------------------------------------------------------------
            8'd48 : sccb_data <= {16'h3c01,8'h34};
            8'd49 : sccb_data <= {16'h3c04,8'h28};
            8'd50 : sccb_data <= {16'h3c05,8'h98};
            8'd51 : sccb_data <= {16'h3c06,8'h00}; //light meter 1 阈值[15:8]
            8'd52 : sccb_data <= {16'h3c07,8'h08}; //light meter 1 阈值[7:0]
            8'd53 : sccb_data <= {16'h3c08,8'h00}; //light meter 2 阈值[15:8]
            8'd54 : sccb_data <= {16'h3c09,8'h1c}; //light meter 2 阈值[7:0]
            8'd55 : sccb_data <= {16'h3c0a,8'h9c}; //sample number[15:8]
            8'd56 : sccb_data <= {16'h3c0b,8'h40}; //sample number[7:0]
//BLC -----------------------------------------------------------------------------------------
            8'd57 : sccb_data <= {16'h4001,8'h02}; //BLC(黑电平校准)补偿起始行号
            8'd58 : sccb_data <= {16'h4004,8'h02}; //BLC(背光) 2 lines
            8'd59 : sccb_data <= {16'h4005,8'h1a}; //BLC(黑电平校准)补偿始终更新
//ISP -----------------------------------------------------------------------------------------
            8'd60 : sccb_data <= {16'h5000,8'ha7}; //ISP 控制
            8'd61 : sccb_data <= {16'h5001,8'ha3}; //ISP 控制
            8'd62 : sccb_data <= {16'h501d,8'h40}; //ISP 控制
            8'd63 : sccb_data <= {16'h501f,8'h01}; //ISP RGB
//LENC(镜头校正)控制 16'h5800~16'h583d --------------------------------------------------------
            8'd64 : sccb_data <= {16'h5800,8'h23};
            8'd65 : sccb_data <= {16'h5801,8'h14};
            8'd66 : sccb_data <= {16'h5802,8'h0f};
            8'd67 : sccb_data <= {16'h5803,8'h0f};
            8'd68 : sccb_data <= {16'h5804,8'h12};
            8'd69 : sccb_data <= {16'h5805,8'h26};
            8'd70 : sccb_data <= {16'h5806,8'h0c};
            8'd71 : sccb_data <= {16'h5807,8'h08};
            8'd72 : sccb_data <= {16'h5808,8'h05};
            8'd73 : sccb_data <= {16'h5809,8'h05};
            8'd74 : sccb_data <= {16'h580a,8'h08};
            8'd75 : sccb_data <= {16'h580b,8'h0d};
            8'd76 : sccb_data <= {16'h580c,8'h08};
            8'd77 : sccb_data <= {16'h580d,8'h03};
            8'd78 : sccb_data <= {16'h580e,8'h00};
            8'd79 : sccb_data <= {16'h580f,8'h00};
            8'd80 : sccb_data <= {16'h5810,8'h03};
            8'd81 : sccb_data <= {16'h5811,8'h09};
            8'd82 : sccb_data <= {16'h5812,8'h07};
            8'd83 : sccb_data <= {16'h5813,8'h03};
            8'd84 : sccb_data <= {16'h5814,8'h00};
            8'd85 : sccb_data <= {16'h5815,8'h01};
            8'd86 : sccb_data <= {16'h5816,8'h03};
            8'd87 : sccb_data <= {16'h5817,8'h08};
            8'd88 : sccb_data <= {16'h5818,8'h0d};
            8'd89 : sccb_data <= {16'h5819,8'h08};
            8'd90 : sccb_data <= {16'h581a,8'h05};
            8'd91 : sccb_data <= {16'h581b,8'h06};
            8'd92 : sccb_data <= {16'h581c,8'h08};
            8'd93 : sccb_data <= {16'h581d,8'h0e};
            8'd94 : sccb_data <= {16'h581e,8'h29};
            8'd95 : sccb_data <= {16'h581f,8'h17};
            8'd96 : sccb_data <= {16'h5820,8'h11};
            8'd97 : sccb_data <= {16'h5821,8'h11};
            8'd98 : sccb_data <= {16'h5822,8'h15};
            8'd99 : sccb_data <= {16'h5823,8'h28};
            8'd100: sccb_data <= {16'h5824,8'h46};
            8'd101: sccb_data <= {16'h5825,8'h26};
            8'd102: sccb_data <= {16'h5826,8'h08};
            8'd103: sccb_data <= {16'h5827,8'h26};
            8'd104: sccb_data <= {16'h5828,8'h64};
            8'd105: sccb_data <= {16'h5829,8'h26};
            8'd106: sccb_data <= {16'h582a,8'h24};
            8'd107: sccb_data <= {16'h582b,8'h22};
            8'd108: sccb_data <= {16'h582c,8'h24};
            8'd109: sccb_data <= {16'h582d,8'h24};
            8'd110: sccb_data <= {16'h582e,8'h06};
            8'd111: sccb_data <= {16'h582f,8'h22};
            8'd112: sccb_data <= {16'h5830,8'h40};
            8'd113: sccb_data <= {16'h5831,8'h42};
            8'd114: sccb_data <= {16'h5832,8'h24};
            8'd115: sccb_data <= {16'h5833,8'h26};
            8'd116: sccb_data <= {16'h5834,8'h24};
            8'd117: sccb_data <= {16'h5835,8'h22};
            8'd118: sccb_data <= {16'h5836,8'h22};
            8'd119: sccb_data <= {16'h5837,8'h26};
            8'd120: sccb_data <= {16'h5838,8'h44};
            8'd121: sccb_data <= {16'h5839,8'h24};
            8'd122: sccb_data <= {16'h583a,8'h26};
            8'd123: sccb_data <= {16'h583b,8'h28};
            8'd124: sccb_data <= {16'h583c,8'h42};
            8'd125: sccb_data <= {16'h583d,8'hce};
//AWB(自动白平衡控制) 16'h5180~16'h519e -------------------------------------------------------
            8'd126: sccb_data <= {16'h5180,8'hff};
            8'd127: sccb_data <= {16'h5181,8'hf2};
            8'd128: sccb_data <= {16'h5182,8'h00};
            8'd129: sccb_data <= {16'h5183,8'h14};
            8'd130: sccb_data <= {16'h5184,8'h25};
            8'd131: sccb_data <= {16'h5185,8'h24};
            8'd132: sccb_data <= {16'h5186,8'h09};
            8'd133: sccb_data <= {16'h5187,8'h09};
            8'd134: sccb_data <= {16'h5188,8'h09};
            8'd135: sccb_data <= {16'h5189,8'h75};
            8'd136: sccb_data <= {16'h518a,8'h54};
            8'd137: sccb_data <= {16'h518b,8'he0};
            8'd138: sccb_data <= {16'h518c,8'hb2};
            8'd139: sccb_data <= {16'h518d,8'h42};
            8'd140: sccb_data <= {16'h518e,8'h3d};
            8'd141: sccb_data <= {16'h518f,8'h56};
            8'd142: sccb_data <= {16'h5190,8'h46};
            8'd143: sccb_data <= {16'h5191,8'hf8};
            8'd144: sccb_data <= {16'h5192,8'h04};
            8'd145: sccb_data <= {16'h5193,8'h70};
            8'd146: sccb_data <= {16'h5194,8'hf0};
            8'd147: sccb_data <= {16'h5195,8'hf0};
            8'd148: sccb_data <= {16'h5196,8'h03};
            8'd149: sccb_data <= {16'h5197,8'h01};
            8'd150: sccb_data <= {16'h5198,8'h04};
            8'd151: sccb_data <= {16'h5199,8'h12};
            8'd152: sccb_data <= {16'h519a,8'h04};
            8'd153: sccb_data <= {16'h519b,8'h00};
            8'd154: sccb_data <= {16'h519c,8'h06};
            8'd155: sccb_data <= {16'h519d,8'h82};
            8'd156: sccb_data <= {16'h519e,8'h38};
//Gamma(伽马)控制 16'h5480~16'h5490 -----------------------------------------------------------
            8'd157: sccb_data <= {16'h5480,8'h01};
            8'd158: sccb_data <= {16'h5481,8'h08};
            8'd159: sccb_data <= {16'h5482,8'h14};
            8'd160: sccb_data <= {16'h5483,8'h28};
            8'd161: sccb_data <= {16'h5484,8'h51};
            8'd162: sccb_data <= {16'h5485,8'h65};
            8'd163: sccb_data <= {16'h5486,8'h71};
            8'd164: sccb_data <= {16'h5487,8'h7d};
            8'd165: sccb_data <= {16'h5488,8'h87};
            8'd166: sccb_data <= {16'h5489,8'h91};
            8'd167: sccb_data <= {16'h548a,8'h9a};
            8'd168: sccb_data <= {16'h548b,8'haa};
            8'd169: sccb_data <= {16'h548c,8'hb8};
            8'd170: sccb_data <= {16'h548d,8'hcd};
            8'd171: sccb_data <= {16'h548e,8'hdd};
            8'd172: sccb_data <= {16'h548f,8'hea};
            8'd173: sccb_data <= {16'h5490,8'h1d};
//CMX(彩色矩阵控制) 16'h5381~16'h538b ---------------------------------------------------------
            8'd174: sccb_data <= {16'h5381,8'h1e};
            8'd175: sccb_data <= {16'h5382,8'h5b};
            8'd176: sccb_data <= {16'h5383,8'h08};
            8'd177: sccb_data <= {16'h5384,8'h0a};
            8'd178: sccb_data <= {16'h5385,8'h7e};
            8'd179: sccb_data <= {16'h5386,8'h88};
            8'd180: sccb_data <= {16'h5387,8'h7c};
            8'd181: sccb_data <= {16'h5388,8'h6c};
            8'd182: sccb_data <= {16'h5389,8'h10};
            8'd183: sccb_data <= {16'h538a,8'h01};
            8'd184: sccb_data <= {16'h538b,8'h98};
//SDE(特殊数码效果)控制 16'h5580~16'h558b -----------------------------------------------------
            8'd185: sccb_data <= {16'h5580,8'h06};
            8'd186: sccb_data <= {16'h5583,8'h40};
            8'd187: sccb_data <= {16'h5584,8'h10};
            8'd188: sccb_data <= {16'h5589,8'h10};
            8'd189: sccb_data <= {16'h558a,8'h00};
            8'd190: sccb_data <= {16'h558b,8'hf8};
//CIP(颜色插值)控制 (16'h5300~16'h530c) -------------------------------------------------------
            8'd191: sccb_data <= {16'h5300,8'h08};
            8'd192: sccb_data <= {16'h5301,8'h30};
            8'd193: sccb_data <= {16'h5302,8'h10};
            8'd194: sccb_data <= {16'h5303,8'h00};
            8'd195: sccb_data <= {16'h5304,8'h08};
            8'd196: sccb_data <= {16'h5305,8'h30};
            8'd197: sccb_data <= {16'h5306,8'h08};
            8'd198: sccb_data <= {16'h5307,8'h16};
            8'd199: sccb_data <= {16'h5309,8'h08};
            8'd200: sccb_data <= {16'h530a,8'h30};
            8'd201: sccb_data <= {16'h530b,8'h04};
            8'd202: sccb_data <= {16'h530c,8'h06};
//测试闪光灯功能 ------------------------------------------------------------------------------
            8'd203: sccb_data <= {16'h3000,8'h00}; //系统块复位控制
            8'd204: sccb_data <= {16'h3004,8'hff}; //时钟使能控制
            8'd205: sccb_data <= {16'h3017,8'hff}; //I/O控制[3:0]     00:input ff:output 
            8'd206: sccb_data <= {16'h3018,8'hff}; //I/O控制[7:2]     00:input ff:output
            8'd207: sccb_data <= {16'h3016,8'h02};
            8'd208: sccb_data <= {16'h301c,8'h02};
            8'd209: sccb_data <= {16'h3019,8'h02}; //打开闪光灯
            8'd210: sccb_data <= {16'h3019,8'h00}; //关闭闪光灯
//others --------------------------------------------------------------------------------------
            8'd211: sccb_data <= {16'h3612,8'h29};
            8'd212: sccb_data <= {16'h3618,8'h00};
            8'd213: sccb_data <= {16'h3620,8'h52};
            8'd214: sccb_data <= {16'h3621,8'he0};
            8'd215: sccb_data <= {16'h3622,8'h01};
            8'd216: sccb_data <= {16'h302d,8'h60}; //系统控制
            8'd217: sccb_data <= {16'h3630,8'h36};
            8'd218: sccb_data <= {16'h3631,8'h0e};
            8'd219: sccb_data <= {16'h3632,8'he2};
            8'd220: sccb_data <= {16'h3633,8'h12};
            8'd221: sccb_data <= {16'h3634,8'h40};
            8'd222: sccb_data <= {16'h3635,8'h13};
            8'd223: sccb_data <= {16'h3636,8'h03};
            8'd224: sccb_data <= {16'h3703,8'h5a};
            8'd225: sccb_data <= {16'h3704,8'ha0};
            8'd226: sccb_data <= {16'h3705,8'h1a};
            8'd227: sccb_data <= {16'h3708,8'h64};
            8'd228: sccb_data <= {16'h3709,8'h52};
            8'd229: sccb_data <= {16'h370b,8'h60};
            8'd230: sccb_data <= {16'h370c,8'h03};
            8'd231: sccb_data <= {16'h3715,8'h78};
            8'd232: sccb_data <= {16'h3717,8'h01};
            8'd233: sccb_data <= {16'h371b,8'h20};
            8'd234: sccb_data <= {16'h3731,8'h12};
            8'd235: sccb_data <= {16'h3901,8'h0a};
            8'd236: sccb_data <= {16'h3905,8'h02};
            8'd237: sccb_data <= {16'h3906,8'h10};
            8'd238: sccb_data <= {16'h3b07,8'h0a}; //帧曝光模式
            8'd239: sccb_data <= {16'h4407,8'h04}; //量化标度
            default:sccb_data <= {16'h300a,8'h00}; //器件ID高8位
        endcase
    end
end



endmodule