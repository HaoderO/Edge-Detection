module sdram_controller
(
    input                       clk                 ,
    input                       rst_n               ,

    input                       sdram_wr_req        ,
    output                      sdram_wr_ack        ,
    input       [23:0]          sdram_wr_addr       ,
    input       [ 9:0]          sdram_wr_burst      ,
    input       [15:0]          sdram_din           ,

    input                       sdram_rd_req        ,
    output                      sdram_rd_ack        ,
    input       [23:0]          sdram_rd_addr       ,
    input       [ 9:0]          sdram_rd_burst      ,
    output      [15:0]          sdram_dout          ,

    output                      sdram_init_done     ,

    output                      sdram_cke           ,
    output                      sdram_cs_n          ,
    output                      sdram_ras_n         ,
    output                      sdram_cas_n         ,
    output                      sdram_we_n          ,
    output      [ 1:0]          sdram_ba            ,
    output      [12:0]          sdram_addr          ,
    inout       [15:0]          sdram_dq             
);

    wire        [ 4:0]          init_state          ;
    wire        [ 3:0]          work_state          ;
    wire        [ 9:0]          cnt_clk             ;
    wire                        sdram_rd_wr         ;
               
sdram_ctrl u_sdram_ctrl
(           
    .clk                    (clk                    ),                      
    .rst_n                  (rst_n                  ),
    .sdram_wr_req           (sdram_wr_req           ), 
    .sdram_rd_req           (sdram_rd_req           ),
    .sdram_wr_ack           (sdram_wr_ack           ),
    .sdram_rd_ack           (sdram_rd_ack           ),                      
    .sdram_wr_burst         (sdram_wr_burst         ),
    .sdram_rd_burst         (sdram_rd_burst         ),
    .sdram_init_done        (sdram_init_done        ),
    .init_state             (init_state             ),
    .work_state             (work_state             ),
    .cnt_clk                (cnt_clk                ),
    .sdram_rd_wr            (sdram_rd_wr            )
);

sdram_cmd u_sdram_cmd
(               
    .clk                    (clk                    ),
    .rst_n                  (rst_n                  ),
    .sys_wraddr             (sdram_wr_addr          ),          
    .sys_rdaddr             (sdram_rd_addr          ),
    .sdram_wr_burst         (sdram_wr_burst         ),
    .sdram_rd_burst         (sdram_rd_burst         ),
    .init_state             (init_state             ),  
    .work_state             (work_state             ),
    .cnt_clk                (cnt_clk                ),
    .sdram_rd_wr            (sdram_rd_wr            ),
    .sdram_cke              (sdram_cke              ),
    .sdram_cs_n             (sdram_cs_n             ),
    .sdram_ras_n            (sdram_ras_n            ),
    .sdram_cas_n            (sdram_cas_n            ),
    .sdram_we_n             (sdram_we_n             ),
    .sdram_ba               (sdram_ba               ),
    .sdram_addr             (sdram_addr             )
);

sdram_data u_sdram_data
(   
    .clk                    (clk                    ),
    .rst_n                  (rst_n                  ),
    .sdram_data_in          (sdram_din              ),
    .sdram_data_out         (sdram_dout             ),
    .work_state             (work_state             ),
    .cnt_clk                (cnt_clk                ),
    .sdram_dq               (sdram_dq               )
);

endmodule 