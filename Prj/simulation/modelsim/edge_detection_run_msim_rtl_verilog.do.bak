transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/software/fpga_development_environment/quartusii_13.0/quartus13/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {d:/software/fpga_development_environment/quartusii_13.0/quartus13/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {d:/software/fpga_development_environment/quartusii_13.0/quartus13/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {d:/software/fpga_development_environment/quartusii_13.0/quartus13/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {d:/software/fpga_development_environment/quartusii_13.0/quartus13/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cycloneive_ver
vmap cycloneive_ver ./verilog_libs/cycloneive_ver
vlog -vlog01compat -work cycloneive_ver {d:/software/fpga_development_environment/quartusii_13.0/quartus13/quartus/eda/sim_lib/cycloneive_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl/edge_detection.v}
vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl/sobel_algorithm.v}
vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl/vga_pic.v}
vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl/vga_ctrl.v}
vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl/uart_tx.v}
vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Rtl/uart_rx.v}
vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Prj/ip_core/fifo {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Prj/ip_core/fifo/fifo_ip.v}
vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Prj/ip_core/ram {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Prj/ip_core/ram/ram_ip.v}
vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Prj/ip_core/pll {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Prj/ip_core/pll/pll_ip.v}
vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Prj/db {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Prj/db/pll_ip_altpll.v}

vlog -vlog01compat -work work +incdir+D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Prj/../Sim {D:/HaoGuojun/MyProject/FPGAProject/Altera_Quartus/Verilog_Project/edge_detection/Prj/../Sim/edge_detection_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  edge_detection_tb

add wave *
view structure
view signals
run -all
