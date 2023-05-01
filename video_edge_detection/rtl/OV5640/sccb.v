module sccb
#(
    parameter DEVICE_ID         = 8'h78             ,
    parameter CLK               = 26'd24_000_000    ,
    parameter SCL               = 18'd250_000        
)
(
    input   wire                clk                 ,
    input   wire                rst_n               ,
    input   wire                sccb_en             ,
    input   wire    [15:0]      sccb_addr           ,
    input   wire    [ 7:0]      sccb_data           ,
    output  reg                 sccb_done           ,
    output  reg                 sccb_scl            ,
    inout   wire                sccb_sda            ,
    output  reg                 sccb_dri_clk         
);

    localparam  IDLE            = 6'b00_0001        ;
    localparam  DEVICE          = 6'b00_0010        ;
    localparam  ADDR_16         = 6'b00_0100        ;
    localparam  ADDR_8          = 6'b00_1000        ;
    localparam  DATA            = 6'b01_0000        ;
    localparam  STOP            = 6'b10_0000        ;

    reg                         sda_dir             ;
    reg                         sda_out             ;
    reg                         state_done          ;
    reg    [ 6:0]               cnt                 ;
    reg    [ 7:0]               state_c             ;
    reg    [ 7:0]               state_n             ;
    reg    [15:0]               sccb_addr_t         ;
    reg    [ 7:0]               sccb_data_t         ;
    reg    [ 9:0]               clk_cnt             ;
    wire   [ 8:0]               clk_divide          ;

assign  sccb_sda = sda_dir ?  sda_out : 1'bz;         

assign  clk_divide = (CLK/SCL) >> 3;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        sccb_dri_clk <=  1'b1;
        clk_cnt <= 10'd0;
    end
    else if(clk_cnt == clk_divide - 1'd1) begin
        clk_cnt <= 10'd0;
        sccb_dri_clk <= ~sccb_dri_clk;
    end
    else
        clk_cnt <= clk_cnt + 1'b1;
end

always @(posedge sccb_dri_clk or negedge rst_n) begin
    if(!rst_n)
        state_c <= IDLE;
    else
        state_c <= state_n;
end

always @(*) begin
    case(state_c)
        IDLE: begin                             //空闲状态
           if(sccb_en)
               state_n = DEVICE;
           else
               state_n = IDLE;
        end
        DEVICE: begin                           //写器件ID
            if(state_done) begin
                if(sccb_addr[15:8]!=0)
                   state_n = ADDR_16;
                else if(sccb_addr[15:8]==0)
                   state_n = ADDR_8 ;
            end
            else
                state_n = DEVICE;
        end
        ADDR_16: begin                          //写地址高8位
            if(state_done)
                state_n = ADDR_8;
            else
                state_n = ADDR_16;
        end
        ADDR_8: begin                           //写地址低8位
            if(state_done)
                state_n = DATA;
            else
                state_n = ADDR_8;
        end
        DATA: begin                             //写数据
            if(state_done)
                state_n = STOP;
            else
                state_n = DATA;
        end
        STOP: begin                             //结束
            if(state_done)
                state_n = IDLE;
            else
                state_n = STOP ;
        end
        default:state_n= IDLE;
    endcase
end

always @(posedge sccb_dri_clk or negedge rst_n) begin
    if(!rst_n) begin
        sccb_scl    <= 1'b1;
        sda_out     <= 1'b1;
        sda_dir     <= 1'b1;
        sccb_done   <= 1'b0;
        cnt         <= 1'b0;
        state_done  <= 1'b0;
        sccb_addr_t <= 1'b0;
        sccb_data_t <= 1'b0;
    end
    else begin
        state_done  <= 1'b0;
        cnt         <= cnt + 1'b1;
        case(state_c)
            IDLE: begin
                    sccb_scl  <= 1'b1;
                    sda_out   <= 1'b1;
                    sda_dir   <= 1'b1;
                    sccb_done <= 1'b0;
                    cnt       <= 7'b0;
                    if(sccb_en) begin
                        sccb_addr_t <= sccb_addr;
                        sccb_data_t <= sccb_data;
                    end
            end
            DEVICE: begin
                case(cnt)
                    7'd1 : sda_out  <= 1'b0;
                    7'd3 : sccb_scl <= 1'b0;
                    7'd4 : sda_out  <= DEVICE_ID[7];
                    7'd5 : sccb_scl <= 1'b1;
                    7'd7 : sccb_scl <= 1'b0;
                    7'd8 : sda_out  <= DEVICE_ID[6];
                    7'd9 : sccb_scl <= 1'b1;
                    7'd11: sccb_scl <= 1'b0;
                    7'd12: sda_out  <= DEVICE_ID[5];
                    7'd13: sccb_scl <= 1'b1;
                    7'd15: sccb_scl <= 1'b0;
                    7'd16: sda_out  <= DEVICE_ID[4];
                    7'd17: sccb_scl <= 1'b1;
                    7'd19: sccb_scl <= 1'b0;
                    7'd20: sda_out  <= DEVICE_ID[3];
                    7'd21: sccb_scl <= 1'b1;
                    7'd23: sccb_scl <= 1'b0;
                    7'd24: sda_out  <= DEVICE_ID[2];
                    7'd25: sccb_scl <= 1'b1;
                    7'd27: sccb_scl <= 1'b0;
                    7'd28: sda_out  <= DEVICE_ID[1];
                    7'd29: sccb_scl <= 1'b1;
                    7'd31: sccb_scl <= 1'b0;
                    7'd32: sda_out  <= DEVICE_ID[0];
                    7'd33: sccb_scl <= 1'b1;
                    7'd35: sccb_scl <= 1'b0;
                    7'd36: begin
                           sda_dir  <= 1'b0;  
                           sda_out  <= 1'b1;
                    end
                    7'd37: sccb_scl <= 1'b1;
                    7'd38: state_done <= 1'b1;  
                    7'd39: begin
                           sccb_scl <= 1'b0;
                           cnt <= 1'b0;
                    end
                    default:;
                endcase
            end
            ADDR_16: begin
                case(cnt)
                    7'd0 : begin
                           sda_dir  <= 1'b1 ;
                           sda_out  <= sccb_addr_t[15];
                    end
                    7'd1 : sccb_scl <= 1'b1;
                    7'd3 : sccb_scl <= 1'b0;
                    7'd4 : sda_out  <= sccb_addr_t[14];
                    7'd5 : sccb_scl <= 1'b1;
                    7'd7 : sccb_scl <= 1'b0;
                    7'd8 : sda_out  <= sccb_addr_t[13];
                    7'd9 : sccb_scl <= 1'b1;
                    7'd11: sccb_scl <= 1'b0;
                    7'd12: sda_out  <= sccb_addr_t[12];
                    7'd13: sccb_scl <= 1'b1;
                    7'd15: sccb_scl <= 1'b0;
                    7'd16: sda_out  <= sccb_addr_t[11];
                    7'd17: sccb_scl <= 1'b1;
                    7'd19: sccb_scl <= 1'b0;
                    7'd20: sda_out  <= sccb_addr_t[10];
                    7'd21: sccb_scl <= 1'b1;
                    7'd23: sccb_scl <= 1'b0;
                    7'd24: sda_out  <= sccb_addr_t[9];
                    7'd25: sccb_scl <= 1'b1;
                    7'd27: sccb_scl <= 1'b0;
                    7'd28: sda_out  <= sccb_addr_t[8];
                    7'd29: sccb_scl <= 1'b1;
                    7'd31: sccb_scl <= 1'b0;
                    7'd32: begin
                           sda_dir  <= 1'b0;    
                           sda_out  <= 1'b1;
                    end
                    7'd33: sccb_scl <= 1'b1;
                    7'd34: state_done <= 1'b1;  
                    7'd35: begin
                           sccb_scl <= 1'b0;
                           cnt <= 1'b0;
                    end
                    default:;
                endcase
            end
            ADDR_8: begin
                case(cnt)
                    7'd0: begin
                           sda_dir  <= 1'b1 ;
                           sda_out  <= sccb_addr_t[7];
                    end
                    7'd1 : sccb_scl <= 1'b1;
                    7'd3 : sccb_scl <= 1'b0;
                    7'd4 : sda_out  <= sccb_addr_t[6];
                    7'd5 : sccb_scl <= 1'b1;
                    7'd7 : sccb_scl <= 1'b0;
                    7'd8 : sda_out  <= sccb_addr_t[5];
                    7'd9 : sccb_scl <= 1'b1;
                    7'd11: sccb_scl <= 1'b0;
                    7'd12: sda_out  <= sccb_addr_t[4];
                    7'd13: sccb_scl <= 1'b1;
                    7'd15: sccb_scl <= 1'b0;
                    7'd16: sda_out  <= sccb_addr_t[3];
                    7'd17: sccb_scl <= 1'b1;
                    7'd19: sccb_scl <= 1'b0;
                    7'd20: sda_out  <= sccb_addr_t[2];
                    7'd21: sccb_scl <= 1'b1;
                    7'd23: sccb_scl <= 1'b0;
                    7'd24: sda_out  <= sccb_addr_t[1];
                    7'd25: sccb_scl <= 1'b1;
                    7'd27: sccb_scl <= 1'b0;
                    7'd28: sda_out  <= sccb_addr_t[0];
                    7'd29: sccb_scl <= 1'b1;
                    7'd31: sccb_scl <= 1'b0;
                    7'd32: begin
                           sda_dir  <= 1'b0;   
                           sda_out  <= 1'b1;
                    end
                    7'd33: sccb_scl <= 1'b1;
                    7'd34: state_done <= 1'b1;  
                    7'd35: begin
                           sccb_scl <= 1'b0;
                           cnt <= 1'b0;
                    end
                    default:;
                endcase
            end
            DATA: begin
                case(cnt)
                    7'd0: begin
                           sda_out <= sccb_data_t[7];
                           sda_dir <= 1'b1;
                    end
                    7'd1 : sccb_scl <= 1'b1;
                    7'd3 : sccb_scl <= 1'b0;
                    7'd4 : sda_out  <= sccb_data_t[6];
                    7'd5 : sccb_scl <= 1'b1;
                    7'd7 : sccb_scl <= 1'b0;
                    7'd8 : sda_out  <= sccb_data_t[5];
                    7'd9 : sccb_scl <= 1'b1;
                    7'd11: sccb_scl <= 1'b0;
                    7'd12: sda_out  <= sccb_data_t[4];
                    7'd13: sccb_scl <= 1'b1;
                    7'd15: sccb_scl <= 1'b0;
                    7'd16: sda_out  <= sccb_data_t[3];
                    7'd17: sccb_scl <= 1'b1;
                    7'd19: sccb_scl <= 1'b0;
                    7'd20: sda_out  <= sccb_data_t[2];
                    7'd21: sccb_scl <= 1'b1;
                    7'd23: sccb_scl <= 1'b0;
                    7'd24: sda_out  <= sccb_data_t[1];
                    7'd25: sccb_scl <= 1'b1;
                    7'd27: sccb_scl <= 1'b0;
                    7'd28: sda_out  <= sccb_data_t[0];
                    7'd29: sccb_scl <= 1'b1;
                    7'd31: sccb_scl <= 1'b0;
                    7'd32: begin
                           sda_dir  <= 1'b0;   
                           sda_out  <= 1'b1;
                    end
                    7'd33: sccb_scl <= 1'b1;
                    7'd34: state_done <= 1'b1; 
                    7'd35: begin
                           sccb_scl <= 1'b0;
                           cnt  <= 1'b0;
                    end
                    default:;
                endcase
            end
            STOP: begin
                case(cnt)
                    7'd0: begin
                           sda_dir  <= 1'b1;
                           sda_out  <= 1'b0;
                    end
                    7'd1 : sccb_scl <= 1'b1;
                    7'd3 : sda_out  <= 1'b1;
                    7'd15: state_done <= 1'b1;  
                    7'd16: begin
                           cnt <= 1'b0;
                           sccb_done <= 1'b1;  
                    end
                    default:;
                endcase
            end
        endcase
    end
end

endmodule