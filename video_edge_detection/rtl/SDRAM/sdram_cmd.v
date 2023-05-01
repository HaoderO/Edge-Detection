`include "sdram_para.v" //SDRAM参数定义

module sdram_cmd
(
    input                   clk                     ,
    input                   rst_n                   ,
    input       [23:0]      sys_wraddr              ,
    input       [23:0]      sys_rdaddr              ,
    input       [ 9:0]      sdram_wr_burst          ,
    input       [ 9:0]      sdram_rd_burst          ,
    input       [ 4:0]      init_state              ,
    input       [ 3:0]      work_state              ,
    input       [ 9:0]      cnt_clk                 ,
    input                   sdram_rd_wr             ,

    output                  sdram_cke               ,
    output                  sdram_cs_n              ,
    output                  sdram_ras_n             ,
    output                  sdram_cas_n             ,
    output                  sdram_we_n              ,
    output reg  [ 1:0]      sdram_ba                ,
    output reg  [12:0]      sdram_addr               
);

    reg         [ 4:0]          sdram_cmd_r         ;
    wire        [23:0]          sys_addr            ;

//SDRAM 控制信号线赋值
assign {sdram_cke,sdram_cs_n,sdram_ras_n,sdram_cas_n,sdram_we_n} = sdram_cmd_r;

//SDRAM 读/写地址总线控制
assign sys_addr = sdram_rd_wr ? sys_rdaddr : sys_wraddr;
    
//SDRAM 操作指令控制
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
            sdram_cmd_r <= `CMD_INIT;
            sdram_ba    <= 2'b11;
            sdram_addr  <= 13'h1fff;
    end
    else
        case(init_state)
                                        //初始化过程中,以下状态不执行任何指令
            `I_NOP,`I_TRP,`I_TRF,`I_TRSC: begin
                    sdram_cmd_r <= `CMD_NOP;
                    sdram_ba    <= 2'b11;
                    sdram_addr  <= 13'h1fff;    
                end
            `I_PRE: begin               //预充电指令
                    sdram_cmd_r <= `CMD_PRGE;
                    sdram_ba    <= 2'b11;
                    sdram_addr  <= 13'h1fff;
                end 
            `I_AR: begin
                                        //自动刷新指令
                    sdram_cmd_r <= `CMD_A_REF;
                    sdram_ba    <= 2'b11;
                    sdram_addr  <= 13'h1fff;                        
                end                 
            `I_MRS: begin               //模式寄存器设置指令
                    sdram_cmd_r <= `CMD_LMR;
                    sdram_ba    <= 2'b00;
                    sdram_addr  <= {    //利用地址线设置模式寄存器,可根据实际需要进行修改
                        3'b000,         //预留
                        1'b0,           //读写方式 A9=0，突发读&突发写
                        2'b00,          //默认，{A8,A7}=00
                        3'b011,         //CAS潜伏期设置，这里设置为3，{A6,A5,A4}=011
                        1'b0,           //突发传输方式，这里设置为顺序，A3=0
                        3'b111          //突发长度，这里设置为页突发，{A2,A1,A0}=011
                    };
                end 
            `I_DONE:                    //SDRAM初始化完成
                    case(work_state)    //以下工作状态不执行任何指令
                        `W_IDLE,`W_TRCD,`W_CL,`W_TWR,`W_TRP,`W_TRFC: begin
                                sdram_cmd_r <= `CMD_NOP;
                                sdram_ba    <= 2'b11;
                                sdram_addr  <= 13'h1fff;
                            end
                        `W_ACTIVE: begin//行有效指令
                                sdram_cmd_r <= `CMD_ACTIVE;
                                sdram_ba    <= sys_addr[23:22];
                                sdram_addr  <= sys_addr[21:9];
                            end
                        `W_READ: begin  //读操作指令
                                sdram_cmd_r <= `CMD_READ;
                                sdram_ba    <= sys_addr[23:22];
                                sdram_addr  <= {4'b0000,sys_addr[8:0]};
                            end
                        `W_RD: begin    //突发传输终止指令
                                if(`end_rdburst) 
                                    sdram_cmd_r <= `CMD_B_STOP;
                                else begin
                                    sdram_cmd_r <= `CMD_NOP;
                                    sdram_ba    <= 2'b11;
                                    sdram_addr  <= 13'h1fff;
                                end
                            end                             
                        `W_WRITE: begin //写操作指令
                                sdram_cmd_r <= `CMD_WRITE;
                                sdram_ba    <= sys_addr[23:22];
                                sdram_addr  <= {4'b0000,sys_addr[8:0]};
                            end     
                        `W_WD: begin    //突发传输终止指令
                                if(`end_wrburst) 
                                    sdram_cmd_r <= `CMD_B_STOP;
                                else begin
                                    sdram_cmd_r <= `CMD_NOP;
                                    sdram_ba    <= 2'b11;
                                    sdram_addr  <= 13'h1fff;
                                end
                            end
                        `W_PRE:begin    //预充电指令
                                sdram_cmd_r <= `CMD_PRGE;
                                sdram_ba    <= sys_addr[23:22];
                                sdram_addr  <= 13'h0400;
                            end             
                        `W_AR: begin    //自动刷新指令
                                sdram_cmd_r <= `CMD_A_REF;
                                sdram_ba    <= 2'b11;
                                sdram_addr  <= 13'h1fff;
                            end
                        default: begin
                                sdram_cmd_r <= `CMD_NOP;
                                sdram_ba    <= 2'b11;
                                sdram_addr  <= 13'h1fff;
                            end
                    endcase
            default: begin
                    sdram_cmd_r <= `CMD_NOP;
                    sdram_ba    <= 2'b11;
                    sdram_addr  <= 13'h1fff;
                end
        endcase
end

endmodule 