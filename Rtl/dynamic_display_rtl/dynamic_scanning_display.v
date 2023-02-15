module dynamic_scanning_display 
(
    input   wire            sys_clk     ,
    input   wire            sys_rst_n   ,
    input   wire    [7:0]   display_data,

    output  wire            ds          ,
    output  wire            shcp        ,
    output  wire            stcp        ,
    output  wire            oe         
);

wire    [7:0]   sel;
wire    [7:0]   seg;
wire    [11:0]  bcd_data;  

binary_bcd u1
(
	.bin_in     (display_data),
	.bcd_out    (bcd_data)
);

sel_seg_ctrl u2
(
    .sys_clk     (sys_clk),//50M
    .sys_rst_n   (sys_rst_n),
    .data_in     (bcd_data),//4×8=32 

    .sel         (sel),
    .seg         (seg)
);

hc595_ctrl u3
(
    .sys_clk    (sys_clk    ) ,
    .sys_rst_n  (sys_rst_n  ) ,
    .sel        (sel        ) ,
    .seg        (seg        ) ,
    .ds         (ds         ) ,
    .shcp       (shcp       ) ,
    .stcp       (stcp       ) ,
    .oe         (oe         )
);

endmodule