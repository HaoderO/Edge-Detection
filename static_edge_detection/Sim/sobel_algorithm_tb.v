module sobel_algorithm_tb;

  // Parameters
  localparam  row = 8'd180;
  localparam  column = 8'd180;
  localparam  threshold = 8'b0000_1100;
  localparam  black = 8'b0000_0000;
  localparam  white = 8'b1111_1111;

  // Ports
  reg  sys_clk = 0;
  reg  sys_rst_n = 1;
  reg [7:0] data_in;
  reg  in_flag = 1;
  wire [7:0] data_out;
  wire out_flag;

  reg rx;
  reg   [14:0]    data_mem[32399:0] ;
  wire [7:0] gray_data;

  sobel_algorithm 
  #(
    .row(row ),
    .column(column ),
    .threshold(threshold ),
    .black(black ),
    .white (white )
  )
  sobel_algorithm_dut 
  (
    .sys_clk (sys_clk ),
    .sys_rst_n (sys_rst_n ),
    .data_in (data_in ),
    .in_flag (in_flag ),
    .data_out (data_out ),
    .out_flag  ( out_flag)
  );


  always #10  sys_clk = ! sys_clk ;

    initial 
      begin
        $readmemh("D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Doc/logo.txt",data_mem);
      end


    //rx 赋初值,调用 rx_byte
    initial
      begin
          rx <= 1'b1;
          #200
          rx_byte();
      end
    
    //rx_byte
    task rx_byte();
      integer j;
        for(j=0;j<32400;j=j+1)
          rx_bit(data_mem[j]);
    endtask
    
    //rx_bit
    task rx_bit(input[7:0] data);//data 是 data_mem[j]的值。
    integer i;
      for(i=0;i<10;i=i+1)
    begin
      case(i)
          0: rx <= 1'b0; //起始位
          1: rx <= data[0];
          2: rx <= data[1];
          3: rx <= data[2];
          4: rx <= data[3];
          5: rx <= data[4];
          6: rx <= data[5];
          7: rx <= data[6];
          8: rx <= data[7]; //上面 8 个发送的是数据位
          9: rx <= 1'b1; //停止位
      endcase
      #(52*20);
    end
    endtask
    
  assign  gray_data = ;
    //defparam uart_vga_dut.u3.baud_cnt_max = 52;
    
    reg [14:0] k = 0;
    always @ (posedge sys_clk)
    begin
      if (!sys_rst_n)
          k <= 0;
      else if ((in_flag == 1'b1) && (k < 32400))   
          k <= k + 1;
      else
          k <= 32400;
    end
    
    integer w_file;
        initial w_file = $fopen("edge_img.txt");
        always @(k)
        begin
            $fdisplay(w_file,"%d ",rgb_data);
            if(k == 15'd32400) 
                $stop;
        end  

endmodule
