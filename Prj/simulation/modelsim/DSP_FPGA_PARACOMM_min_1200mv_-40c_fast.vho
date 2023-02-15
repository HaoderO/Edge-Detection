-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "02/15/2023 21:50:32"

-- 
-- Device: Altera EP4CE115F23I7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PARA_COMM IS
    PORT (
	CLK_30M : IN std_logic;
	RAMB_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	CLK_DAC : BUFFER std_logic;
	BUSY : IN std_logic;
	FIRSTDATA : IN std_logic;
	INDATA : IN std_logic_vector(15 DOWNTO 0);
	RESTOUT : BUFFER std_logic;
	CONVENT4 : BUFFER std_logic;
	CS : BUFFER std_logic;
	RD : BUFFER std_logic;
	XZCS_7 : IN std_logic;
	XRD : IN std_logic;
	XWE : IN std_logic;
	XA : IN std_logic_vector(11 DOWNTO 0);
	XD : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END PARA_COMM;

-- Design Ports Information
-- RAMB_OUT[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[4]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[7]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[8]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[9]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[10]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[11]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[12]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[13]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[14]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMB_OUT[15]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_DAC	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIRSTDATA	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESTOUT	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONVENT4	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[9]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[11]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[12]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[14]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XD[15]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XZCS_7	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XRD	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XWE	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[4]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[8]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XA[11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_30M	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUSY	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[2]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[6]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[8]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[9]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[10]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[11]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[12]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[13]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[14]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INDATA[15]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PARA_COMM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_30M : std_logic;
SIGNAL ww_RAMB_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CLK_DAC : std_logic;
SIGNAL ww_BUSY : std_logic;
SIGNAL ww_FIRSTDATA : std_logic;
SIGNAL ww_INDATA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RESTOUT : std_logic;
SIGNAL ww_CONVENT4 : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_RD : std_logic;
SIGNAL ww_XZCS_7 : std_logic;
SIGNAL ww_XRD : std_logic;
SIGNAL ww_XWE : std_logic;
SIGNAL ww_XA : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_XD : std_logic_vector(15 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|WREN_B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|U5|CH_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|WREN_A~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_e_CLK_DAC_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FIRSTDATA~input_o\ : std_logic;
SIGNAL \XZCS_7~input_o\ : std_logic;
SIGNAL \CLK_30M~input_o\ : std_logic;
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U2|Add1~1_combout\ : std_logic;
SIGNAL \U5|U3|CQI[2]~2_combout\ : std_logic;
SIGNAL \U5|U3|Equal1~0_combout\ : std_logic;
SIGNAL \U5|U2|CONVENT1~0_combout\ : std_logic;
SIGNAL \U5|U2|CONVENT1~1_combout\ : std_logic;
SIGNAL \U5|U3|READFLAG~0_combout\ : std_logic;
SIGNAL \U5|U3|READFLAG~q\ : std_logic;
SIGNAL \U5|U3|CNT[0]~4_combout\ : std_logic;
SIGNAL \U5|U3|CNT[1]~0_combout\ : std_logic;
SIGNAL \U5|U3|CNT~1_combout\ : std_logic;
SIGNAL \U5|U3|CNT[3]~2_combout\ : std_logic;
SIGNAL \U5|U3|CNT[3]~3_combout\ : std_logic;
SIGNAL \U5|U3|STARTREAD~0_combout\ : std_logic;
SIGNAL \U5|U3|STARTREAD~1_combout\ : std_logic;
SIGNAL \U5|U3|STARTREAD~q\ : std_logic;
SIGNAL \U5|U2|CQI[2]~2_combout\ : std_logic;
SIGNAL \U5|U2|CQI[1]~1_combout\ : std_logic;
SIGNAL \U5|U2|CQI[3]~3_combout\ : std_logic;
SIGNAL \U5|U2|CQI[0]~0_combout\ : std_logic;
SIGNAL \U5|U2|Equal1~0_combout\ : std_logic;
SIGNAL \U5|U2|CONVENT1~2_combout\ : std_logic;
SIGNAL \U5|U2|CONVENT1~q\ : std_logic;
SIGNAL \BUSY~input_o\ : std_logic;
SIGNAL \U5|U3|FLAG~0_combout\ : std_logic;
SIGNAL \U5|U3|FLAG~1_combout\ : std_logic;
SIGNAL \U5|U3|FLAG~q\ : std_logic;
SIGNAL \U5|U3|RD1~0_combout\ : std_logic;
SIGNAL \U5|U3|RD1~1_combout\ : std_logic;
SIGNAL \U5|U3|RD1~q\ : std_logic;
SIGNAL \U5|U3|process_2~2_combout\ : std_logic;
SIGNAL \U5|U3|CNTRD~0_combout\ : std_logic;
SIGNAL \U5|U3|Add2~0_combout\ : std_logic;
SIGNAL \U5|U3|CNTRD~1_combout\ : std_logic;
SIGNAL \U5|U3|Add2~1_combout\ : std_logic;
SIGNAL \U5|U3|CNTRD~2_combout\ : std_logic;
SIGNAL \U5|U3|process_2~0_combout\ : std_logic;
SIGNAL \U5|U3|process_2~1_combout\ : std_logic;
SIGNAL \U5|U3|CQI~1_combout\ : std_logic;
SIGNAL \U5|U3|CQI~0_combout\ : std_logic;
SIGNAL \U2|Add1~0_combout\ : std_logic;
SIGNAL \U5|U5|CH_EN~feeder_combout\ : std_logic;
SIGNAL \U5|U5|CH_EN~q\ : std_logic;
SIGNAL \XRD~input_o\ : std_logic;
SIGNAL \U2|WREN_A~combout\ : std_logic;
SIGNAL \U2|RDEN_A~combout\ : std_logic;
SIGNAL \XWE~input_o\ : std_logic;
SIGNAL \U3|WREN_B~combout\ : std_logic;
SIGNAL \U3|RDEN_B~combout\ : std_logic;
SIGNAL \INDATA[0]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[0]~feeder_combout\ : std_logic;
SIGNAL \XA[0]~input_o\ : std_logic;
SIGNAL \U2|WREN_A~clkctrl_outclk\ : std_logic;
SIGNAL \U5|U5|CH_EN~clkctrl_outclk\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|Add0~1\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \U2|Add0~3\ : std_logic;
SIGNAL \U2|Add0~4_combout\ : std_logic;
SIGNAL \U2|Add0~5\ : std_logic;
SIGNAL \U2|Add0~6_combout\ : std_logic;
SIGNAL \U2|Add0~7\ : std_logic;
SIGNAL \U2|Add0~8_combout\ : std_logic;
SIGNAL \U2|Add0~9\ : std_logic;
SIGNAL \U2|Add0~10_combout\ : std_logic;
SIGNAL \U2|Add0~11\ : std_logic;
SIGNAL \U2|Add0~12_combout\ : std_logic;
SIGNAL \U2|Add0~13\ : std_logic;
SIGNAL \U2|Add0~14_combout\ : std_logic;
SIGNAL \U2|Add0~15\ : std_logic;
SIGNAL \U2|Add0~16_combout\ : std_logic;
SIGNAL \U2|Equal0~1_combout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U2|CH_CNT~0_combout\ : std_logic;
SIGNAL \U2|Add2~1\ : std_logic;
SIGNAL \U2|Add2~4\ : std_logic;
SIGNAL \U2|Add2~7\ : std_logic;
SIGNAL \U2|Add2~10\ : std_logic;
SIGNAL \U2|Add2~13\ : std_logic;
SIGNAL \U2|Add2~16\ : std_logic;
SIGNAL \U2|Add2~19\ : std_logic;
SIGNAL \U2|Add2~22\ : std_logic;
SIGNAL \U2|Add2~24_combout\ : std_logic;
SIGNAL \U2|Add2~26_combout\ : std_logic;
SIGNAL \U2|Add2~21_combout\ : std_logic;
SIGNAL \U2|Add2~23_combout\ : std_logic;
SIGNAL \U2|Add2~18_combout\ : std_logic;
SIGNAL \U2|Add2~20_combout\ : std_logic;
SIGNAL \U2|Add2~3_combout\ : std_logic;
SIGNAL \U2|Add2~5_combout\ : std_logic;
SIGNAL \U2|Equal1~2_combout\ : std_logic;
SIGNAL \U2|Add2~15_combout\ : std_logic;
SIGNAL \U2|Add2~17_combout\ : std_logic;
SIGNAL \U2|Add2~6_combout\ : std_logic;
SIGNAL \U2|Add2~8_combout\ : std_logic;
SIGNAL \U2|Add2~9_combout\ : std_logic;
SIGNAL \U2|Add2~11_combout\ : std_logic;
SIGNAL \U2|Add2~12_combout\ : std_logic;
SIGNAL \U2|Add2~14_combout\ : std_logic;
SIGNAL \U2|Equal1~1_combout\ : std_logic;
SIGNAL \U2|ADDR_FPGAWR~1_combout\ : std_logic;
SIGNAL \U2|Add2~0_combout\ : std_logic;
SIGNAL \U2|Add2~2_combout\ : std_logic;
SIGNAL \U2|Add1~2_combout\ : std_logic;
SIGNAL \U2|ADDR_FPGAWR~2_combout\ : std_logic;
SIGNAL \U2|Equal1~0_combout\ : std_logic;
SIGNAL \U2|ADDR_FPGAWR~0_combout\ : std_logic;
SIGNAL \U2|ADDRESS_A[0]~0_combout\ : std_logic;
SIGNAL \XA[1]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[1]~1_combout\ : std_logic;
SIGNAL \XA[2]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[2]~2_combout\ : std_logic;
SIGNAL \XA[3]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[3]~3_combout\ : std_logic;
SIGNAL \XA[4]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[4]~4_combout\ : std_logic;
SIGNAL \XA[5]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[5]~5_combout\ : std_logic;
SIGNAL \XA[6]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[6]~6_combout\ : std_logic;
SIGNAL \XA[7]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[7]~7_combout\ : std_logic;
SIGNAL \XA[8]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[8]~8_combout\ : std_logic;
SIGNAL \XA[9]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[9]~9_combout\ : std_logic;
SIGNAL \XA[10]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[10]~10_combout\ : std_logic;
SIGNAL \XA[11]~input_o\ : std_logic;
SIGNAL \U2|ADDRESS_A[11]~11_combout\ : std_logic;
SIGNAL \XD[0]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[0]~0_combout\ : std_logic;
SIGNAL \U3|WREN_B~clkctrl_outclk\ : std_logic;
SIGNAL \U3|Add0~0_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[0]~0_combout\ : std_logic;
SIGNAL \U3|Add0~1\ : std_logic;
SIGNAL \U3|Add0~2_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[1]~1_combout\ : std_logic;
SIGNAL \U3|Add0~3\ : std_logic;
SIGNAL \U3|Add0~4_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[2]~2_combout\ : std_logic;
SIGNAL \U3|Add0~5\ : std_logic;
SIGNAL \U3|Add0~6_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[3]~3_combout\ : std_logic;
SIGNAL \U3|Add0~7\ : std_logic;
SIGNAL \U3|Add0~8_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[4]~4_combout\ : std_logic;
SIGNAL \U3|Add0~9\ : std_logic;
SIGNAL \U3|Add0~10_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[5]~5_combout\ : std_logic;
SIGNAL \U3|Add0~11\ : std_logic;
SIGNAL \U3|Add0~12_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[6]~6_combout\ : std_logic;
SIGNAL \U3|Add0~13\ : std_logic;
SIGNAL \U3|Add0~14_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[7]~7_combout\ : std_logic;
SIGNAL \U3|Add0~15\ : std_logic;
SIGNAL \U3|Add0~16_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[8]~8_combout\ : std_logic;
SIGNAL \U3|Add0~17\ : std_logic;
SIGNAL \U3|Add0~18_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[9]~9_combout\ : std_logic;
SIGNAL \U3|Add0~19\ : std_logic;
SIGNAL \U3|Add0~20_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[10]~10_combout\ : std_logic;
SIGNAL \U3|Equal0~0_combout\ : std_logic;
SIGNAL \U3|Equal0~1_combout\ : std_logic;
SIGNAL \U3|Equal0~2_combout\ : std_logic;
SIGNAL \U3|Add0~21\ : std_logic;
SIGNAL \U3|Add0~22_combout\ : std_logic;
SIGNAL \U3|ADDR_FPGARE~0_combout\ : std_logic;
SIGNAL \U3|ADDRESS_B[11]~11_combout\ : std_logic;
SIGNAL \INDATA[1]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[1]~feeder_combout\ : std_logic;
SIGNAL \XD[1]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[1]~1_combout\ : std_logic;
SIGNAL \U1|XD~16_combout\ : std_logic;
SIGNAL \INDATA[2]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[2]~feeder_combout\ : std_logic;
SIGNAL \XD[2]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[2]~2_combout\ : std_logic;
SIGNAL \INDATA[3]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \XD[3]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[3]~3_combout\ : std_logic;
SIGNAL \INDATA[4]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[4]~feeder_combout\ : std_logic;
SIGNAL \XD[4]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[4]~4_combout\ : std_logic;
SIGNAL \INDATA[5]~input_o\ : std_logic;
SIGNAL \XD[5]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[5]~5_combout\ : std_logic;
SIGNAL \INDATA[6]~input_o\ : std_logic;
SIGNAL \XD[6]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[6]~6_combout\ : std_logic;
SIGNAL \INDATA[7]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \XD[7]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[7]~7_combout\ : std_logic;
SIGNAL \INDATA[8]~input_o\ : std_logic;
SIGNAL \XD[8]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[8]~8_combout\ : std_logic;
SIGNAL \INDATA[9]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[9]~feeder_combout\ : std_logic;
SIGNAL \XD[9]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[9]~9_combout\ : std_logic;
SIGNAL \INDATA[10]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[10]~feeder_combout\ : std_logic;
SIGNAL \XD[10]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[10]~10_combout\ : std_logic;
SIGNAL \INDATA[11]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[11]~feeder_combout\ : std_logic;
SIGNAL \XD[11]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[11]~11_combout\ : std_logic;
SIGNAL \INDATA[12]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[12]~feeder_combout\ : std_logic;
SIGNAL \XD[12]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[12]~12_combout\ : std_logic;
SIGNAL \INDATA[13]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[13]~feeder_combout\ : std_logic;
SIGNAL \XD[13]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[13]~13_combout\ : std_logic;
SIGNAL \INDATA[14]~input_o\ : std_logic;
SIGNAL \U5|U3|DATA[14]~feeder_combout\ : std_logic;
SIGNAL \XD[14]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[14]~14_combout\ : std_logic;
SIGNAL \INDATA[15]~input_o\ : std_logic;
SIGNAL \XD[15]~input_o\ : std_logic;
SIGNAL \U1|DATA_B[15]~15_combout\ : std_logic;
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_e_CLK_DAC_outclk\ : std_logic;
SIGNAL \U5|U1|CQI[2]~7\ : std_logic;
SIGNAL \U5|U1|CQI[3]~9_combout\ : std_logic;
SIGNAL \U5|U1|Equal0~1_combout\ : std_logic;
SIGNAL \U5|U1|CQI[3]~10\ : std_logic;
SIGNAL \U5|U1|CQI[4]~11_combout\ : std_logic;
SIGNAL \U5|U1|CQI[1]~4_combout\ : std_logic;
SIGNAL \U5|U1|Equal0~0_combout\ : std_logic;
SIGNAL \U5|U1|CQI[0]~8_combout\ : std_logic;
SIGNAL \U5|U1|CQI[1]~5\ : std_logic;
SIGNAL \U5|U1|CQI[2]~6_combout\ : std_logic;
SIGNAL \U5|U1|RSET0~0_combout\ : std_logic;
SIGNAL \U5|U1|RSET0~1_combout\ : std_logic;
SIGNAL \U5|U1|RSET0~q\ : std_logic;
SIGNAL \U5|U3|CNTRD\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U5|U2|CQI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U5|U1|CQI\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U5|U3|CNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|U3|CQI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|U3|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|ADDR_FPGARE\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U2|CH_CNT\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U2|ADDR_FPGAWR\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U5|U3|ALT_INV_RD1~q\ : std_logic;
SIGNAL \U3|ALT_INV_WREN_B~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLK_30M <= CLK_30M;
RAMB_OUT <= ww_RAMB_OUT;
CLK_DAC <= ww_CLK_DAC;
ww_BUSY <= BUSY;
ww_FIRSTDATA <= FIRSTDATA;
ww_INDATA <= INDATA;
RESTOUT <= ww_RESTOUT;
CONVENT4 <= ww_CONVENT4;
CS <= ww_CS;
RD <= ww_RD;
ww_XZCS_7 <= XZCS_7;
ww_XRD <= XRD;
ww_XWE <= XWE;
ww_XA <= XA;
XD <= ww_XD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\U5|U3|DATA\(1) & \U5|U3|DATA\(0));

\U4|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\U1|DATA_B[1]~1_combout\ & \U1|DATA_B[0]~0_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U2|ADDRESS_A[11]~11_combout\ & \U2|ADDRESS_A[10]~10_combout\ & \U2|ADDRESS_A[9]~9_combout\ & \U2|ADDRESS_A[8]~8_combout\ & \U2|ADDRESS_A[7]~7_combout\ & \U2|ADDRESS_A[6]~6_combout\
& \U2|ADDRESS_A[5]~5_combout\ & \U2|ADDRESS_A[4]~4_combout\ & \U2|ADDRESS_A[3]~3_combout\ & \U2|ADDRESS_A[2]~2_combout\ & \U2|ADDRESS_A[1]~1_combout\ & \U2|ADDRESS_A[0]~0_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\U3|ADDRESS_B[11]~11_combout\ & \U3|ADDRESS_B[10]~10_combout\ & \U3|ADDRESS_B[9]~9_combout\ & \U3|ADDRESS_B[8]~8_combout\ & \U3|ADDRESS_B[7]~7_combout\ & \U3|ADDRESS_B[6]~6_combout\
& \U3|ADDRESS_B[5]~5_combout\ & \U3|ADDRESS_B[4]~4_combout\ & \U3|ADDRESS_B[3]~3_combout\ & \U3|ADDRESS_B[2]~2_combout\ & \U3|ADDRESS_B[1]~1_combout\ & \U3|ADDRESS_B[0]~0_combout\);

\U4|altsyncram_component|auto_generated|q_a\(0) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(1) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|q_b\(0) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_b\(1) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\U5|U3|DATA\(3) & \U5|U3|DATA\(2));

\U4|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ <= (\U1|DATA_B[3]~3_combout\ & \U1|DATA_B[2]~2_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\U2|ADDRESS_A[11]~11_combout\ & \U2|ADDRESS_A[10]~10_combout\ & \U2|ADDRESS_A[9]~9_combout\ & \U2|ADDRESS_A[8]~8_combout\ & \U2|ADDRESS_A[7]~7_combout\ & \U2|ADDRESS_A[6]~6_combout\
& \U2|ADDRESS_A[5]~5_combout\ & \U2|ADDRESS_A[4]~4_combout\ & \U2|ADDRESS_A[3]~3_combout\ & \U2|ADDRESS_A[2]~2_combout\ & \U2|ADDRESS_A[1]~1_combout\ & \U2|ADDRESS_A[0]~0_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\U3|ADDRESS_B[11]~11_combout\ & \U3|ADDRESS_B[10]~10_combout\ & \U3|ADDRESS_B[9]~9_combout\ & \U3|ADDRESS_B[8]~8_combout\ & \U3|ADDRESS_B[7]~7_combout\ & \U3|ADDRESS_B[6]~6_combout\
& \U3|ADDRESS_B[5]~5_combout\ & \U3|ADDRESS_B[4]~4_combout\ & \U3|ADDRESS_B[3]~3_combout\ & \U3|ADDRESS_B[2]~2_combout\ & \U3|ADDRESS_B[1]~1_combout\ & \U3|ADDRESS_B[0]~0_combout\);

\U4|altsyncram_component|auto_generated|q_a\(2) <= \U4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(3) <= \U4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|q_b\(2) <= \U4|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_b\(3) <= \U4|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\U5|U3|DATA\(5) & \U5|U3|DATA\(4));

\U4|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\ <= (\U1|DATA_B[5]~5_combout\ & \U1|DATA_B[4]~4_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\U2|ADDRESS_A[11]~11_combout\ & \U2|ADDRESS_A[10]~10_combout\ & \U2|ADDRESS_A[9]~9_combout\ & \U2|ADDRESS_A[8]~8_combout\ & \U2|ADDRESS_A[7]~7_combout\ & \U2|ADDRESS_A[6]~6_combout\
& \U2|ADDRESS_A[5]~5_combout\ & \U2|ADDRESS_A[4]~4_combout\ & \U2|ADDRESS_A[3]~3_combout\ & \U2|ADDRESS_A[2]~2_combout\ & \U2|ADDRESS_A[1]~1_combout\ & \U2|ADDRESS_A[0]~0_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\U3|ADDRESS_B[11]~11_combout\ & \U3|ADDRESS_B[10]~10_combout\ & \U3|ADDRESS_B[9]~9_combout\ & \U3|ADDRESS_B[8]~8_combout\ & \U3|ADDRESS_B[7]~7_combout\ & \U3|ADDRESS_B[6]~6_combout\
& \U3|ADDRESS_B[5]~5_combout\ & \U3|ADDRESS_B[4]~4_combout\ & \U3|ADDRESS_B[3]~3_combout\ & \U3|ADDRESS_B[2]~2_combout\ & \U3|ADDRESS_B[1]~1_combout\ & \U3|ADDRESS_B[0]~0_combout\);

\U4|altsyncram_component|auto_generated|q_a\(4) <= \U4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(5) <= \U4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|q_b\(4) <= \U4|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_b\(5) <= \U4|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\U5|U3|DATA\(7) & \U5|U3|DATA\(6));

\U4|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ <= (\U1|DATA_B[7]~7_combout\ & \U1|DATA_B[6]~6_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\U2|ADDRESS_A[11]~11_combout\ & \U2|ADDRESS_A[10]~10_combout\ & \U2|ADDRESS_A[9]~9_combout\ & \U2|ADDRESS_A[8]~8_combout\ & \U2|ADDRESS_A[7]~7_combout\ & \U2|ADDRESS_A[6]~6_combout\
& \U2|ADDRESS_A[5]~5_combout\ & \U2|ADDRESS_A[4]~4_combout\ & \U2|ADDRESS_A[3]~3_combout\ & \U2|ADDRESS_A[2]~2_combout\ & \U2|ADDRESS_A[1]~1_combout\ & \U2|ADDRESS_A[0]~0_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\U3|ADDRESS_B[11]~11_combout\ & \U3|ADDRESS_B[10]~10_combout\ & \U3|ADDRESS_B[9]~9_combout\ & \U3|ADDRESS_B[8]~8_combout\ & \U3|ADDRESS_B[7]~7_combout\ & \U3|ADDRESS_B[6]~6_combout\
& \U3|ADDRESS_B[5]~5_combout\ & \U3|ADDRESS_B[4]~4_combout\ & \U3|ADDRESS_B[3]~3_combout\ & \U3|ADDRESS_B[2]~2_combout\ & \U3|ADDRESS_B[1]~1_combout\ & \U3|ADDRESS_B[0]~0_combout\);

\U4|altsyncram_component|auto_generated|q_a\(6) <= \U4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(7) <= \U4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|q_b\(6) <= \U4|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_b\(7) <= \U4|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\U5|U3|DATA\(9) & \U5|U3|DATA\(8));

\U4|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ <= (\U1|DATA_B[9]~9_combout\ & \U1|DATA_B[8]~8_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\U2|ADDRESS_A[11]~11_combout\ & \U2|ADDRESS_A[10]~10_combout\ & \U2|ADDRESS_A[9]~9_combout\ & \U2|ADDRESS_A[8]~8_combout\ & \U2|ADDRESS_A[7]~7_combout\ & \U2|ADDRESS_A[6]~6_combout\
& \U2|ADDRESS_A[5]~5_combout\ & \U2|ADDRESS_A[4]~4_combout\ & \U2|ADDRESS_A[3]~3_combout\ & \U2|ADDRESS_A[2]~2_combout\ & \U2|ADDRESS_A[1]~1_combout\ & \U2|ADDRESS_A[0]~0_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\U3|ADDRESS_B[11]~11_combout\ & \U3|ADDRESS_B[10]~10_combout\ & \U3|ADDRESS_B[9]~9_combout\ & \U3|ADDRESS_B[8]~8_combout\ & \U3|ADDRESS_B[7]~7_combout\ & \U3|ADDRESS_B[6]~6_combout\
& \U3|ADDRESS_B[5]~5_combout\ & \U3|ADDRESS_B[4]~4_combout\ & \U3|ADDRESS_B[3]~3_combout\ & \U3|ADDRESS_B[2]~2_combout\ & \U3|ADDRESS_B[1]~1_combout\ & \U3|ADDRESS_B[0]~0_combout\);

\U4|altsyncram_component|auto_generated|q_a\(8) <= \U4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(9) <= \U4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|q_b\(8) <= \U4|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_b\(9) <= \U4|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (\U5|U3|DATA\(11) & \U5|U3|DATA\(10));

\U4|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ <= (\U1|DATA_B[11]~11_combout\ & \U1|DATA_B[10]~10_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\U2|ADDRESS_A[11]~11_combout\ & \U2|ADDRESS_A[10]~10_combout\ & \U2|ADDRESS_A[9]~9_combout\ & \U2|ADDRESS_A[8]~8_combout\ & \U2|ADDRESS_A[7]~7_combout\ & \U2|ADDRESS_A[6]~6_combout\
& \U2|ADDRESS_A[5]~5_combout\ & \U2|ADDRESS_A[4]~4_combout\ & \U2|ADDRESS_A[3]~3_combout\ & \U2|ADDRESS_A[2]~2_combout\ & \U2|ADDRESS_A[1]~1_combout\ & \U2|ADDRESS_A[0]~0_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\U3|ADDRESS_B[11]~11_combout\ & \U3|ADDRESS_B[10]~10_combout\ & \U3|ADDRESS_B[9]~9_combout\ & \U3|ADDRESS_B[8]~8_combout\ & \U3|ADDRESS_B[7]~7_combout\ & \U3|ADDRESS_B[6]~6_combout\
& \U3|ADDRESS_B[5]~5_combout\ & \U3|ADDRESS_B[4]~4_combout\ & \U3|ADDRESS_B[3]~3_combout\ & \U3|ADDRESS_B[2]~2_combout\ & \U3|ADDRESS_B[1]~1_combout\ & \U3|ADDRESS_B[0]~0_combout\);

\U4|altsyncram_component|auto_generated|q_a\(10) <= \U4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(11) <= \U4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|q_b\(10) <= \U4|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_b\(11) <= \U4|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\U5|U3|DATA\(13) & \U5|U3|DATA\(12));

\U4|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ <= (\U1|DATA_B[13]~13_combout\ & \U1|DATA_B[12]~12_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\U2|ADDRESS_A[11]~11_combout\ & \U2|ADDRESS_A[10]~10_combout\ & \U2|ADDRESS_A[9]~9_combout\ & \U2|ADDRESS_A[8]~8_combout\ & \U2|ADDRESS_A[7]~7_combout\ & \U2|ADDRESS_A[6]~6_combout\
& \U2|ADDRESS_A[5]~5_combout\ & \U2|ADDRESS_A[4]~4_combout\ & \U2|ADDRESS_A[3]~3_combout\ & \U2|ADDRESS_A[2]~2_combout\ & \U2|ADDRESS_A[1]~1_combout\ & \U2|ADDRESS_A[0]~0_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\U3|ADDRESS_B[11]~11_combout\ & \U3|ADDRESS_B[10]~10_combout\ & \U3|ADDRESS_B[9]~9_combout\ & \U3|ADDRESS_B[8]~8_combout\ & \U3|ADDRESS_B[7]~7_combout\ & \U3|ADDRESS_B[6]~6_combout\
& \U3|ADDRESS_B[5]~5_combout\ & \U3|ADDRESS_B[4]~4_combout\ & \U3|ADDRESS_B[3]~3_combout\ & \U3|ADDRESS_B[2]~2_combout\ & \U3|ADDRESS_B[1]~1_combout\ & \U3|ADDRESS_B[0]~0_combout\);

\U4|altsyncram_component|auto_generated|q_a\(12) <= \U4|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(13) <= \U4|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|q_b\(12) <= \U4|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_b\(13) <= \U4|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\U5|U3|DATA\(15) & \U5|U3|DATA\(14));

\U4|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\ <= (\U1|DATA_B[15]~15_combout\ & \U1|DATA_B[14]~14_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\U2|ADDRESS_A[11]~11_combout\ & \U2|ADDRESS_A[10]~10_combout\ & \U2|ADDRESS_A[9]~9_combout\ & \U2|ADDRESS_A[8]~8_combout\ & \U2|ADDRESS_A[7]~7_combout\ & \U2|ADDRESS_A[6]~6_combout\
& \U2|ADDRESS_A[5]~5_combout\ & \U2|ADDRESS_A[4]~4_combout\ & \U2|ADDRESS_A[3]~3_combout\ & \U2|ADDRESS_A[2]~2_combout\ & \U2|ADDRESS_A[1]~1_combout\ & \U2|ADDRESS_A[0]~0_combout\);

\U4|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\U3|ADDRESS_B[11]~11_combout\ & \U3|ADDRESS_B[10]~10_combout\ & \U3|ADDRESS_B[9]~9_combout\ & \U3|ADDRESS_B[8]~8_combout\ & \U3|ADDRESS_B[7]~7_combout\ & \U3|ADDRESS_B[6]~6_combout\
& \U3|ADDRESS_B[5]~5_combout\ & \U3|ADDRESS_B[4]~4_combout\ & \U3|ADDRESS_B[3]~3_combout\ & \U3|ADDRESS_B[2]~2_combout\ & \U3|ADDRESS_B[1]~1_combout\ & \U3|ADDRESS_B[0]~0_combout\);

\U4|altsyncram_component|auto_generated|q_a\(14) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(15) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\U4|altsyncram_component|auto_generated|q_b\(14) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_b\(15) <= \U4|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(1);

\U0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK_30M~input_o\);

\U0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|altpll_component|auto_generated|wire_pll1_clk\(0));

\U3|WREN_B~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U3|WREN_B~combout\);

\U5|U5|CH_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U5|U5|CH_EN~q\);

\U2|WREN_A~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U2|WREN_A~combout\);

\U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_e_CLK_DAC_INCLK_bus\ <= (vcc & vcc & vcc & \U0|altpll_component|auto_generated|wire_pll1_clk\(1));
\U5|U3|ALT_INV_RD1~q\ <= NOT \U5|U3|RD1~q\;
\U3|ALT_INV_WREN_B~clkctrl_outclk\ <= NOT \U3|WREN_B~clkctrl_outclk\;

-- Location: IOOBUF_X115_Y56_N16
\RAMB_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(0),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(0));

-- Location: IOOBUF_X115_Y56_N23
\RAMB_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(1),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(1));

-- Location: IOOBUF_X115_Y57_N23
\RAMB_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(2),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(2));

-- Location: IOOBUF_X58_Y73_N9
\RAMB_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(3),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(3));

-- Location: IOOBUF_X115_Y59_N16
\RAMB_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(4),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(4));

-- Location: IOOBUF_X47_Y73_N16
\RAMB_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(5),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(5));

-- Location: IOOBUF_X42_Y73_N2
\RAMB_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(6),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(6));

-- Location: IOOBUF_X100_Y73_N23
\RAMB_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(7),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(7));

-- Location: IOOBUF_X100_Y73_N16
\RAMB_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(8),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(8));

-- Location: IOOBUF_X42_Y73_N9
\RAMB_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(9),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(9));

-- Location: IOOBUF_X96_Y73_N23
\RAMB_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(10),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(10));

-- Location: IOOBUF_X58_Y73_N16
\RAMB_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(11),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(11));

-- Location: IOOBUF_X115_Y67_N16
\RAMB_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(12),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(12));

-- Location: IOOBUF_X115_Y61_N23
\RAMB_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(13),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(13));

-- Location: IOOBUF_X107_Y73_N16
\RAMB_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(14),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(14));

-- Location: IOOBUF_X115_Y55_N16
\RAMB_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_b\(15),
	devoe => ww_devoe,
	o => ww_RAMB_OUT(15));

-- Location: IOOBUF_X5_Y0_N23
\CLK_DAC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_e_CLK_DAC_outclk\,
	devoe => ww_devoe,
	o => ww_CLK_DAC);

-- Location: IOOBUF_X1_Y0_N16
\RESTOUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U1|RSET0~q\,
	devoe => ww_devoe,
	o => ww_RESTOUT);

-- Location: IOOBUF_X115_Y68_N23
\CONVENT4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U2|CONVENT1~q\,
	devoe => ww_devoe,
	o => ww_CONVENT4);

-- Location: IOOBUF_X115_Y49_N2
\CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U3|ALT_INV_RD1~q\,
	devoe => ww_devoe,
	o => ww_CS);

-- Location: IOOBUF_X115_Y49_N9
\RD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U3|ALT_INV_RD1~q\,
	devoe => ww_devoe,
	o => ww_RD);

-- Location: IOOBUF_X85_Y73_N9
\XD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(0),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(0));

-- Location: IOOBUF_X89_Y73_N23
\XD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(1),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(1));

-- Location: IOOBUF_X87_Y73_N23
\XD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(2),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(2));

-- Location: IOOBUF_X79_Y73_N9
\XD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(3),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(3));

-- Location: IOOBUF_X62_Y73_N16
\XD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(4),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(4));

-- Location: IOOBUF_X81_Y73_N2
\XD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(5),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(5));

-- Location: IOOBUF_X81_Y73_N23
\XD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(6),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(6));

-- Location: IOOBUF_X65_Y73_N9
\XD[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(7),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(7));

-- Location: IOOBUF_X62_Y73_N23
\XD[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(8),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(8));

-- Location: IOOBUF_X81_Y73_N16
\XD[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(9),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(9));

-- Location: IOOBUF_X87_Y73_N2
\XD[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(10),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(10));

-- Location: IOOBUF_X85_Y73_N2
\XD[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(11),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(11));

-- Location: IOOBUF_X85_Y73_N16
\XD[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(12),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(12));

-- Location: IOOBUF_X89_Y73_N9
\XD[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(13),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(13));

-- Location: IOOBUF_X81_Y73_N9
\XD[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(14),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(14));

-- Location: IOOBUF_X83_Y73_N23
\XD[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|altsyncram_component|auto_generated|q_a\(15),
	oe => \U1|XD~16_combout\,
	devoe => ww_devoe,
	o => ww_XD(15));

-- Location: IOIBUF_X58_Y0_N1
\XZCS_7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XZCS_7,
	o => \XZCS_7~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK_30M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_30M,
	o => \CLK_30M~input_o\);

-- Location: PLL_1
\U0|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 4,
	c1_initial => 1,
	c1_low => 4,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 5,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 3,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 5,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 33333,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 20,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3523,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \U0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U0|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \U0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X80_Y59_N0
\U2|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add1~1_combout\ = \U5|U3|CQI\(1) $ (\U5|U3|CQI\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CQI\(1),
	datac => \U5|U3|CQI\(0),
	combout => \U2|Add1~1_combout\);

-- Location: LCCOMB_X80_Y59_N28
\U5|U3|CQI[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CQI[2]~2_combout\ = \U5|U3|CQI\(2) $ (((\U5|U3|process_2~1_combout\ & (\U5|U3|CQI\(0) & \U5|U3|CQI\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|process_2~1_combout\,
	datab => \U5|U3|CQI\(0),
	datac => \U5|U3|CQI\(2),
	datad => \U5|U3|CQI\(1),
	combout => \U5|U3|CQI[2]~2_combout\);

-- Location: FF_X80_Y59_N29
\U5|U3|CQI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|CQI[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CQI\(2));

-- Location: LCCOMB_X79_Y59_N22
\U5|U3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|Equal1~0_combout\ = (!\U5|U3|CQI\(2) & (!\U5|U3|CQI\(1) & (!\U5|U3|CQI\(0) & \U5|U3|CQI\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CQI\(2),
	datab => \U5|U3|CQI\(1),
	datac => \U5|U3|CQI\(0),
	datad => \U5|U3|CQI\(3),
	combout => \U5|U3|Equal1~0_combout\);

-- Location: LCCOMB_X79_Y59_N18
\U5|U2|CONVENT1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U2|CONVENT1~0_combout\ = (\U5|U3|CQI\(3)) # (!\U5|U3|CQI\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|U3|CQI\(2),
	datad => \U5|U3|CQI\(3),
	combout => \U5|U2|CONVENT1~0_combout\);

-- Location: LCCOMB_X79_Y59_N28
\U5|U2|CONVENT1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U2|CONVENT1~1_combout\ = (\U5|U2|CONVENT1~q\ & ((\U5|U2|CONVENT1~0_combout\) # ((\U5|U3|CQI\(0)) # (\U5|U3|CQI\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U2|CONVENT1~q\,
	datab => \U5|U2|CONVENT1~0_combout\,
	datac => \U5|U3|CQI\(0),
	datad => \U5|U3|CQI\(1),
	combout => \U5|U2|CONVENT1~1_combout\);

-- Location: LCCOMB_X80_Y60_N16
\U5|U3|READFLAG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|READFLAG~0_combout\ = (!\U5|U3|STARTREAD~q\ & ((\U5|U3|READFLAG~q\) # (\U5|U3|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|STARTREAD~q\,
	datac => \U5|U3|READFLAG~q\,
	datad => \U5|U3|process_2~1_combout\,
	combout => \U5|U3|READFLAG~0_combout\);

-- Location: FF_X80_Y60_N17
\U5|U3|READFLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|READFLAG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|READFLAG~q\);

-- Location: LCCOMB_X80_Y60_N26
\U5|U3|CNT[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CNT[0]~4_combout\ = !\U5|U3|CNT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|U3|CNT\(0),
	combout => \U5|U3|CNT[0]~4_combout\);

-- Location: FF_X80_Y60_N27
\U5|U3|CNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|CNT[0]~4_combout\,
	ena => \U5|U3|READFLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CNT\(0));

-- Location: LCCOMB_X80_Y60_N12
\U5|U3|CNT[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CNT[1]~0_combout\ = \U5|U3|CNT\(1) $ (((\U5|U3|READFLAG~q\ & \U5|U3|CNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U3|READFLAG~q\,
	datac => \U5|U3|CNT\(1),
	datad => \U5|U3|CNT\(0),
	combout => \U5|U3|CNT[1]~0_combout\);

-- Location: FF_X80_Y60_N13
\U5|U3|CNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|CNT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CNT\(1));

-- Location: LCCOMB_X80_Y60_N22
\U5|U3|CNT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CNT~1_combout\ = (\U5|U3|CNT\(1) & ((\U5|U3|CNT\(2) & ((!\U5|U3|CNT\(0)))) # (!\U5|U3|CNT\(2) & (\U5|U3|CNT\(3) & \U5|U3|CNT\(0))))) # (!\U5|U3|CNT\(1) & (((\U5|U3|CNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CNT\(1),
	datab => \U5|U3|CNT\(3),
	datac => \U5|U3|CNT\(2),
	datad => \U5|U3|CNT\(0),
	combout => \U5|U3|CNT~1_combout\);

-- Location: FF_X80_Y60_N23
\U5|U3|CNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|CNT~1_combout\,
	ena => \U5|U3|READFLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CNT\(2));

-- Location: LCCOMB_X80_Y60_N18
\U5|U3|CNT[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CNT[3]~2_combout\ = (\U5|U3|CNT\(1) & (\U5|U3|READFLAG~q\ & (\U5|U3|CNT\(2) & \U5|U3|CNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CNT\(1),
	datab => \U5|U3|READFLAG~q\,
	datac => \U5|U3|CNT\(2),
	datad => \U5|U3|CNT\(0),
	combout => \U5|U3|CNT[3]~2_combout\);

-- Location: LCCOMB_X80_Y60_N28
\U5|U3|CNT[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CNT[3]~3_combout\ = \U5|U3|CNT\(3) $ (\U5|U3|CNT[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|U3|CNT\(3),
	datad => \U5|U3|CNT[3]~2_combout\,
	combout => \U5|U3|CNT[3]~3_combout\);

-- Location: FF_X80_Y60_N29
\U5|U3|CNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|CNT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CNT\(3));

-- Location: LCCOMB_X80_Y60_N10
\U5|U3|STARTREAD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|STARTREAD~0_combout\ = (\U5|U3|CNT\(1) & (!\U5|U3|CNT\(3) & (!\U5|U3|CNT\(2) & \U5|U3|CNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CNT\(1),
	datab => \U5|U3|CNT\(3),
	datac => \U5|U3|CNT\(2),
	datad => \U5|U3|CNT\(0),
	combout => \U5|U3|STARTREAD~0_combout\);

-- Location: LCCOMB_X80_Y60_N30
\U5|U3|STARTREAD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|STARTREAD~1_combout\ = (!\U5|U3|RD1~q\ & ((\U5|U3|STARTREAD~q\) # ((\U5|U3|STARTREAD~0_combout\ & \U5|U3|READFLAG~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|STARTREAD~0_combout\,
	datab => \U5|U3|RD1~q\,
	datac => \U5|U3|STARTREAD~q\,
	datad => \U5|U3|READFLAG~q\,
	combout => \U5|U3|STARTREAD~1_combout\);

-- Location: FF_X80_Y60_N31
\U5|U3|STARTREAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|STARTREAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|STARTREAD~q\);

-- Location: LCCOMB_X82_Y59_N8
\U5|U2|CQI[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U2|CQI[2]~2_combout\ = \U5|U2|CQI\(2) $ (((\U5|U2|CQI\(1) & \U5|U2|CQI\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U2|CQI\(1),
	datac => \U5|U2|CQI\(2),
	datad => \U5|U2|CQI\(0),
	combout => \U5|U2|CQI[2]~2_combout\);

-- Location: FF_X82_Y59_N9
\U5|U2|CQI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U2|CQI[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U2|CQI\(2));

-- Location: LCCOMB_X82_Y59_N2
\U5|U2|CQI[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U2|CQI[1]~1_combout\ = (\U5|U2|CQI\(0) & (!\U5|U2|CQI\(1) & ((\U5|U2|CQI\(2)) # (!\U5|U2|CQI\(3))))) # (!\U5|U2|CQI\(0) & (((\U5|U2|CQI\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U2|CQI\(0),
	datab => \U5|U2|CQI\(3),
	datac => \U5|U2|CQI\(1),
	datad => \U5|U2|CQI\(2),
	combout => \U5|U2|CQI[1]~1_combout\);

-- Location: FF_X82_Y59_N3
\U5|U2|CQI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U2|CQI[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U2|CQI\(1));

-- Location: LCCOMB_X82_Y59_N22
\U5|U2|CQI[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U2|CQI[3]~3_combout\ = \U5|U2|CQI\(3) $ (((\U5|U2|CQI\(0) & (\U5|U2|CQI\(1) & \U5|U2|CQI\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U2|CQI\(0),
	datab => \U5|U2|CQI\(1),
	datac => \U5|U2|CQI\(3),
	datad => \U5|U2|CQI\(2),
	combout => \U5|U2|CQI[3]~3_combout\);

-- Location: FF_X82_Y59_N23
\U5|U2|CQI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U2|CQI[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U2|CQI\(3));

-- Location: LCCOMB_X82_Y59_N12
\U5|U2|CQI[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U2|CQI[0]~0_combout\ = ((\U5|U2|CQI\(3) & (!\U5|U2|CQI\(1) & !\U5|U2|CQI\(2)))) # (!\U5|U2|CQI\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U2|CQI\(3),
	datab => \U5|U2|CQI\(1),
	datac => \U5|U2|CQI\(0),
	datad => \U5|U2|CQI\(2),
	combout => \U5|U2|CQI[0]~0_combout\);

-- Location: FF_X82_Y59_N13
\U5|U2|CQI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U2|CQI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U2|CQI\(0));

-- Location: LCCOMB_X82_Y59_N24
\U5|U2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U2|Equal1~0_combout\ = (\U5|U2|CQI\(0) & (\U5|U2|CQI\(1) & (!\U5|U2|CQI\(3) & !\U5|U2|CQI\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U2|CQI\(0),
	datab => \U5|U2|CQI\(1),
	datac => \U5|U2|CQI\(3),
	datad => \U5|U2|CQI\(2),
	combout => \U5|U2|Equal1~0_combout\);

-- Location: LCCOMB_X79_Y59_N0
\U5|U2|CONVENT1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U2|CONVENT1~2_combout\ = (\U5|U2|CONVENT1~1_combout\) # ((\U5|U2|Equal1~0_combout\) # ((\U5|U3|Equal1~0_combout\ & \U5|U3|STARTREAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|Equal1~0_combout\,
	datab => \U5|U2|CONVENT1~1_combout\,
	datac => \U5|U3|STARTREAD~q\,
	datad => \U5|U2|Equal1~0_combout\,
	combout => \U5|U2|CONVENT1~2_combout\);

-- Location: FF_X79_Y59_N1
\U5|U2|CONVENT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U2|CONVENT1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U2|CONVENT1~q\);

-- Location: IOIBUF_X115_Y60_N15
\BUSY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUSY,
	o => \BUSY~input_o\);

-- Location: LCCOMB_X80_Y60_N24
\U5|U3|FLAG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|FLAG~0_combout\ = (\U5|U2|CONVENT1~q\ & (((\U5|U3|FLAG~q\ & \U5|U3|RD1~q\)) # (!\BUSY~input_o\))) # (!\U5|U2|CONVENT1~q\ & (\U5|U3|FLAG~q\ & (\U5|U3|RD1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U2|CONVENT1~q\,
	datab => \U5|U3|FLAG~q\,
	datac => \U5|U3|RD1~q\,
	datad => \BUSY~input_o\,
	combout => \U5|U3|FLAG~0_combout\);

-- Location: LCCOMB_X80_Y60_N20
\U5|U3|FLAG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|FLAG~1_combout\ = (\U5|U3|FLAG~0_combout\) # ((!\U5|U3|Equal1~0_combout\ & \U5|U3|FLAG~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U3|Equal1~0_combout\,
	datac => \U5|U3|FLAG~q\,
	datad => \U5|U3|FLAG~0_combout\,
	combout => \U5|U3|FLAG~1_combout\);

-- Location: FF_X80_Y60_N21
\U5|U3|FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|FLAG~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|FLAG~q\);

-- Location: LCCOMB_X80_Y60_N6
\U5|U3|RD1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|RD1~0_combout\ = (\U5|U3|READFLAG~q\) # ((!\U5|U3|STARTREAD~q\ & (!\U5|U3|RD1~q\ & \BUSY~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|STARTREAD~q\,
	datab => \U5|U3|READFLAG~q\,
	datac => \U5|U3|RD1~q\,
	datad => \BUSY~input_o\,
	combout => \U5|U3|RD1~0_combout\);

-- Location: LCCOMB_X80_Y60_N4
\U5|U3|RD1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|RD1~1_combout\ = (!\U5|U3|RD1~0_combout\ & ((\U5|U3|FLAG~q\) # (\U5|U3|RD1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U3|FLAG~q\,
	datac => \U5|U3|RD1~q\,
	datad => \U5|U3|RD1~0_combout\,
	combout => \U5|U3|RD1~1_combout\);

-- Location: FF_X80_Y60_N5
\U5|U3|RD1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|RD1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|RD1~q\);

-- Location: LCCOMB_X79_Y60_N12
\U5|U3|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|process_2~2_combout\ = (!\U5|U3|CNTRD\(0) & \U5|U3|RD1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|U3|CNTRD\(0),
	datad => \U5|U3|RD1~q\,
	combout => \U5|U3|process_2~2_combout\);

-- Location: FF_X79_Y60_N13
\U5|U3|CNTRD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CNTRD\(0));

-- Location: LCCOMB_X79_Y60_N0
\U5|U3|CNTRD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CNTRD~0_combout\ = (\U5|U3|RD1~q\ & ((\U5|U3|CNTRD\(0) & (!\U5|U3|process_2~0_combout\ & !\U5|U3|CNTRD\(1))) # (!\U5|U3|CNTRD\(0) & ((\U5|U3|CNTRD\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CNTRD\(0),
	datab => \U5|U3|process_2~0_combout\,
	datac => \U5|U3|CNTRD\(1),
	datad => \U5|U3|RD1~q\,
	combout => \U5|U3|CNTRD~0_combout\);

-- Location: FF_X79_Y60_N1
\U5|U3|CNTRD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|CNTRD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CNTRD\(1));

-- Location: LCCOMB_X79_Y60_N24
\U5|U3|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|Add2~0_combout\ = \U5|U3|CNTRD\(2) $ (((\U5|U3|CNTRD\(0) & \U5|U3|CNTRD\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CNTRD\(0),
	datac => \U5|U3|CNTRD\(2),
	datad => \U5|U3|CNTRD\(1),
	combout => \U5|U3|Add2~0_combout\);

-- Location: LCCOMB_X79_Y60_N22
\U5|U3|CNTRD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CNTRD~1_combout\ = (\U5|U3|Add2~0_combout\ & (\U5|U3|RD1~q\ & ((!\U5|U3|process_2~0_combout\) # (!\U5|U3|CNTRD\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CNTRD\(0),
	datab => \U5|U3|Add2~0_combout\,
	datac => \U5|U3|process_2~0_combout\,
	datad => \U5|U3|RD1~q\,
	combout => \U5|U3|CNTRD~1_combout\);

-- Location: FF_X79_Y60_N23
\U5|U3|CNTRD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|CNTRD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CNTRD\(2));

-- Location: LCCOMB_X79_Y60_N26
\U5|U3|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|Add2~1_combout\ = \U5|U3|CNTRD\(3) $ (((\U5|U3|CNTRD\(0) & (\U5|U3|CNTRD\(2) & \U5|U3|CNTRD\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CNTRD\(0),
	datab => \U5|U3|CNTRD\(3),
	datac => \U5|U3|CNTRD\(2),
	datad => \U5|U3|CNTRD\(1),
	combout => \U5|U3|Add2~1_combout\);

-- Location: LCCOMB_X79_Y60_N28
\U5|U3|CNTRD~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CNTRD~2_combout\ = (\U5|U3|Add2~1_combout\ & (\U5|U3|RD1~q\ & ((!\U5|U3|process_2~0_combout\) # (!\U5|U3|CNTRD\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CNTRD\(0),
	datab => \U5|U3|process_2~0_combout\,
	datac => \U5|U3|Add2~1_combout\,
	datad => \U5|U3|RD1~q\,
	combout => \U5|U3|CNTRD~2_combout\);

-- Location: FF_X79_Y60_N29
\U5|U3|CNTRD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|CNTRD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CNTRD\(3));

-- Location: LCCOMB_X79_Y60_N14
\U5|U3|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|process_2~0_combout\ = (!\U5|U3|CNTRD\(3) & (!\U5|U3|CNTRD\(2) & \U5|U3|CNTRD\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U3|CNTRD\(3),
	datac => \U5|U3|CNTRD\(2),
	datad => \U5|U3|CNTRD\(1),
	combout => \U5|U3|process_2~0_combout\);

-- Location: LCCOMB_X79_Y60_N2
\U5|U3|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|process_2~1_combout\ = (!\U5|U3|CNTRD\(0) & (\U5|U3|process_2~0_combout\ & \U5|U3|RD1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CNTRD\(0),
	datac => \U5|U3|process_2~0_combout\,
	datad => \U5|U3|RD1~q\,
	combout => \U5|U3|process_2~1_combout\);

-- Location: FF_X80_Y59_N25
\U5|U3|CQI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U2|Add1~1_combout\,
	sload => VCC,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CQI\(1));

-- Location: LCCOMB_X80_Y59_N22
\U5|U3|CQI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CQI~1_combout\ = (\U5|U3|CQI\(1) & (\U5|U3|CQI\(3) $ (((\U5|U3|CQI\(0) & \U5|U3|CQI\(2)))))) # (!\U5|U3|CQI\(1) & (\U5|U3|CQI\(3) & ((\U5|U3|CQI\(0)) # (\U5|U3|CQI\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CQI\(1),
	datab => \U5|U3|CQI\(0),
	datac => \U5|U3|CQI\(3),
	datad => \U5|U3|CQI\(2),
	combout => \U5|U3|CQI~1_combout\);

-- Location: FF_X80_Y59_N23
\U5|U3|CQI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|CQI~1_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CQI\(3));

-- Location: LCCOMB_X80_Y59_N24
\U5|U3|CQI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|CQI~0_combout\ = (!\U5|U3|CQI\(0) & (((\U5|U3|CQI\(1)) # (\U5|U3|CQI\(2))) # (!\U5|U3|CQI\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CQI\(0),
	datab => \U5|U3|CQI\(3),
	datac => \U5|U3|CQI\(1),
	datad => \U5|U3|CQI\(2),
	combout => \U5|U3|CQI~0_combout\);

-- Location: FF_X80_Y59_N1
\U5|U3|CQI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U5|U3|CQI~0_combout\,
	sload => VCC,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|CQI\(0));

-- Location: LCCOMB_X80_Y59_N26
\U2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add1~0_combout\ = \U5|U3|CQI\(3) $ (((\U5|U3|CQI\(0)) # ((\U5|U3|CQI\(2)) # (\U5|U3|CQI\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CQI\(0),
	datab => \U5|U3|CQI\(2),
	datac => \U5|U3|CQI\(3),
	datad => \U5|U3|CQI\(1),
	combout => \U2|Add1~0_combout\);

-- Location: LCCOMB_X77_Y59_N14
\U5|U5|CH_EN~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U5|CH_EN~feeder_combout\ = \U2|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Add1~0_combout\,
	combout => \U5|U5|CH_EN~feeder_combout\);

-- Location: FF_X77_Y59_N15
\U5|U5|CH_EN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U5|CH_EN~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U5|CH_EN~q\);

-- Location: IOIBUF_X60_Y73_N1
\XRD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XRD,
	o => \XRD~input_o\);

-- Location: LCCOMB_X77_Y59_N22
\U2|WREN_A\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|WREN_A~combout\ = (\U5|U5|CH_EN~q\ & ((\XZCS_7~input_o\) # (\XRD~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datac => \U5|U5|CH_EN~q\,
	datad => \XRD~input_o\,
	combout => \U2|WREN_A~combout\);

-- Location: LCCOMB_X77_Y59_N20
\U2|RDEN_A\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|RDEN_A~combout\ = (!\XZCS_7~input_o\ & !\XRD~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datac => \XRD~input_o\,
	combout => \U2|RDEN_A~combout\);

-- Location: IOIBUF_X79_Y73_N1
\XWE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XWE,
	o => \XWE~input_o\);

-- Location: LCCOMB_X79_Y58_N8
\U3|WREN_B\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|WREN_B~combout\ = LCELL((!\XWE~input_o\ & !\XZCS_7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \XWE~input_o\,
	datad => \XZCS_7~input_o\,
	combout => \U3|WREN_B~combout\);

-- Location: LCCOMB_X79_Y58_N20
\U3|RDEN_B\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|RDEN_B~combout\ = (\XWE~input_o\ & !\U3|WREN_B~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XWE~input_o\,
	datac => \U3|WREN_B~combout\,
	combout => \U3|RDEN_B~combout\);

-- Location: IOIBUF_X115_Y48_N1
\INDATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(0),
	o => \INDATA[0]~input_o\);

-- Location: LCCOMB_X79_Y56_N4
\U5|U3|DATA[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[0]~feeder_combout\ = \INDATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[0]~input_o\,
	combout => \U5|U3|DATA[0]~feeder_combout\);

-- Location: FF_X79_Y56_N5
\U5|U3|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[0]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(0));

-- Location: IOIBUF_X115_Y47_N22
\XA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(0),
	o => \XA[0]~input_o\);

-- Location: CLKCTRL_G13
\U2|WREN_A~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U2|WREN_A~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U2|WREN_A~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\U5|U5|CH_EN~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U5|U5|CH_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U5|U5|CH_EN~clkctrl_outclk\);

-- Location: LCCOMB_X81_Y59_N6
\U2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = \U2|CH_CNT\(3) $ (VCC)
-- \U2|Add0~1\ = CARRY(\U2|CH_CNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CH_CNT\(3),
	datad => VCC,
	combout => \U2|Add0~0_combout\,
	cout => \U2|Add0~1\);

-- Location: FF_X81_Y59_N7
\U2|CH_CNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|U5|CH_EN~clkctrl_outclk\,
	d => \U2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CH_CNT\(3));

-- Location: LCCOMB_X81_Y59_N8
\U2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = (\U2|CH_CNT\(4) & (!\U2|Add0~1\)) # (!\U2|CH_CNT\(4) & ((\U2|Add0~1\) # (GND)))
-- \U2|Add0~3\ = CARRY((!\U2|Add0~1\) # (!\U2|CH_CNT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CH_CNT\(4),
	datad => VCC,
	cin => \U2|Add0~1\,
	combout => \U2|Add0~2_combout\,
	cout => \U2|Add0~3\);

-- Location: FF_X81_Y59_N9
\U2|CH_CNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|U5|CH_EN~clkctrl_outclk\,
	d => \U2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CH_CNT\(4));

-- Location: LCCOMB_X81_Y59_N10
\U2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~4_combout\ = (\U2|CH_CNT\(5) & (\U2|Add0~3\ $ (GND))) # (!\U2|CH_CNT\(5) & (!\U2|Add0~3\ & VCC))
-- \U2|Add0~5\ = CARRY((\U2|CH_CNT\(5) & !\U2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CH_CNT\(5),
	datad => VCC,
	cin => \U2|Add0~3\,
	combout => \U2|Add0~4_combout\,
	cout => \U2|Add0~5\);

-- Location: FF_X81_Y59_N11
\U2|CH_CNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|U5|CH_EN~clkctrl_outclk\,
	d => \U2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CH_CNT\(5));

-- Location: LCCOMB_X81_Y59_N12
\U2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~6_combout\ = (\U2|CH_CNT\(6) & (!\U2|Add0~5\)) # (!\U2|CH_CNT\(6) & ((\U2|Add0~5\) # (GND)))
-- \U2|Add0~7\ = CARRY((!\U2|Add0~5\) # (!\U2|CH_CNT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CH_CNT\(6),
	datad => VCC,
	cin => \U2|Add0~5\,
	combout => \U2|Add0~6_combout\,
	cout => \U2|Add0~7\);

-- Location: FF_X81_Y59_N13
\U2|CH_CNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|U5|CH_EN~clkctrl_outclk\,
	d => \U2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CH_CNT\(6));

-- Location: LCCOMB_X81_Y59_N14
\U2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~8_combout\ = (\U2|CH_CNT\(7) & (\U2|Add0~7\ $ (GND))) # (!\U2|CH_CNT\(7) & (!\U2|Add0~7\ & VCC))
-- \U2|Add0~9\ = CARRY((\U2|CH_CNT\(7) & !\U2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CH_CNT\(7),
	datad => VCC,
	cin => \U2|Add0~7\,
	combout => \U2|Add0~8_combout\,
	cout => \U2|Add0~9\);

-- Location: FF_X81_Y59_N15
\U2|CH_CNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|U5|CH_EN~clkctrl_outclk\,
	d => \U2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CH_CNT\(7));

-- Location: LCCOMB_X81_Y59_N16
\U2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~10_combout\ = (\U2|CH_CNT\(8) & (!\U2|Add0~9\)) # (!\U2|CH_CNT\(8) & ((\U2|Add0~9\) # (GND)))
-- \U2|Add0~11\ = CARRY((!\U2|Add0~9\) # (!\U2|CH_CNT\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CH_CNT\(8),
	datad => VCC,
	cin => \U2|Add0~9\,
	combout => \U2|Add0~10_combout\,
	cout => \U2|Add0~11\);

-- Location: FF_X81_Y59_N17
\U2|CH_CNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|U5|CH_EN~clkctrl_outclk\,
	d => \U2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CH_CNT\(8));

-- Location: LCCOMB_X81_Y59_N18
\U2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~12_combout\ = (\U2|CH_CNT\(9) & (\U2|Add0~11\ $ (GND))) # (!\U2|CH_CNT\(9) & (!\U2|Add0~11\ & VCC))
-- \U2|Add0~13\ = CARRY((\U2|CH_CNT\(9) & !\U2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CH_CNT\(9),
	datad => VCC,
	cin => \U2|Add0~11\,
	combout => \U2|Add0~12_combout\,
	cout => \U2|Add0~13\);

-- Location: FF_X81_Y59_N19
\U2|CH_CNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|U5|CH_EN~clkctrl_outclk\,
	d => \U2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CH_CNT\(9));

-- Location: LCCOMB_X81_Y59_N20
\U2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~14_combout\ = (\U2|CH_CNT\(10) & (!\U2|Add0~13\)) # (!\U2|CH_CNT\(10) & ((\U2|Add0~13\) # (GND)))
-- \U2|Add0~15\ = CARRY((!\U2|Add0~13\) # (!\U2|CH_CNT\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CH_CNT\(10),
	datad => VCC,
	cin => \U2|Add0~13\,
	combout => \U2|Add0~14_combout\,
	cout => \U2|Add0~15\);

-- Location: FF_X81_Y59_N21
\U2|CH_CNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|U5|CH_EN~clkctrl_outclk\,
	d => \U2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CH_CNT\(10));

-- Location: LCCOMB_X81_Y59_N22
\U2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~16_combout\ = \U2|CH_CNT\(11) $ (!\U2|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CH_CNT\(11),
	cin => \U2|Add0~15\,
	combout => \U2|Add0~16_combout\);

-- Location: LCCOMB_X81_Y59_N0
\U2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal0~1_combout\ = (\U2|CH_CNT\(9) & (\U2|CH_CNT\(10) & (\U2|CH_CNT\(7) & \U2|CH_CNT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CH_CNT\(9),
	datab => \U2|CH_CNT\(10),
	datac => \U2|CH_CNT\(7),
	datad => \U2|CH_CNT\(8),
	combout => \U2|Equal0~1_combout\);

-- Location: LCCOMB_X81_Y59_N2
\U2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = (\U2|CH_CNT\(6) & (\U2|CH_CNT\(3) & (\U2|CH_CNT\(4) & \U2|CH_CNT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CH_CNT\(6),
	datab => \U2|CH_CNT\(3),
	datac => \U2|CH_CNT\(4),
	datad => \U2|CH_CNT\(5),
	combout => \U2|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y59_N4
\U2|CH_CNT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CH_CNT~0_combout\ = (\U2|Add0~16_combout\ & (((\U2|CH_CNT\(11)) # (!\U2|Equal0~0_combout\)) # (!\U2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~16_combout\,
	datab => \U2|Equal0~1_combout\,
	datac => \U2|CH_CNT\(11),
	datad => \U2|Equal0~0_combout\,
	combout => \U2|CH_CNT~0_combout\);

-- Location: FF_X81_Y59_N5
\U2|CH_CNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|U5|CH_EN~clkctrl_outclk\,
	d => \U2|CH_CNT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CH_CNT\(11));

-- Location: LCCOMB_X80_Y59_N2
\U2|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~0_combout\ = (\U2|Add1~0_combout\ & (\U2|CH_CNT\(3) & VCC)) # (!\U2|Add1~0_combout\ & (\U2|CH_CNT\(3) $ (VCC)))
-- \U2|Add2~1\ = CARRY((!\U2|Add1~0_combout\ & \U2|CH_CNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~0_combout\,
	datab => \U2|CH_CNT\(3),
	datad => VCC,
	combout => \U2|Add2~0_combout\,
	cout => \U2|Add2~1\);

-- Location: LCCOMB_X80_Y59_N4
\U2|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~3_combout\ = (\U2|CH_CNT\(4) & (!\U2|Add2~1\)) # (!\U2|CH_CNT\(4) & ((\U2|Add2~1\) # (GND)))
-- \U2|Add2~4\ = CARRY((!\U2|Add2~1\) # (!\U2|CH_CNT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CH_CNT\(4),
	datad => VCC,
	cin => \U2|Add2~1\,
	combout => \U2|Add2~3_combout\,
	cout => \U2|Add2~4\);

-- Location: LCCOMB_X80_Y59_N6
\U2|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~6_combout\ = (\U2|CH_CNT\(5) & (\U2|Add2~4\ $ (GND))) # (!\U2|CH_CNT\(5) & (!\U2|Add2~4\ & VCC))
-- \U2|Add2~7\ = CARRY((\U2|CH_CNT\(5) & !\U2|Add2~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CH_CNT\(5),
	datad => VCC,
	cin => \U2|Add2~4\,
	combout => \U2|Add2~6_combout\,
	cout => \U2|Add2~7\);

-- Location: LCCOMB_X80_Y59_N8
\U2|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~9_combout\ = (\U2|CH_CNT\(6) & (!\U2|Add2~7\)) # (!\U2|CH_CNT\(6) & ((\U2|Add2~7\) # (GND)))
-- \U2|Add2~10\ = CARRY((!\U2|Add2~7\) # (!\U2|CH_CNT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CH_CNT\(6),
	datad => VCC,
	cin => \U2|Add2~7\,
	combout => \U2|Add2~9_combout\,
	cout => \U2|Add2~10\);

-- Location: LCCOMB_X80_Y59_N10
\U2|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~12_combout\ = (\U2|CH_CNT\(7) & (\U2|Add2~10\ $ (GND))) # (!\U2|CH_CNT\(7) & (!\U2|Add2~10\ & VCC))
-- \U2|Add2~13\ = CARRY((\U2|CH_CNT\(7) & !\U2|Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CH_CNT\(7),
	datad => VCC,
	cin => \U2|Add2~10\,
	combout => \U2|Add2~12_combout\,
	cout => \U2|Add2~13\);

-- Location: LCCOMB_X80_Y59_N12
\U2|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~15_combout\ = (\U2|CH_CNT\(8) & (!\U2|Add2~13\)) # (!\U2|CH_CNT\(8) & ((\U2|Add2~13\) # (GND)))
-- \U2|Add2~16\ = CARRY((!\U2|Add2~13\) # (!\U2|CH_CNT\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CH_CNT\(8),
	datad => VCC,
	cin => \U2|Add2~13\,
	combout => \U2|Add2~15_combout\,
	cout => \U2|Add2~16\);

-- Location: LCCOMB_X80_Y59_N14
\U2|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~18_combout\ = (\U2|CH_CNT\(9) & (\U2|Add2~16\ $ (GND))) # (!\U2|CH_CNT\(9) & (!\U2|Add2~16\ & VCC))
-- \U2|Add2~19\ = CARRY((\U2|CH_CNT\(9) & !\U2|Add2~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CH_CNT\(9),
	datad => VCC,
	cin => \U2|Add2~16\,
	combout => \U2|Add2~18_combout\,
	cout => \U2|Add2~19\);

-- Location: LCCOMB_X80_Y59_N16
\U2|Add2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~21_combout\ = (\U2|CH_CNT\(10) & (!\U2|Add2~19\)) # (!\U2|CH_CNT\(10) & ((\U2|Add2~19\) # (GND)))
-- \U2|Add2~22\ = CARRY((!\U2|Add2~19\) # (!\U2|CH_CNT\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CH_CNT\(10),
	datad => VCC,
	cin => \U2|Add2~19\,
	combout => \U2|Add2~21_combout\,
	cout => \U2|Add2~22\);

-- Location: LCCOMB_X80_Y59_N18
\U2|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~24_combout\ = \U2|Add2~22\ $ (!\U2|CH_CNT\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|CH_CNT\(11),
	cin => \U2|Add2~22\,
	combout => \U2|Add2~24_combout\);

-- Location: LCCOMB_X79_Y59_N30
\U2|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~26_combout\ = (\U2|Add2~24_combout\ & (((!\U2|Equal1~2_combout\) # (!\U2|Equal1~1_combout\)) # (!\U2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|Add2~24_combout\,
	datac => \U2|Equal1~1_combout\,
	datad => \U2|Equal1~2_combout\,
	combout => \U2|Add2~26_combout\);

-- Location: LCCOMB_X79_Y59_N12
\U2|ADDR_FPGAWR[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(11) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((\U2|Add2~26_combout\))) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|ADDR_FPGAWR\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ADDR_FPGAWR\(11),
	datac => \U2|Add2~26_combout\,
	datad => \U2|WREN_A~clkctrl_outclk\,
	combout => \U2|ADDR_FPGAWR\(11));

-- Location: LCCOMB_X79_Y59_N8
\U2|Add2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~23_combout\ = (\U2|Add2~21_combout\ & (((!\U2|Equal1~1_combout\) # (!\U2|Equal1~2_combout\)) # (!\U2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|Equal1~2_combout\,
	datac => \U2|Equal1~1_combout\,
	datad => \U2|Add2~21_combout\,
	combout => \U2|Add2~23_combout\);

-- Location: LCCOMB_X79_Y59_N6
\U2|ADDR_FPGAWR[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(10) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((\U2|Add2~23_combout\))) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|ADDR_FPGAWR\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ADDR_FPGAWR\(10),
	datac => \U2|Add2~23_combout\,
	datad => \U2|WREN_A~clkctrl_outclk\,
	combout => \U2|ADDR_FPGAWR\(10));

-- Location: LCCOMB_X77_Y59_N6
\U2|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~20_combout\ = (\U2|Add2~18_combout\ & (((!\U2|Equal1~1_combout\) # (!\U2|Equal1~2_combout\)) # (!\U2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|Equal1~2_combout\,
	datac => \U2|Add2~18_combout\,
	datad => \U2|Equal1~1_combout\,
	combout => \U2|Add2~20_combout\);

-- Location: LCCOMB_X77_Y59_N24
\U2|ADDR_FPGAWR[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(9) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((\U2|Add2~20_combout\))) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|ADDR_FPGAWR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|ADDR_FPGAWR\(9),
	datac => \U2|WREN_A~clkctrl_outclk\,
	datad => \U2|Add2~20_combout\,
	combout => \U2|ADDR_FPGAWR\(9));

-- Location: LCCOMB_X77_Y58_N24
\U2|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~5_combout\ = (\U2|Add2~3_combout\ & (((!\U2|Equal1~0_combout\) # (!\U2|Equal1~1_combout\)) # (!\U2|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~2_combout\,
	datab => \U2|Equal1~1_combout\,
	datac => \U2|Equal1~0_combout\,
	datad => \U2|Add2~3_combout\,
	combout => \U2|Add2~5_combout\);

-- Location: LCCOMB_X77_Y58_N28
\U2|ADDR_FPGAWR[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(4) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((\U2|Add2~5_combout\))) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|ADDR_FPGAWR\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|ADDR_FPGAWR\(4),
	datac => \U2|WREN_A~clkctrl_outclk\,
	datad => \U2|Add2~5_combout\,
	combout => \U2|ADDR_FPGAWR\(4));

-- Location: LCCOMB_X77_Y59_N28
\U2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal1~2_combout\ = (!\U2|ADDR_FPGAWR\(11) & (\U2|ADDR_FPGAWR\(10) & (\U2|ADDR_FPGAWR\(9) & \U2|ADDR_FPGAWR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ADDR_FPGAWR\(11),
	datab => \U2|ADDR_FPGAWR\(10),
	datac => \U2|ADDR_FPGAWR\(9),
	datad => \U2|ADDR_FPGAWR\(4),
	combout => \U2|Equal1~2_combout\);

-- Location: LCCOMB_X77_Y59_N26
\U2|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~17_combout\ = (\U2|Add2~15_combout\ & (((!\U2|Equal1~1_combout\) # (!\U2|Equal1~2_combout\)) # (!\U2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|Equal1~2_combout\,
	datac => \U2|Equal1~1_combout\,
	datad => \U2|Add2~15_combout\,
	combout => \U2|Add2~17_combout\);

-- Location: LCCOMB_X77_Y59_N18
\U2|ADDR_FPGAWR[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(8) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((\U2|Add2~17_combout\))) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|ADDR_FPGAWR\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|ADDR_FPGAWR\(8),
	datac => \U2|Add2~17_combout\,
	datad => \U2|WREN_A~clkctrl_outclk\,
	combout => \U2|ADDR_FPGAWR\(8));

-- Location: LCCOMB_X77_Y58_N2
\U2|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~8_combout\ = (\U2|Add2~6_combout\ & (((!\U2|Equal1~0_combout\) # (!\U2|Equal1~1_combout\)) # (!\U2|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~2_combout\,
	datab => \U2|Equal1~1_combout\,
	datac => \U2|Equal1~0_combout\,
	datad => \U2|Add2~6_combout\,
	combout => \U2|Add2~8_combout\);

-- Location: LCCOMB_X77_Y58_N10
\U2|ADDR_FPGAWR[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(5) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((\U2|Add2~8_combout\))) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|ADDR_FPGAWR\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ADDR_FPGAWR\(5),
	datac => \U2|WREN_A~clkctrl_outclk\,
	datad => \U2|Add2~8_combout\,
	combout => \U2|ADDR_FPGAWR\(5));

-- Location: LCCOMB_X79_Y59_N26
\U2|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~11_combout\ = (\U2|Add2~9_combout\ & (((!\U2|Equal1~2_combout\) # (!\U2|Equal1~1_combout\)) # (!\U2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|Add2~9_combout\,
	datac => \U2|Equal1~1_combout\,
	datad => \U2|Equal1~2_combout\,
	combout => \U2|Add2~11_combout\);

-- Location: LCCOMB_X79_Y59_N16
\U2|ADDR_FPGAWR[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(6) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((\U2|Add2~11_combout\))) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|ADDR_FPGAWR\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WREN_A~clkctrl_outclk\,
	datab => \U2|ADDR_FPGAWR\(6),
	datad => \U2|Add2~11_combout\,
	combout => \U2|ADDR_FPGAWR\(6));

-- Location: LCCOMB_X80_Y59_N30
\U2|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~14_combout\ = (\U2|Add2~12_combout\ & (((!\U2|Equal1~0_combout\) # (!\U2|Equal1~2_combout\)) # (!\U2|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~1_combout\,
	datab => \U2|Equal1~2_combout\,
	datac => \U2|Equal1~0_combout\,
	datad => \U2|Add2~12_combout\,
	combout => \U2|Add2~14_combout\);

-- Location: LCCOMB_X79_Y58_N0
\U2|ADDR_FPGAWR[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(7) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((\U2|Add2~14_combout\))) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|ADDR_FPGAWR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|ADDR_FPGAWR\(7),
	datac => \U2|Add2~14_combout\,
	datad => \U2|WREN_A~clkctrl_outclk\,
	combout => \U2|ADDR_FPGAWR\(7));

-- Location: LCCOMB_X77_Y59_N4
\U2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal1~1_combout\ = (\U2|ADDR_FPGAWR\(8) & (\U2|ADDR_FPGAWR\(5) & (\U2|ADDR_FPGAWR\(6) & \U2|ADDR_FPGAWR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ADDR_FPGAWR\(8),
	datab => \U2|ADDR_FPGAWR\(5),
	datac => \U2|ADDR_FPGAWR\(6),
	datad => \U2|ADDR_FPGAWR\(7),
	combout => \U2|Equal1~1_combout\);

-- Location: LCCOMB_X77_Y58_N4
\U2|ADDR_FPGAWR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR~1_combout\ = (\U2|Add1~1_combout\) # ((\U2|Equal1~1_combout\ & (\U2|Equal1~0_combout\ & \U2|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~1_combout\,
	datab => \U2|Add1~1_combout\,
	datac => \U2|Equal1~0_combout\,
	datad => \U2|Equal1~2_combout\,
	combout => \U2|ADDR_FPGAWR~1_combout\);

-- Location: LCCOMB_X77_Y58_N6
\U2|ADDR_FPGAWR[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(1) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((!\U2|ADDR_FPGAWR~1_combout\))) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|ADDR_FPGAWR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ADDR_FPGAWR\(1),
	datac => \U2|ADDR_FPGAWR~1_combout\,
	datad => \U2|WREN_A~clkctrl_outclk\,
	combout => \U2|ADDR_FPGAWR\(1));

-- Location: LCCOMB_X77_Y58_N22
\U2|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~2_combout\ = (\U2|Add2~0_combout\ & (((!\U2|Equal1~2_combout\) # (!\U2|Equal1~0_combout\)) # (!\U2|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~1_combout\,
	datab => \U2|Add2~0_combout\,
	datac => \U2|Equal1~0_combout\,
	datad => \U2|Equal1~2_combout\,
	combout => \U2|Add2~2_combout\);

-- Location: LCCOMB_X77_Y58_N18
\U2|ADDR_FPGAWR[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(3) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|Add2~2_combout\)) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((\U2|ADDR_FPGAWR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~2_combout\,
	datab => \U2|ADDR_FPGAWR\(3),
	datad => \U2|WREN_A~clkctrl_outclk\,
	combout => \U2|ADDR_FPGAWR\(3));

-- Location: LCCOMB_X80_Y59_N20
\U2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add1~2_combout\ = \U5|U3|CQI\(2) $ (((\U5|U3|CQI\(1)) # (\U5|U3|CQI\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U3|CQI\(1),
	datab => \U5|U3|CQI\(2),
	datac => \U5|U3|CQI\(0),
	combout => \U2|Add1~2_combout\);

-- Location: LCCOMB_X76_Y58_N6
\U2|ADDR_FPGAWR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR~2_combout\ = (\U2|Add1~2_combout\) # ((\U2|Equal1~1_combout\ & (\U2|Equal1~0_combout\ & \U2|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~1_combout\,
	datab => \U2|Add1~2_combout\,
	datac => \U2|Equal1~0_combout\,
	datad => \U2|Equal1~2_combout\,
	combout => \U2|ADDR_FPGAWR~2_combout\);

-- Location: LCCOMB_X77_Y58_N20
\U2|ADDR_FPGAWR[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(2) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (!\U2|ADDR_FPGAWR~2_combout\)) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((\U2|ADDR_FPGAWR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|ADDR_FPGAWR~2_combout\,
	datac => \U2|ADDR_FPGAWR\(2),
	datad => \U2|WREN_A~clkctrl_outclk\,
	combout => \U2|ADDR_FPGAWR\(2));

-- Location: LCCOMB_X76_Y58_N0
\U2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal1~0_combout\ = (\U2|ADDR_FPGAWR\(1) & (\U2|ADDR_FPGAWR\(3) & (\U2|ADDR_FPGAWR\(2) & \U2|ADDR_FPGAWR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ADDR_FPGAWR\(1),
	datab => \U2|ADDR_FPGAWR\(3),
	datac => \U2|ADDR_FPGAWR\(2),
	datad => \U2|ADDR_FPGAWR\(0),
	combout => \U2|Equal1~0_combout\);

-- Location: LCCOMB_X79_Y59_N20
\U2|ADDR_FPGAWR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR~0_combout\ = (\U5|U3|CQI\(0)) # ((\U2|Equal1~0_combout\ & (\U2|Equal1~2_combout\ & \U2|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U5|U3|CQI\(0),
	datac => \U2|Equal1~2_combout\,
	datad => \U2|Equal1~1_combout\,
	combout => \U2|ADDR_FPGAWR~0_combout\);

-- Location: LCCOMB_X77_Y58_N12
\U2|ADDR_FPGAWR[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDR_FPGAWR\(0) = (GLOBAL(\U2|WREN_A~clkctrl_outclk\) & ((!\U2|ADDR_FPGAWR~0_combout\))) # (!GLOBAL(\U2|WREN_A~clkctrl_outclk\) & (\U2|ADDR_FPGAWR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ADDR_FPGAWR\(0),
	datac => \U2|WREN_A~clkctrl_outclk\,
	datad => \U2|ADDR_FPGAWR~0_combout\,
	combout => \U2|ADDR_FPGAWR\(0));

-- Location: LCCOMB_X77_Y58_N0
\U2|ADDRESS_A[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[0]~0_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(0))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(0)))) # (!\XRD~input_o\ & (\XA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[0]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(0),
	combout => \U2|ADDRESS_A[0]~0_combout\);

-- Location: IOIBUF_X58_Y73_N22
\XA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(1),
	o => \XA[1]~input_o\);

-- Location: LCCOMB_X77_Y58_N14
\U2|ADDRESS_A[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[1]~1_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(1))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(1)))) # (!\XRD~input_o\ & (\XA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[1]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(1),
	combout => \U2|ADDRESS_A[1]~1_combout\);

-- Location: IOIBUF_X115_Y51_N8
\XA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(2),
	o => \XA[2]~input_o\);

-- Location: LCCOMB_X77_Y58_N16
\U2|ADDRESS_A[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[2]~2_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(2))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(2)))) # (!\XRD~input_o\ & (\XA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[2]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(2),
	combout => \U2|ADDRESS_A[2]~2_combout\);

-- Location: IOIBUF_X115_Y51_N1
\XA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(3),
	o => \XA[3]~input_o\);

-- Location: LCCOMB_X77_Y58_N26
\U2|ADDRESS_A[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[3]~3_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(3))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(3)))) # (!\XRD~input_o\ & (\XA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[3]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(3),
	combout => \U2|ADDRESS_A[3]~3_combout\);

-- Location: IOIBUF_X115_Y53_N15
\XA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(4),
	o => \XA[4]~input_o\);

-- Location: LCCOMB_X77_Y58_N8
\U2|ADDRESS_A[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[4]~4_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(4))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(4)))) # (!\XRD~input_o\ & (\XA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[4]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(4),
	combout => \U2|ADDRESS_A[4]~4_combout\);

-- Location: IOIBUF_X102_Y73_N8
\XA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(5),
	o => \XA[5]~input_o\);

-- Location: LCCOMB_X77_Y58_N30
\U2|ADDRESS_A[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[5]~5_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(5))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(5)))) # (!\XRD~input_o\ & (\XA[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[5]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(5),
	combout => \U2|ADDRESS_A[5]~5_combout\);

-- Location: IOIBUF_X89_Y73_N15
\XA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(6),
	o => \XA[6]~input_o\);

-- Location: LCCOMB_X79_Y59_N10
\U2|ADDRESS_A[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[6]~6_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(6))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(6)))) # (!\XRD~input_o\ & (\XA[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[6]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(6),
	combout => \U2|ADDRESS_A[6]~6_combout\);

-- Location: IOIBUF_X60_Y73_N8
\XA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(7),
	o => \XA[7]~input_o\);

-- Location: LCCOMB_X79_Y58_N4
\U2|ADDRESS_A[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[7]~7_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(7))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(7)))) # (!\XRD~input_o\ & (\XA[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XA[7]~input_o\,
	datab => \XZCS_7~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(7),
	combout => \U2|ADDRESS_A[7]~7_combout\);

-- Location: IOIBUF_X115_Y52_N1
\XA[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(8),
	o => \XA[8]~input_o\);

-- Location: LCCOMB_X77_Y59_N0
\U2|ADDRESS_A[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[8]~8_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(8))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(8)))) # (!\XRD~input_o\ & (\XA[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[8]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(8),
	combout => \U2|ADDRESS_A[8]~8_combout\);

-- Location: IOIBUF_X38_Y73_N8
\XA[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(9),
	o => \XA[9]~input_o\);

-- Location: LCCOMB_X77_Y59_N30
\U2|ADDRESS_A[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[9]~9_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(9))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(9)))) # (!\XRD~input_o\ & (\XA[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[9]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(9),
	combout => \U2|ADDRESS_A[9]~9_combout\);

-- Location: IOIBUF_X115_Y55_N22
\XA[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(10),
	o => \XA[10]~input_o\);

-- Location: LCCOMB_X79_Y59_N24
\U2|ADDRESS_A[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[10]~10_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(10))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(10)))) # (!\XRD~input_o\ & (\XA[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[10]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(10),
	combout => \U2|ADDRESS_A[10]~10_combout\);

-- Location: IOIBUF_X54_Y73_N1
\XA[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XA(11),
	o => \XA[11]~input_o\);

-- Location: LCCOMB_X79_Y59_N14
\U2|ADDRESS_A[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|ADDRESS_A[11]~11_combout\ = (\XZCS_7~input_o\ & (((\U2|ADDR_FPGAWR\(11))))) # (!\XZCS_7~input_o\ & ((\XRD~input_o\ & ((\U2|ADDR_FPGAWR\(11)))) # (!\XRD~input_o\ & (\XA[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XZCS_7~input_o\,
	datab => \XA[11]~input_o\,
	datac => \XRD~input_o\,
	datad => \U2|ADDR_FPGAWR\(11),
	combout => \U2|ADDRESS_A[11]~11_combout\);

-- Location: IOIBUF_X85_Y73_N8
\XD[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(0),
	o => \XD[0]~input_o\);

-- Location: LCCOMB_X79_Y56_N22
\U1|DATA_B[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[0]~0_combout\ = (\XWE~input_o\) # ((\XD[0]~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XWE~input_o\,
	datac => \XD[0]~input_o\,
	datad => \XRD~input_o\,
	combout => \U1|DATA_B[0]~0_combout\);

-- Location: CLKCTRL_G14
\U3|WREN_B~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U3|WREN_B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U3|WREN_B~clkctrl_outclk\);

-- Location: LCCOMB_X80_Y58_N6
\U3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~0_combout\ = \U3|ADDR_FPGARE\(0) $ (VCC)
-- \U3|Add0~1\ = CARRY(\U3|ADDR_FPGARE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(0),
	datad => VCC,
	combout => \U3|Add0~0_combout\,
	cout => \U3|Add0~1\);

-- Location: FF_X80_Y58_N7
\U3|ADDR_FPGARE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	d => \U3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(0));

-- Location: LCCOMB_X79_Y58_N12
\U3|ADDRESS_B[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[0]~0_combout\ = (\U3|WREN_B~combout\ & (\XA[0]~input_o\)) # (!\U3|WREN_B~combout\ & ((\U3|ADDR_FPGARE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XA[0]~input_o\,
	datac => \U3|WREN_B~combout\,
	datad => \U3|ADDR_FPGARE\(0),
	combout => \U3|ADDRESS_B[0]~0_combout\);

-- Location: LCCOMB_X80_Y58_N8
\U3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~2_combout\ = (\U3|ADDR_FPGARE\(1) & (!\U3|Add0~1\)) # (!\U3|ADDR_FPGARE\(1) & ((\U3|Add0~1\) # (GND)))
-- \U3|Add0~3\ = CARRY((!\U3|Add0~1\) # (!\U3|ADDR_FPGARE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|ADDR_FPGARE\(1),
	datad => VCC,
	cin => \U3|Add0~1\,
	combout => \U3|Add0~2_combout\,
	cout => \U3|Add0~3\);

-- Location: FF_X80_Y58_N9
\U3|ADDR_FPGARE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	d => \U3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(1));

-- Location: LCCOMB_X79_Y58_N24
\U3|ADDRESS_B[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[1]~1_combout\ = (\U3|WREN_B~combout\ & (\XA[1]~input_o\)) # (!\U3|WREN_B~combout\ & ((\U3|ADDR_FPGARE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XA[1]~input_o\,
	datac => \U3|ADDR_FPGARE\(1),
	datad => \U3|WREN_B~combout\,
	combout => \U3|ADDRESS_B[1]~1_combout\);

-- Location: LCCOMB_X80_Y58_N10
\U3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~4_combout\ = (\U3|ADDR_FPGARE\(2) & (\U3|Add0~3\ $ (GND))) # (!\U3|ADDR_FPGARE\(2) & (!\U3|Add0~3\ & VCC))
-- \U3|Add0~5\ = CARRY((\U3|ADDR_FPGARE\(2) & !\U3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(2),
	datad => VCC,
	cin => \U3|Add0~3\,
	combout => \U3|Add0~4_combout\,
	cout => \U3|Add0~5\);

-- Location: FF_X80_Y58_N11
\U3|ADDR_FPGARE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	d => \U3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(2));

-- Location: LCCOMB_X79_Y58_N10
\U3|ADDRESS_B[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[2]~2_combout\ = (\U3|WREN_B~combout\ & (\XA[2]~input_o\)) # (!\U3|WREN_B~combout\ & ((\U3|ADDR_FPGARE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XA[2]~input_o\,
	datac => \U3|ADDR_FPGARE\(2),
	datad => \U3|WREN_B~combout\,
	combout => \U3|ADDRESS_B[2]~2_combout\);

-- Location: LCCOMB_X80_Y58_N12
\U3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~6_combout\ = (\U3|ADDR_FPGARE\(3) & (!\U3|Add0~5\)) # (!\U3|ADDR_FPGARE\(3) & ((\U3|Add0~5\) # (GND)))
-- \U3|Add0~7\ = CARRY((!\U3|Add0~5\) # (!\U3|ADDR_FPGARE\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|ADDR_FPGARE\(3),
	datad => VCC,
	cin => \U3|Add0~5\,
	combout => \U3|Add0~6_combout\,
	cout => \U3|Add0~7\);

-- Location: FF_X79_Y58_N7
\U3|ADDR_FPGARE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	asdata => \U3|Add0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(3));

-- Location: LCCOMB_X79_Y58_N16
\U3|ADDRESS_B[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[3]~3_combout\ = (\U3|WREN_B~combout\ & ((\XA[3]~input_o\))) # (!\U3|WREN_B~combout\ & (\U3|ADDR_FPGARE\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(3),
	datab => \XA[3]~input_o\,
	datad => \U3|WREN_B~combout\,
	combout => \U3|ADDRESS_B[3]~3_combout\);

-- Location: LCCOMB_X80_Y58_N14
\U3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~8_combout\ = (\U3|ADDR_FPGARE\(4) & (\U3|Add0~7\ $ (GND))) # (!\U3|ADDR_FPGARE\(4) & (!\U3|Add0~7\ & VCC))
-- \U3|Add0~9\ = CARRY((\U3|ADDR_FPGARE\(4) & !\U3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(4),
	datad => VCC,
	cin => \U3|Add0~7\,
	combout => \U3|Add0~8_combout\,
	cout => \U3|Add0~9\);

-- Location: FF_X79_Y58_N17
\U3|ADDR_FPGARE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	asdata => \U3|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(4));

-- Location: LCCOMB_X79_Y58_N26
\U3|ADDRESS_B[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[4]~4_combout\ = (\U3|WREN_B~combout\ & (\XA[4]~input_o\)) # (!\U3|WREN_B~combout\ & ((\U3|ADDR_FPGARE\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XA[4]~input_o\,
	datab => \U3|WREN_B~combout\,
	datad => \U3|ADDR_FPGARE\(4),
	combout => \U3|ADDRESS_B[4]~4_combout\);

-- Location: LCCOMB_X80_Y58_N16
\U3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~10_combout\ = (\U3|ADDR_FPGARE\(5) & (!\U3|Add0~9\)) # (!\U3|ADDR_FPGARE\(5) & ((\U3|Add0~9\) # (GND)))
-- \U3|Add0~11\ = CARRY((!\U3|Add0~9\) # (!\U3|ADDR_FPGARE\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|ADDR_FPGARE\(5),
	datad => VCC,
	cin => \U3|Add0~9\,
	combout => \U3|Add0~10_combout\,
	cout => \U3|Add0~11\);

-- Location: FF_X79_Y58_N29
\U3|ADDR_FPGARE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	asdata => \U3|Add0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(5));

-- Location: LCCOMB_X79_Y58_N22
\U3|ADDRESS_B[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[5]~5_combout\ = (\U3|WREN_B~combout\ & (\XA[5]~input_o\)) # (!\U3|WREN_B~combout\ & ((\U3|ADDR_FPGARE\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XA[5]~input_o\,
	datab => \U3|ADDR_FPGARE\(5),
	datad => \U3|WREN_B~combout\,
	combout => \U3|ADDRESS_B[5]~5_combout\);

-- Location: LCCOMB_X80_Y58_N18
\U3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~12_combout\ = (\U3|ADDR_FPGARE\(6) & (\U3|Add0~11\ $ (GND))) # (!\U3|ADDR_FPGARE\(6) & (!\U3|Add0~11\ & VCC))
-- \U3|Add0~13\ = CARRY((\U3|ADDR_FPGARE\(6) & !\U3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|ADDR_FPGARE\(6),
	datad => VCC,
	cin => \U3|Add0~11\,
	combout => \U3|Add0~12_combout\,
	cout => \U3|Add0~13\);

-- Location: FF_X79_Y58_N23
\U3|ADDR_FPGARE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	asdata => \U3|Add0~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(6));

-- Location: LCCOMB_X79_Y58_N14
\U3|ADDRESS_B[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[6]~6_combout\ = (\U3|WREN_B~combout\ & ((\XA[6]~input_o\))) # (!\U3|WREN_B~combout\ & (\U3|ADDR_FPGARE\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(6),
	datab => \XA[6]~input_o\,
	datad => \U3|WREN_B~combout\,
	combout => \U3|ADDRESS_B[6]~6_combout\);

-- Location: LCCOMB_X80_Y58_N20
\U3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~14_combout\ = (\U3|ADDR_FPGARE\(7) & (!\U3|Add0~13\)) # (!\U3|ADDR_FPGARE\(7) & ((\U3|Add0~13\) # (GND)))
-- \U3|Add0~15\ = CARRY((!\U3|Add0~13\) # (!\U3|ADDR_FPGARE\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(7),
	datad => VCC,
	cin => \U3|Add0~13\,
	combout => \U3|Add0~14_combout\,
	cout => \U3|Add0~15\);

-- Location: FF_X79_Y58_N15
\U3|ADDR_FPGARE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	asdata => \U3|Add0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(7));

-- Location: LCCOMB_X79_Y58_N30
\U3|ADDRESS_B[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[7]~7_combout\ = (\U3|WREN_B~combout\ & (\XA[7]~input_o\)) # (!\U3|WREN_B~combout\ & ((\U3|ADDR_FPGARE\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XA[7]~input_o\,
	datab => \U3|ADDR_FPGARE\(7),
	datad => \U3|WREN_B~combout\,
	combout => \U3|ADDRESS_B[7]~7_combout\);

-- Location: LCCOMB_X80_Y58_N22
\U3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~16_combout\ = (\U3|ADDR_FPGARE\(8) & (\U3|Add0~15\ $ (GND))) # (!\U3|ADDR_FPGARE\(8) & (!\U3|Add0~15\ & VCC))
-- \U3|Add0~17\ = CARRY((\U3|ADDR_FPGARE\(8) & !\U3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|ADDR_FPGARE\(8),
	datad => VCC,
	cin => \U3|Add0~15\,
	combout => \U3|Add0~16_combout\,
	cout => \U3|Add0~17\);

-- Location: FF_X79_Y58_N31
\U3|ADDR_FPGARE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	asdata => \U3|Add0~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(8));

-- Location: LCCOMB_X79_Y58_N28
\U3|ADDRESS_B[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[8]~8_combout\ = (\U3|WREN_B~combout\ & ((\XA[8]~input_o\))) # (!\U3|WREN_B~combout\ & (\U3|ADDR_FPGARE\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(8),
	datab => \XA[8]~input_o\,
	datad => \U3|WREN_B~combout\,
	combout => \U3|ADDRESS_B[8]~8_combout\);

-- Location: LCCOMB_X80_Y58_N24
\U3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~18_combout\ = (\U3|ADDR_FPGARE\(9) & (!\U3|Add0~17\)) # (!\U3|ADDR_FPGARE\(9) & ((\U3|Add0~17\) # (GND)))
-- \U3|Add0~19\ = CARRY((!\U3|Add0~17\) # (!\U3|ADDR_FPGARE\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(9),
	datad => VCC,
	cin => \U3|Add0~17\,
	combout => \U3|Add0~18_combout\,
	cout => \U3|Add0~19\);

-- Location: FF_X79_Y58_N27
\U3|ADDR_FPGARE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	asdata => \U3|Add0~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(9));

-- Location: LCCOMB_X79_Y58_N6
\U3|ADDRESS_B[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[9]~9_combout\ = (\U3|WREN_B~combout\ & (\XA[9]~input_o\)) # (!\U3|WREN_B~combout\ & ((\U3|ADDR_FPGARE\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XA[9]~input_o\,
	datab => \U3|ADDR_FPGARE\(9),
	datad => \U3|WREN_B~combout\,
	combout => \U3|ADDRESS_B[9]~9_combout\);

-- Location: LCCOMB_X80_Y58_N26
\U3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~20_combout\ = (\U3|ADDR_FPGARE\(10) & (\U3|Add0~19\ $ (GND))) # (!\U3|ADDR_FPGARE\(10) & (!\U3|Add0~19\ & VCC))
-- \U3|Add0~21\ = CARRY((\U3|ADDR_FPGARE\(10) & !\U3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|ADDR_FPGARE\(10),
	datad => VCC,
	cin => \U3|Add0~19\,
	combout => \U3|Add0~20_combout\,
	cout => \U3|Add0~21\);

-- Location: FF_X79_Y58_N19
\U3|ADDR_FPGARE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	asdata => \U3|Add0~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(10));

-- Location: LCCOMB_X79_Y58_N18
\U3|ADDRESS_B[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[10]~10_combout\ = (\U3|WREN_B~combout\ & (\XA[10]~input_o\)) # (!\U3|WREN_B~combout\ & ((\U3|ADDR_FPGARE\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XA[10]~input_o\,
	datac => \U3|ADDR_FPGARE\(10),
	datad => \U3|WREN_B~combout\,
	combout => \U3|ADDRESS_B[10]~10_combout\);

-- Location: LCCOMB_X80_Y58_N2
\U3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal0~0_combout\ = (\U3|ADDR_FPGARE\(9) & (\U3|ADDR_FPGARE\(8) & (!\U3|ADDR_FPGARE\(11) & \U3|ADDR_FPGARE\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(9),
	datab => \U3|ADDR_FPGARE\(8),
	datac => \U3|ADDR_FPGARE\(11),
	datad => \U3|ADDR_FPGARE\(10),
	combout => \U3|Equal0~0_combout\);

-- Location: LCCOMB_X80_Y58_N0
\U3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal0~1_combout\ = (\U3|ADDR_FPGARE\(4) & (\U3|ADDR_FPGARE\(5) & (\U3|ADDR_FPGARE\(7) & \U3|ADDR_FPGARE\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(4),
	datab => \U3|ADDR_FPGARE\(5),
	datac => \U3|ADDR_FPGARE\(7),
	datad => \U3|ADDR_FPGARE\(6),
	combout => \U3|Equal0~1_combout\);

-- Location: LCCOMB_X80_Y58_N30
\U3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal0~2_combout\ = (\U3|ADDR_FPGARE\(1) & (\U3|ADDR_FPGARE\(3) & (\U3|ADDR_FPGARE\(2) & \U3|ADDR_FPGARE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ADDR_FPGARE\(1),
	datab => \U3|ADDR_FPGARE\(3),
	datac => \U3|ADDR_FPGARE\(2),
	datad => \U3|ADDR_FPGARE\(0),
	combout => \U3|Equal0~2_combout\);

-- Location: LCCOMB_X80_Y58_N28
\U3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~22_combout\ = \U3|ADDR_FPGARE\(11) $ (!\U3|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|ADDR_FPGARE\(11),
	cin => \U3|Add0~21\,
	combout => \U3|Add0~22_combout\);

-- Location: LCCOMB_X80_Y58_N4
\U3|ADDR_FPGARE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDR_FPGARE~0_combout\ = \U3|Add0~22_combout\ $ ((((!\U3|Equal0~2_combout\) # (!\U3|Equal0~1_combout\)) # (!\U3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal0~0_combout\,
	datab => \U3|Equal0~1_combout\,
	datac => \U3|Equal0~2_combout\,
	datad => \U3|Add0~22_combout\,
	combout => \U3|ADDR_FPGARE~0_combout\);

-- Location: FF_X80_Y58_N5
\U3|ADDR_FPGARE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|ALT_INV_WREN_B~clkctrl_outclk\,
	d => \U3|ADDR_FPGARE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ADDR_FPGARE\(11));

-- Location: LCCOMB_X79_Y58_N2
\U3|ADDRESS_B[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ADDRESS_B[11]~11_combout\ = (\U3|WREN_B~combout\ & (\XA[11]~input_o\)) # (!\U3|WREN_B~combout\ & ((!\U3|ADDR_FPGARE\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XA[11]~input_o\,
	datac => \U3|WREN_B~combout\,
	datad => \U3|ADDR_FPGARE\(11),
	combout => \U3|ADDRESS_B[11]~11_combout\);

-- Location: IOIBUF_X115_Y52_N8
\INDATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(1),
	o => \INDATA[1]~input_o\);

-- Location: LCCOMB_X79_Y56_N0
\U5|U3|DATA[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[1]~feeder_combout\ = \INDATA[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[1]~input_o\,
	combout => \U5|U3|DATA[1]~feeder_combout\);

-- Location: FF_X79_Y56_N1
\U5|U3|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[1]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(1));

-- Location: IOIBUF_X89_Y73_N22
\XD[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(1),
	o => \XD[1]~input_o\);

-- Location: LCCOMB_X79_Y56_N10
\U1|DATA_B[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[1]~1_combout\ = (\XD[1]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XD[1]~input_o\,
	datab => \XWE~input_o\,
	datad => \XRD~input_o\,
	combout => \U1|DATA_B[1]~1_combout\);

-- Location: M9K_X78_Y56_N0
\U4|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_2_PORT:U4|altsyncram:altsyncram_component|altsyncram_auq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|WREN_A~combout\,
	portare => \U2|RDEN_A~combout\,
	portbwe => \U3|WREN_B~combout\,
	portbre => \U3|RDEN_B~combout\,
	clk0 => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X79_Y72_N24
\U1|XD~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|XD~16_combout\ = (!\XRD~input_o\ & \XWE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XRD~input_o\,
	datad => \XWE~input_o\,
	combout => \U1|XD~16_combout\);

-- Location: IOIBUF_X115_Y46_N8
\INDATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(2),
	o => \INDATA[2]~input_o\);

-- Location: LCCOMB_X79_Y57_N24
\U5|U3|DATA[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[2]~feeder_combout\ = \INDATA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[2]~input_o\,
	combout => \U5|U3|DATA[2]~feeder_combout\);

-- Location: FF_X79_Y57_N25
\U5|U3|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[2]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(2));

-- Location: IOIBUF_X87_Y73_N22
\XD[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(2),
	o => \XD[2]~input_o\);

-- Location: LCCOMB_X79_Y57_N6
\U1|DATA_B[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[2]~2_combout\ = (\XD[2]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XD[2]~input_o\,
	datac => \XWE~input_o\,
	datad => \XRD~input_o\,
	combout => \U1|DATA_B[2]~2_combout\);

-- Location: IOIBUF_X52_Y73_N1
\INDATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(3),
	o => \INDATA[3]~input_o\);

-- Location: LCCOMB_X79_Y57_N4
\U5|U3|DATA[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[3]~feeder_combout\ = \INDATA[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[3]~input_o\,
	combout => \U5|U3|DATA[3]~feeder_combout\);

-- Location: FF_X79_Y57_N5
\U5|U3|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[3]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(3));

-- Location: IOIBUF_X79_Y73_N8
\XD[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(3),
	o => \XD[3]~input_o\);

-- Location: LCCOMB_X79_Y57_N22
\U1|DATA_B[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[3]~3_combout\ = (\XD[3]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XD[3]~input_o\,
	datac => \XWE~input_o\,
	datad => \XRD~input_o\,
	combout => \U1|DATA_B[3]~3_combout\);

-- Location: M9K_X78_Y57_N0
\U4|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_2_PORT:U4|altsyncram:altsyncram_component|altsyncram_auq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|WREN_A~combout\,
	portare => \U2|RDEN_A~combout\,
	portbwe => \U3|WREN_B~combout\,
	portbre => \U3|RDEN_B~combout\,
	clk0 => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portbdatain => \U4|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \U4|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\,
	portbdataout => \U4|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X115_Y59_N22
\INDATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(4),
	o => \INDATA[4]~input_o\);

-- Location: LCCOMB_X79_Y59_N4
\U5|U3|DATA[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[4]~feeder_combout\ = \INDATA[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[4]~input_o\,
	combout => \U5|U3|DATA[4]~feeder_combout\);

-- Location: FF_X79_Y59_N5
\U5|U3|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[4]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(4));

-- Location: IOIBUF_X62_Y73_N15
\XD[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(4),
	o => \XD[4]~input_o\);

-- Location: LCCOMB_X77_Y59_N16
\U1|DATA_B[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[4]~4_combout\ = (\XD[4]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XD[4]~input_o\,
	datac => \XRD~input_o\,
	datad => \XWE~input_o\,
	combout => \U1|DATA_B[4]~4_combout\);

-- Location: IOIBUF_X111_Y73_N1
\INDATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(5),
	o => \INDATA[5]~input_o\);

-- Location: FF_X80_Y59_N5
\U5|U3|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \INDATA[5]~input_o\,
	sload => VCC,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(5));

-- Location: IOIBUF_X81_Y73_N1
\XD[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(5),
	o => \XD[5]~input_o\);

-- Location: LCCOMB_X77_Y59_N12
\U1|DATA_B[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[5]~5_combout\ = (\XD[5]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XD[5]~input_o\,
	datac => \XRD~input_o\,
	datad => \XWE~input_o\,
	combout => \U1|DATA_B[5]~5_combout\);

-- Location: M9K_X78_Y59_N0
\U4|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_2_PORT:U4|altsyncram:altsyncram_component|altsyncram_auq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|WREN_A~combout\,
	portare => \U2|RDEN_A~combout\,
	portbwe => \U3|WREN_B~combout\,
	portbre => \U3|RDEN_B~combout\,
	clk0 => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portbdatain => \U4|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \U4|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\,
	portbdataout => \U4|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X102_Y73_N1
\INDATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(6),
	o => \INDATA[6]~input_o\);

-- Location: FF_X79_Y61_N5
\U5|U3|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \INDATA[6]~input_o\,
	sload => VCC,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(6));

-- Location: IOIBUF_X81_Y73_N22
\XD[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(6),
	o => \XD[6]~input_o\);

-- Location: LCCOMB_X77_Y62_N28
\U1|DATA_B[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[6]~6_combout\ = (\XD[6]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XD[6]~input_o\,
	datac => \XRD~input_o\,
	datad => \XWE~input_o\,
	combout => \U1|DATA_B[6]~6_combout\);

-- Location: IOIBUF_X52_Y73_N8
\INDATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(7),
	o => \INDATA[7]~input_o\);

-- Location: LCCOMB_X79_Y61_N18
\U5|U3|DATA[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[7]~feeder_combout\ = \INDATA[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[7]~input_o\,
	combout => \U5|U3|DATA[7]~feeder_combout\);

-- Location: FF_X79_Y61_N19
\U5|U3|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[7]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(7));

-- Location: IOIBUF_X65_Y73_N8
\XD[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(7),
	o => \XD[7]~input_o\);

-- Location: LCCOMB_X77_Y62_N18
\U1|DATA_B[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[7]~7_combout\ = (\XD[7]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XD[7]~input_o\,
	datac => \XRD~input_o\,
	datad => \XWE~input_o\,
	combout => \U1|DATA_B[7]~7_combout\);

-- Location: M9K_X78_Y58_N0
\U4|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_2_PORT:U4|altsyncram:altsyncram_component|altsyncram_auq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|WREN_A~combout\,
	portare => \U2|RDEN_A~combout\,
	portbwe => \U3|WREN_B~combout\,
	portbre => \U3|RDEN_B~combout\,
	clk0 => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portbdatain => \U4|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \U4|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\,
	portbdataout => \U4|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X109_Y73_N8
\INDATA[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(8),
	o => \INDATA[8]~input_o\);

-- Location: FF_X79_Y62_N5
\U5|U3|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \INDATA[8]~input_o\,
	sload => VCC,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(8));

-- Location: IOIBUF_X62_Y73_N22
\XD[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(8),
	o => \XD[8]~input_o\);

-- Location: LCCOMB_X77_Y62_N16
\U1|DATA_B[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[8]~8_combout\ = (\XD[8]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XD[8]~input_o\,
	datac => \XRD~input_o\,
	datad => \XWE~input_o\,
	combout => \U1|DATA_B[8]~8_combout\);

-- Location: IOIBUF_X94_Y73_N8
\INDATA[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(9),
	o => \INDATA[9]~input_o\);

-- Location: LCCOMB_X79_Y62_N6
\U5|U3|DATA[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[9]~feeder_combout\ = \INDATA[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[9]~input_o\,
	combout => \U5|U3|DATA[9]~feeder_combout\);

-- Location: FF_X79_Y62_N7
\U5|U3|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[9]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(9));

-- Location: IOIBUF_X81_Y73_N15
\XD[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(9),
	o => \XD[9]~input_o\);

-- Location: LCCOMB_X77_Y62_N2
\U1|DATA_B[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[9]~9_combout\ = (\XD[9]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XD[9]~input_o\,
	datac => \XRD~input_o\,
	datad => \XWE~input_o\,
	combout => \U1|DATA_B[9]~9_combout\);

-- Location: M9K_X78_Y62_N0
\U4|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_2_PORT:U4|altsyncram:altsyncram_component|altsyncram_auq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|WREN_A~combout\,
	portare => \U2|RDEN_A~combout\,
	portbwe => \U3|WREN_B~combout\,
	portbre => \U3|RDEN_B~combout\,
	clk0 => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portbdatain => \U4|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \U4|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\,
	portbdataout => \U4|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X52_Y73_N22
\INDATA[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(10),
	o => \INDATA[10]~input_o\);

-- Location: LCCOMB_X79_Y61_N24
\U5|U3|DATA[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[10]~feeder_combout\ = \INDATA[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[10]~input_o\,
	combout => \U5|U3|DATA[10]~feeder_combout\);

-- Location: FF_X79_Y61_N25
\U5|U3|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[10]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(10));

-- Location: IOIBUF_X87_Y73_N1
\XD[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(10),
	o => \XD[10]~input_o\);

-- Location: LCCOMB_X79_Y61_N10
\U1|DATA_B[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[10]~10_combout\ = (\XD[10]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XD[10]~input_o\,
	datac => \XRD~input_o\,
	datad => \XWE~input_o\,
	combout => \U1|DATA_B[10]~10_combout\);

-- Location: IOIBUF_X115_Y61_N15
\INDATA[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(11),
	o => \INDATA[11]~input_o\);

-- Location: LCCOMB_X79_Y61_N8
\U5|U3|DATA[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[11]~feeder_combout\ = \INDATA[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[11]~input_o\,
	combout => \U5|U3|DATA[11]~feeder_combout\);

-- Location: FF_X79_Y61_N9
\U5|U3|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[11]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(11));

-- Location: IOIBUF_X85_Y73_N1
\XD[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(11),
	o => \XD[11]~input_o\);

-- Location: LCCOMB_X79_Y61_N22
\U1|DATA_B[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[11]~11_combout\ = (\XD[11]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XD[11]~input_o\,
	datac => \XRD~input_o\,
	datad => \XWE~input_o\,
	combout => \U1|DATA_B[11]~11_combout\);

-- Location: M9K_X78_Y61_N0
\U4|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_2_PORT:U4|altsyncram:altsyncram_component|altsyncram_auq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|WREN_A~combout\,
	portare => \U2|RDEN_A~combout\,
	portbwe => \U3|WREN_B~combout\,
	portbre => \U3|RDEN_B~combout\,
	clk0 => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portbdatain => \U4|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \U4|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\,
	portbdataout => \U4|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X107_Y73_N22
\INDATA[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(12),
	o => \INDATA[12]~input_o\);

-- Location: LCCOMB_X79_Y60_N4
\U5|U3|DATA[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[12]~feeder_combout\ = \INDATA[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[12]~input_o\,
	combout => \U5|U3|DATA[12]~feeder_combout\);

-- Location: FF_X79_Y60_N5
\U5|U3|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[12]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(12));

-- Location: IOIBUF_X85_Y73_N15
\XD[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(12),
	o => \XD[12]~input_o\);

-- Location: LCCOMB_X79_Y60_N10
\U1|DATA_B[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[12]~12_combout\ = (\XWE~input_o\) # ((\XD[12]~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XWE~input_o\,
	datac => \XD[12]~input_o\,
	datad => \XRD~input_o\,
	combout => \U1|DATA_B[12]~12_combout\);

-- Location: IOIBUF_X94_Y73_N1
\INDATA[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(13),
	o => \INDATA[13]~input_o\);

-- Location: LCCOMB_X79_Y60_N20
\U5|U3|DATA[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[13]~feeder_combout\ = \INDATA[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[13]~input_o\,
	combout => \U5|U3|DATA[13]~feeder_combout\);

-- Location: FF_X79_Y60_N21
\U5|U3|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[13]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(13));

-- Location: IOIBUF_X89_Y73_N8
\XD[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(13),
	o => \XD[13]~input_o\);

-- Location: LCCOMB_X79_Y60_N30
\U1|DATA_B[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[13]~13_combout\ = (\XD[13]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XD[13]~input_o\,
	datab => \XWE~input_o\,
	datad => \XRD~input_o\,
	combout => \U1|DATA_B[13]~13_combout\);

-- Location: M9K_X78_Y60_N0
\U4|altsyncram_component|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_2_PORT:U4|altsyncram:altsyncram_component|altsyncram_auq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|WREN_A~combout\,
	portare => \U2|RDEN_A~combout\,
	portbwe => \U3|WREN_B~combout\,
	portbre => \U3|RDEN_B~combout\,
	clk0 => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portbdatain => \U4|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \U4|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\,
	portbdataout => \U4|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X107_Y73_N8
\INDATA[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(14),
	o => \INDATA[14]~input_o\);

-- Location: LCCOMB_X79_Y62_N20
\U5|U3|DATA[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U3|DATA[14]~feeder_combout\ = \INDATA[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INDATA[14]~input_o\,
	combout => \U5|U3|DATA[14]~feeder_combout\);

-- Location: FF_X79_Y62_N21
\U5|U3|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U3|DATA[14]~feeder_combout\,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(14));

-- Location: IOIBUF_X81_Y73_N8
\XD[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(14),
	o => \XD[14]~input_o\);

-- Location: LCCOMB_X79_Y55_N8
\U1|DATA_B[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[14]~14_combout\ = (\XD[14]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XD[14]~input_o\,
	datab => \XWE~input_o\,
	datad => \XRD~input_o\,
	combout => \U1|DATA_B[14]~14_combout\);

-- Location: IOIBUF_X52_Y73_N15
\INDATA[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INDATA(15),
	o => \INDATA[15]~input_o\);

-- Location: FF_X79_Y61_N13
\U5|U3|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \INDATA[15]~input_o\,
	sload => VCC,
	ena => \U5|U3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U3|DATA\(15));

-- Location: IOIBUF_X83_Y73_N22
\XD[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XD(15),
	o => \XD[15]~input_o\);

-- Location: LCCOMB_X79_Y55_N6
\U1|DATA_B[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|DATA_B[15]~15_combout\ = (\XD[15]~input_o\) # ((\XWE~input_o\) # (!\XRD~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XD[15]~input_o\,
	datab => \XWE~input_o\,
	datad => \XRD~input_o\,
	combout => \U1|DATA_B[15]~15_combout\);

-- Location: M9K_X78_Y55_N0
\U4|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_2_PORT:U4|altsyncram:altsyncram_component|altsyncram_auq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|WREN_A~combout\,
	portare => \U2|RDEN_A~combout\,
	portbwe => \U3|WREN_B~combout\,
	portbre => \U3|RDEN_B~combout\,
	clk0 => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portbdatain => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\,
	portbdataout => \U4|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: CLKCTRL_PLL1E0
\U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_e_CLK_DAC\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_e_CLK_DAC_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_e_CLK_DAC_outclk\);

-- Location: LCCOMB_X1_Y1_N26
\U5|U1|CQI[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U1|CQI[2]~6_combout\ = (\U5|U1|CQI\(2) & (!\U5|U1|CQI[1]~5\)) # (!\U5|U1|CQI\(2) & ((\U5|U1|CQI[1]~5\) # (GND)))
-- \U5|U1|CQI[2]~7\ = CARRY((!\U5|U1|CQI[1]~5\) # (!\U5|U1|CQI\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|CQI\(2),
	datad => VCC,
	cin => \U5|U1|CQI[1]~5\,
	combout => \U5|U1|CQI[2]~6_combout\,
	cout => \U5|U1|CQI[2]~7\);

-- Location: LCCOMB_X1_Y1_N28
\U5|U1|CQI[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U1|CQI[3]~9_combout\ = (\U5|U1|CQI\(3) & (\U5|U1|CQI[2]~7\ $ (GND))) # (!\U5|U1|CQI\(3) & (!\U5|U1|CQI[2]~7\ & VCC))
-- \U5|U1|CQI[3]~10\ = CARRY((\U5|U1|CQI\(3) & !\U5|U1|CQI[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|U1|CQI\(3),
	datad => VCC,
	cin => \U5|U1|CQI[2]~7\,
	combout => \U5|U1|CQI[3]~9_combout\,
	cout => \U5|U1|CQI[3]~10\);

-- Location: LCCOMB_X1_Y1_N12
\U5|U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U1|Equal0~1_combout\ = (!\U5|U1|Equal0~0_combout\) # (!\U5|U1|CQI\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|U1|CQI\(2),
	datad => \U5|U1|Equal0~0_combout\,
	combout => \U5|U1|Equal0~1_combout\);

-- Location: FF_X1_Y1_N29
\U5|U1|CQI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U1|CQI[3]~9_combout\,
	ena => \U5|U1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U1|CQI\(3));

-- Location: LCCOMB_X1_Y1_N30
\U5|U1|CQI[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U1|CQI[4]~11_combout\ = \U5|U1|CQI\(4) $ (\U5|U1|CQI[3]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|CQI\(4),
	cin => \U5|U1|CQI[3]~10\,
	combout => \U5|U1|CQI[4]~11_combout\);

-- Location: FF_X1_Y1_N31
\U5|U1|CQI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U1|CQI[4]~11_combout\,
	ena => \U5|U1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U1|CQI\(4));

-- Location: LCCOMB_X1_Y1_N24
\U5|U1|CQI[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U1|CQI[1]~4_combout\ = (\U5|U1|CQI\(0) & (\U5|U1|CQI\(1) $ (VCC))) # (!\U5|U1|CQI\(0) & (\U5|U1|CQI\(1) & VCC))
-- \U5|U1|CQI[1]~5\ = CARRY((\U5|U1|CQI\(0) & \U5|U1|CQI\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|CQI\(0),
	datab => \U5|U1|CQI\(1),
	datad => VCC,
	combout => \U5|U1|CQI[1]~4_combout\,
	cout => \U5|U1|CQI[1]~5\);

-- Location: FF_X1_Y1_N25
\U5|U1|CQI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U1|CQI[1]~4_combout\,
	ena => \U5|U1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U1|CQI\(1));

-- Location: LCCOMB_X1_Y1_N0
\U5|U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U1|Equal0~0_combout\ = (\U5|U1|CQI\(0) & (\U5|U1|CQI\(3) & (\U5|U1|CQI\(4) & \U5|U1|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|CQI\(0),
	datab => \U5|U1|CQI\(3),
	datac => \U5|U1|CQI\(4),
	datad => \U5|U1|CQI\(1),
	combout => \U5|U1|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y1_N22
\U5|U1|CQI[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U1|CQI[0]~8_combout\ = ((\U5|U1|CQI\(2) & \U5|U1|Equal0~0_combout\)) # (!\U5|U1|CQI\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|CQI\(2),
	datac => \U5|U1|CQI\(0),
	datad => \U5|U1|Equal0~0_combout\,
	combout => \U5|U1|CQI[0]~8_combout\);

-- Location: FF_X1_Y1_N23
\U5|U1|CQI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U1|CQI[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U1|CQI\(0));

-- Location: FF_X1_Y1_N27
\U5|U1|CQI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U1|CQI[2]~6_combout\,
	ena => \U5|U1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U1|CQI\(2));

-- Location: LCCOMB_X1_Y1_N2
\U5|U1|RSET0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U1|RSET0~0_combout\ = (!\U5|U1|CQI\(0) & (!\U5|U1|CQI\(3) & (\U5|U1|CQI\(4) & !\U5|U1|CQI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|CQI\(0),
	datab => \U5|U1|CQI\(3),
	datac => \U5|U1|CQI\(4),
	datad => \U5|U1|CQI\(1),
	combout => \U5|U1|RSET0~0_combout\);

-- Location: LCCOMB_X1_Y1_N20
\U5|U1|RSET0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U1|RSET0~1_combout\ = (\U5|U1|CQI\(2) & (((\U5|U1|RSET0~q\)))) # (!\U5|U1|CQI\(2) & ((\U5|U1|RSET0~0_combout\) # ((\U5|U1|RSET0~q\ & !\U5|U1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|CQI\(2),
	datab => \U5|U1|RSET0~0_combout\,
	datac => \U5|U1|RSET0~q\,
	datad => \U5|U1|Equal0~0_combout\,
	combout => \U5|U1|RSET0~1_combout\);

-- Location: FF_X1_Y1_N21
\U5|U1|RSET0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U1|RSET0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U1|RSET0~q\);

-- Location: IOIBUF_X58_Y0_N8
\FIRSTDATA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FIRSTDATA,
	o => \FIRSTDATA~input_o\);
END structure;


