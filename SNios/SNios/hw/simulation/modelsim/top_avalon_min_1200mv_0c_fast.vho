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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/04/2021 22:11:36"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_avalon IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	chipselect : IN std_logic;
	writedata : IN std_logic_vector(31 DOWNTO 0);
	write_en : IN std_logic;
	readdata : OUT std_logic_vector(31 DOWNTO 0);
	add : IN std_logic_vector(1 DOWNTO 0);
	read_en : IN std_logic
	);
END top_avalon;

-- Design Ports Information
-- readdata[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[5]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[8]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[10]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[11]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[12]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[13]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[14]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[16]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[17]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[18]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[19]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[20]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[21]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[22]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[23]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[24]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[25]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[26]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[27]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[28]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[29]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[30]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[31]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipselect	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_en	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[0]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_en	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_avalon IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_chipselect : std_logic;
SIGNAL ww_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_write_en : std_logic;
SIGNAL ww_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_add : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_read_en : std_logic;
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bram0|ram~31_combout\ : std_logic;
SIGNAL \bram0|ram~33_combout\ : std_logic;
SIGNAL \bram0|ram~19_q\ : std_logic;
SIGNAL \write_en~input_o\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \r32_2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \r32_2|Q[6]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \r32_2|Q[7]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram~19feeder_combout\ : std_logic;
SIGNAL \readdata[0]~output_o\ : std_logic;
SIGNAL \readdata[1]~output_o\ : std_logic;
SIGNAL \readdata[2]~output_o\ : std_logic;
SIGNAL \readdata[3]~output_o\ : std_logic;
SIGNAL \readdata[4]~output_o\ : std_logic;
SIGNAL \readdata[5]~output_o\ : std_logic;
SIGNAL \readdata[6]~output_o\ : std_logic;
SIGNAL \readdata[7]~output_o\ : std_logic;
SIGNAL \readdata[8]~output_o\ : std_logic;
SIGNAL \readdata[9]~output_o\ : std_logic;
SIGNAL \readdata[10]~output_o\ : std_logic;
SIGNAL \readdata[11]~output_o\ : std_logic;
SIGNAL \readdata[12]~output_o\ : std_logic;
SIGNAL \readdata[13]~output_o\ : std_logic;
SIGNAL \readdata[14]~output_o\ : std_logic;
SIGNAL \readdata[15]~output_o\ : std_logic;
SIGNAL \readdata[16]~output_o\ : std_logic;
SIGNAL \readdata[17]~output_o\ : std_logic;
SIGNAL \readdata[18]~output_o\ : std_logic;
SIGNAL \readdata[19]~output_o\ : std_logic;
SIGNAL \readdata[20]~output_o\ : std_logic;
SIGNAL \readdata[21]~output_o\ : std_logic;
SIGNAL \readdata[22]~output_o\ : std_logic;
SIGNAL \readdata[23]~output_o\ : std_logic;
SIGNAL \readdata[24]~output_o\ : std_logic;
SIGNAL \readdata[25]~output_o\ : std_logic;
SIGNAL \readdata[26]~output_o\ : std_logic;
SIGNAL \readdata[27]~output_o\ : std_logic;
SIGNAL \readdata[28]~output_o\ : std_logic;
SIGNAL \readdata[29]~output_o\ : std_logic;
SIGNAL \readdata[30]~output_o\ : std_logic;
SIGNAL \readdata[31]~output_o\ : std_logic;
SIGNAL \writedata[0]~input_o\ : std_logic;
SIGNAL \r32_2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \add[1]~input_o\ : std_logic;
SIGNAL \add[0]~input_o\ : std_logic;
SIGNAL \chipselect~input_o\ : std_logic;
SIGNAL \write_enable2~combout\ : std_logic;
SIGNAL \r32_1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \write_enable1~0_combout\ : std_logic;
SIGNAL \read_en~input_o\ : std_logic;
SIGNAL \read_en0~0_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \write_enable0~combout\ : std_logic;
SIGNAL \r32_0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \writedata[1]~input_o\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram~28_combout\ : std_logic;
SIGNAL \writedata[4]~input_o\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \writedata[5]~input_o\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram~30_combout\ : std_logic;
SIGNAL \writedata[2]~input_o\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \writedata[3]~input_o\ : std_logic;
SIGNAL \r32_0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram~29_combout\ : std_logic;
SIGNAL \bram0|ram~32_combout\ : std_logic;
SIGNAL \bram0|ram~34_combout\ : std_logic;
SIGNAL \readdata[0]~34_combout\ : std_logic;
SIGNAL \readdata[0]~35_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \writedata[6]~input_o\ : std_logic;
SIGNAL \r32_0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \writedata[7]~input_o\ : std_logic;
SIGNAL \r32_0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \writedata[8]~input_o\ : std_logic;
SIGNAL \writedata[9]~input_o\ : std_logic;
SIGNAL \r32_1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \r32_1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \r32_1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \r32_1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \r32_1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \r32_1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \bram0|ram~36_combout\ : std_logic;
SIGNAL \bram0|ram~35_combout\ : std_logic;
SIGNAL \bram0|ram~37_combout\ : std_logic;
SIGNAL \bram0|ram~38_combout\ : std_logic;
SIGNAL \bram0|ram~20_q\ : std_logic;
SIGNAL \readdata[0]~75_combout\ : std_logic;
SIGNAL \readdata[0]~36_combout\ : std_logic;
SIGNAL \bram0|ram~21_q\ : std_logic;
SIGNAL \r32_2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \readdata[1]~37_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \readdata[1]~38_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \readdata[2]~39_combout\ : std_logic;
SIGNAL \bram0|ram~22_q\ : std_logic;
SIGNAL \readdata[2]~40_combout\ : std_logic;
SIGNAL \bram0|ram~23_q\ : std_logic;
SIGNAL \readdata[3]~41_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \readdata[3]~42_combout\ : std_logic;
SIGNAL \r32_2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \readdata[4]~43_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \bram0|ram~24_q\ : std_logic;
SIGNAL \readdata[4]~44_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \bram0|ram~25_q\ : std_logic;
SIGNAL \readdata[5]~45_combout\ : std_logic;
SIGNAL \readdata[5]~46_combout\ : std_logic;
SIGNAL \readdata[6]~47_combout\ : std_logic;
SIGNAL \bram0|ram~26_q\ : std_logic;
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \readdata[6]~48_combout\ : std_logic;
SIGNAL \bram0|ram~27_q\ : std_logic;
SIGNAL \readdata[7]~49_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \readdata[7]~50_combout\ : std_logic;
SIGNAL \readdata[8]~51_combout\ : std_logic;
SIGNAL \readdata[9]~52_combout\ : std_logic;
SIGNAL \writedata[10]~input_o\ : std_logic;
SIGNAL \readdata[10]~53_combout\ : std_logic;
SIGNAL \writedata[11]~input_o\ : std_logic;
SIGNAL \readdata[11]~54_combout\ : std_logic;
SIGNAL \writedata[12]~input_o\ : std_logic;
SIGNAL \readdata[12]~55_combout\ : std_logic;
SIGNAL \writedata[13]~input_o\ : std_logic;
SIGNAL \readdata[13]~56_combout\ : std_logic;
SIGNAL \writedata[14]~input_o\ : std_logic;
SIGNAL \readdata[14]~57_combout\ : std_logic;
SIGNAL \writedata[15]~input_o\ : std_logic;
SIGNAL \readdata[15]~58_combout\ : std_logic;
SIGNAL \writedata[16]~input_o\ : std_logic;
SIGNAL \readdata[16]~59_combout\ : std_logic;
SIGNAL \writedata[17]~input_o\ : std_logic;
SIGNAL \readdata[17]~60_combout\ : std_logic;
SIGNAL \writedata[18]~input_o\ : std_logic;
SIGNAL \readdata[18]~61_combout\ : std_logic;
SIGNAL \writedata[19]~input_o\ : std_logic;
SIGNAL \readdata[19]~62_combout\ : std_logic;
SIGNAL \writedata[20]~input_o\ : std_logic;
SIGNAL \readdata[20]~63_combout\ : std_logic;
SIGNAL \writedata[21]~input_o\ : std_logic;
SIGNAL \readdata[21]~64_combout\ : std_logic;
SIGNAL \writedata[22]~input_o\ : std_logic;
SIGNAL \readdata[22]~65_combout\ : std_logic;
SIGNAL \writedata[23]~input_o\ : std_logic;
SIGNAL \readdata[23]~66_combout\ : std_logic;
SIGNAL \writedata[24]~input_o\ : std_logic;
SIGNAL \readdata[24]~67_combout\ : std_logic;
SIGNAL \writedata[25]~input_o\ : std_logic;
SIGNAL \readdata[25]~68_combout\ : std_logic;
SIGNAL \writedata[26]~input_o\ : std_logic;
SIGNAL \readdata[26]~69_combout\ : std_logic;
SIGNAL \writedata[27]~input_o\ : std_logic;
SIGNAL \readdata[27]~70_combout\ : std_logic;
SIGNAL \writedata[28]~input_o\ : std_logic;
SIGNAL \readdata[28]~71_combout\ : std_logic;
SIGNAL \writedata[29]~input_o\ : std_logic;
SIGNAL \readdata[29]~72_combout\ : std_logic;
SIGNAL \writedata[30]~input_o\ : std_logic;
SIGNAL \readdata[30]~73_combout\ : std_logic;
SIGNAL \writedata[31]~input_o\ : std_logic;
SIGNAL \readdata[31]~74_combout\ : std_logic;
SIGNAL \bram0|ram_rtl_0_bypass\ : std_logic_vector(0 TO 28);
SIGNAL \r32_1|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \r32_2|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \r32_0|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_write_enable0~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
ww_chipselect <= chipselect;
ww_writedata <= writedata;
ww_write_en <= write_en;
readdata <= ww_readdata;
ww_add <= add;
ww_read_en <= read_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \r32_1|Q\(7) & \r32_1|Q\(6) & \r32_1|Q\(5) & \r32_1|Q\(4) & \r32_1|Q\(3) & \r32_1|Q\(2) & \r32_1|Q\(1) & \r32_1|Q\(0));

\bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\r32_0|Q\(9) & \r32_0|Q\(8) & \r32_0|Q\(7) & \r32_0|Q\(6) & \r32_0|Q\(5) & \r32_0|Q\(4) & \r32_0|Q\(3) & \r32_0|Q\(2) & \r32_0|Q\(1) & \r32_0|Q\(0));

\bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\writedata[9]~input_o\ & \writedata[8]~input_o\ & \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & \writedata[4]~input_o\ & \writedata[3]~input_o\ & 
\writedata[2]~input_o\ & \writedata[1]~input_o\ & \writedata[0]~input_o\);

\bram0|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\bram0|ram_rtl_0|auto_generated|ram_block1a1\ <= \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\bram0|ram_rtl_0|auto_generated|ram_block1a2\ <= \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\bram0|ram_rtl_0|auto_generated|ram_block1a3\ <= \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\bram0|ram_rtl_0|auto_generated|ram_block1a4\ <= \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\bram0|ram_rtl_0|auto_generated|ram_block1a5\ <= \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\bram0|ram_rtl_0|auto_generated|ram_block1a6\ <= \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\bram0|ram_rtl_0|auto_generated|ram_block1a7\ <= \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_write_enable0~combout\ <= NOT \write_enable0~combout\;

-- Location: FF_X42_Y3_N27
\bram0|ram_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[1]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(4));

-- Location: FF_X42_Y3_N11
\bram0|ram_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[3]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(8));

-- Location: FF_X41_Y3_N7
\bram0|ram_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[5]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(12));

-- Location: FF_X41_Y3_N17
\bram0|ram_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_0|Q\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(13));

-- Location: FF_X41_Y3_N31
\bram0|ram_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[14]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(14));

-- Location: FF_X41_Y3_N29
\bram0|ram_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(15));

-- Location: FF_X41_Y3_N11
\bram0|ram_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[16]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(16));

-- Location: LCCOMB_X41_Y3_N16
\bram0|ram~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~31_combout\ = (\bram0|ram_rtl_0_bypass\(14) & ((\bram0|ram_rtl_0_bypass\(15) $ (\bram0|ram_rtl_0_bypass\(16))) # (!\bram0|ram_rtl_0_bypass\(13)))) # (!\bram0|ram_rtl_0_bypass\(14) & ((\bram0|ram_rtl_0_bypass\(13)) # 
-- (\bram0|ram_rtl_0_bypass\(15) $ (\bram0|ram_rtl_0_bypass\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bram0|ram_rtl_0_bypass\(14),
	datab => \bram0|ram_rtl_0_bypass\(15),
	datac => \bram0|ram_rtl_0_bypass\(13),
	datad => \bram0|ram_rtl_0_bypass\(16),
	combout => \bram0|ram~31_combout\);

-- Location: FF_X41_Y3_N13
\bram0|ram_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_0|Q\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(17));

-- Location: FF_X42_Y3_N7
\bram0|ram_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[18]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(18));

-- Location: FF_X41_Y3_N3
\bram0|ram_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(19));

-- Location: FF_X42_Y3_N25
\bram0|ram_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[20]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(20));

-- Location: LCCOMB_X41_Y3_N12
\bram0|ram~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~33_combout\ = (\bram0|ram_rtl_0_bypass\(18) & ((\bram0|ram_rtl_0_bypass\(19) $ (\bram0|ram_rtl_0_bypass\(20))) # (!\bram0|ram_rtl_0_bypass\(17)))) # (!\bram0|ram_rtl_0_bypass\(18) & ((\bram0|ram_rtl_0_bypass\(17)) # 
-- (\bram0|ram_rtl_0_bypass\(19) $ (\bram0|ram_rtl_0_bypass\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bram0|ram_rtl_0_bypass\(18),
	datab => \bram0|ram_rtl_0_bypass\(19),
	datac => \bram0|ram_rtl_0_bypass\(17),
	datad => \bram0|ram_rtl_0_bypass\(20),
	combout => \bram0|ram~33_combout\);

-- Location: FF_X41_Y3_N23
\bram0|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram~19feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram~19_q\);

-- Location: FF_X37_Y3_N11
\r32_2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_2|Q[3]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(3));

-- Location: FF_X37_Y3_N13
\r32_2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[5]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(5));

-- Location: FF_X37_Y3_N19
\r32_2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_2|Q[6]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(6));

-- Location: FF_X37_Y3_N9
\r32_2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_2|Q[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(7));

-- Location: IOIBUF_X41_Y0_N22
\write_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_en,
	o => \write_en~input_o\);

-- Location: LCCOMB_X41_Y3_N2
\bram0|ram_rtl_0_bypass[19]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[19]~feeder_combout\ = \r32_0|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r32_0|Q\(9),
	combout => \bram0|ram_rtl_0_bypass[19]~feeder_combout\);

-- Location: LCCOMB_X41_Y3_N28
\bram0|ram_rtl_0_bypass[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[15]~feeder_combout\ = \r32_0|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r32_0|Q\(7),
	combout => \bram0|ram_rtl_0_bypass[15]~feeder_combout\);

-- Location: LCCOMB_X37_Y3_N10
\r32_2|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_2|Q[3]~feeder_combout\ = \writedata[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[3]~input_o\,
	combout => \r32_2|Q[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y3_N18
\r32_2|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_2|Q[6]~feeder_combout\ = \writedata[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[6]~input_o\,
	combout => \r32_2|Q[6]~feeder_combout\);

-- Location: LCCOMB_X41_Y3_N30
\bram0|ram_rtl_0_bypass[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[14]~feeder_combout\ = \writedata[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[6]~input_o\,
	combout => \bram0|ram_rtl_0_bypass[14]~feeder_combout\);

-- Location: LCCOMB_X41_Y3_N10
\bram0|ram_rtl_0_bypass[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[16]~feeder_combout\ = \writedata[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[7]~input_o\,
	combout => \bram0|ram_rtl_0_bypass[16]~feeder_combout\);

-- Location: LCCOMB_X37_Y3_N8
\r32_2|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_2|Q[7]~feeder_combout\ = \writedata[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[7]~input_o\,
	combout => \r32_2|Q[7]~feeder_combout\);

-- Location: LCCOMB_X42_Y3_N6
\bram0|ram_rtl_0_bypass[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[18]~feeder_combout\ = \writedata[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[8]~input_o\,
	combout => \bram0|ram_rtl_0_bypass[18]~feeder_combout\);

-- Location: LCCOMB_X42_Y3_N24
\bram0|ram_rtl_0_bypass[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[20]~feeder_combout\ = \writedata[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[9]~input_o\,
	combout => \bram0|ram_rtl_0_bypass[20]~feeder_combout\);

-- Location: LCCOMB_X41_Y3_N22
\bram0|ram~19feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~19feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bram0|ram~19feeder_combout\);

-- Location: IOOBUF_X38_Y0_N9
\readdata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[0]~36_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\readdata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[1]~38_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\readdata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[2]~40_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\readdata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[3]~42_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\readdata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[4]~44_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\readdata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[5]~46_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\readdata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[6]~48_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[6]~output_o\);

-- Location: IOOBUF_X52_Y10_N9
\readdata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[7]~50_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[7]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\readdata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[8]~51_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[8]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\readdata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[9]~52_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[9]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\readdata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[10]~53_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[10]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\readdata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[11]~54_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[11]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\readdata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[12]~55_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[12]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\readdata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[13]~56_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[13]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\readdata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[14]~57_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[14]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\readdata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[15]~58_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[15]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\readdata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[16]~59_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[16]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\readdata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[17]~60_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[17]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\readdata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[18]~61_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[18]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\readdata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[19]~62_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[19]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\readdata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[20]~63_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[20]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\readdata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[21]~64_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[21]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\readdata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[22]~65_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[22]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\readdata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[23]~66_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[23]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\readdata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[24]~67_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[24]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\readdata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[25]~68_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[25]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\readdata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[26]~69_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[26]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\readdata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[27]~70_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[27]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\readdata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[28]~71_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[28]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\readdata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[29]~72_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[29]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\readdata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[30]~73_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[30]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\readdata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[31]~74_combout\,
	oe => \read_en0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[31]~output_o\);

-- Location: IOIBUF_X41_Y0_N1
\writedata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: LCCOMB_X37_Y3_N28
\r32_2|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_2|Q[0]~feeder_combout\ = \writedata[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[0]~input_o\,
	combout => \r32_2|Q[0]~feeder_combout\);

-- Location: IOIBUF_X27_Y0_N22
\resetn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: CLKCTRL_G19
\resetn~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y0_N8
\add[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(1),
	o => \add[1]~input_o\);

-- Location: IOIBUF_X52_Y15_N8
\add[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(0),
	o => \add[0]~input_o\);

-- Location: IOIBUF_X52_Y13_N8
\chipselect~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_chipselect,
	o => \chipselect~input_o\);

-- Location: LCCOMB_X43_Y3_N2
write_enable2 : cycloneiv_lcell_comb
-- Equation(s):
-- \write_enable2~combout\ = (\write_en~input_o\ & (\add[1]~input_o\ & (!\add[0]~input_o\ & \chipselect~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \add[1]~input_o\,
	datac => \add[0]~input_o\,
	datad => \chipselect~input_o\,
	combout => \write_enable2~combout\);

-- Location: FF_X37_Y3_N29
\r32_2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_2|Q[0]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(0));

-- Location: LCCOMB_X37_Y3_N14
\r32_1|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_1|Q[0]~feeder_combout\ = \writedata[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[0]~input_o\,
	combout => \r32_1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y3_N26
\write_enable1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_enable1~0_combout\ = (\write_en~input_o\ & (\chipselect~input_o\ & (!\add[1]~input_o\ & \add[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \chipselect~input_o\,
	datac => \add[1]~input_o\,
	datad => \add[0]~input_o\,
	combout => \write_enable1~0_combout\);

-- Location: FF_X37_Y3_N15
\r32_1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_1|Q[0]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_1|Q\(0));

-- Location: FF_X39_Y3_N11
\bram0|ram_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(21));

-- Location: IOIBUF_X52_Y12_N1
\read_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_en,
	o => \read_en~input_o\);

-- Location: LCCOMB_X43_Y3_N28
\read_en0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \read_en0~0_combout\ = (\read_en~input_o\ & \chipselect~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \read_en~input_o\,
	datad => \chipselect~input_o\,
	combout => \read_en0~0_combout\);

-- Location: FF_X41_Y3_N5
\bram0|ram_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \write_enable1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(0));

-- Location: LCCOMB_X42_Y3_N18
\bram0|ram_rtl_0_bypass[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[2]~feeder_combout\ = \writedata[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[0]~input_o\,
	combout => \bram0|ram_rtl_0_bypass[2]~feeder_combout\);

-- Location: LCCOMB_X41_Y3_N8
write_enable0 : cycloneiv_lcell_comb
-- Equation(s):
-- \write_enable0~combout\ = (\write_en~input_o\ & (\chipselect~input_o\ & (!\add[1]~input_o\ & !\add[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~input_o\,
	datab => \chipselect~input_o\,
	datac => \add[1]~input_o\,
	datad => \add[0]~input_o\,
	combout => \write_enable0~combout\);

-- Location: FF_X42_Y3_N19
\bram0|ram_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(2));

-- Location: LCCOMB_X38_Y3_N20
\r32_0|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_0|Q[0]~feeder_combout\ = \writedata[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[0]~input_o\,
	combout => \r32_0|Q[0]~feeder_combout\);

-- Location: FF_X38_Y3_N21
\r32_0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_0|Q[0]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_0|Q\(0));

-- Location: FF_X42_Y3_N21
\bram0|ram_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_0|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(1));

-- Location: IOIBUF_X29_Y0_N8
\writedata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: FF_X38_Y3_N31
\r32_0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[1]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_0|Q\(1));

-- Location: LCCOMB_X42_Y3_N12
\bram0|ram_rtl_0_bypass[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[3]~feeder_combout\ = \r32_0|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r32_0|Q\(1),
	combout => \bram0|ram_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X42_Y3_N13
\bram0|ram_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(3));

-- Location: LCCOMB_X42_Y3_N20
\bram0|ram~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~28_combout\ = (\bram0|ram_rtl_0_bypass\(4) & ((\bram0|ram_rtl_0_bypass\(2) $ (\bram0|ram_rtl_0_bypass\(1))) # (!\bram0|ram_rtl_0_bypass\(3)))) # (!\bram0|ram_rtl_0_bypass\(4) & ((\bram0|ram_rtl_0_bypass\(3)) # (\bram0|ram_rtl_0_bypass\(2) $ 
-- (\bram0|ram_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bram0|ram_rtl_0_bypass\(4),
	datab => \bram0|ram_rtl_0_bypass\(2),
	datac => \bram0|ram_rtl_0_bypass\(1),
	datad => \bram0|ram_rtl_0_bypass\(3),
	combout => \bram0|ram~28_combout\);

-- Location: IOIBUF_X31_Y0_N22
\writedata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: LCCOMB_X41_Y3_N18
\bram0|ram_rtl_0_bypass[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[10]~feeder_combout\ = \writedata[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[4]~input_o\,
	combout => \bram0|ram_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X41_Y3_N19
\bram0|ram_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[10]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(10));

-- Location: IOIBUF_X25_Y0_N1
\writedata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: FF_X38_Y3_N11
\r32_0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[5]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_0|Q\(5));

-- Location: FF_X41_Y3_N1
\bram0|ram_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_0|Q\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(11));

-- Location: FF_X38_Y3_N1
\r32_0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[4]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_0|Q\(4));

-- Location: LCCOMB_X41_Y3_N24
\bram0|ram_rtl_0_bypass[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[9]~feeder_combout\ = \r32_0|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r32_0|Q\(4),
	combout => \bram0|ram_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X41_Y3_N25
\bram0|ram_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(9));

-- Location: LCCOMB_X41_Y3_N0
\bram0|ram~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~30_combout\ = (\bram0|ram_rtl_0_bypass\(12) & ((\bram0|ram_rtl_0_bypass\(10) $ (\bram0|ram_rtl_0_bypass\(9))) # (!\bram0|ram_rtl_0_bypass\(11)))) # (!\bram0|ram_rtl_0_bypass\(12) & ((\bram0|ram_rtl_0_bypass\(11)) # (\bram0|ram_rtl_0_bypass\(10) 
-- $ (\bram0|ram_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bram0|ram_rtl_0_bypass\(12),
	datab => \bram0|ram_rtl_0_bypass\(10),
	datac => \bram0|ram_rtl_0_bypass\(11),
	datad => \bram0|ram_rtl_0_bypass\(9),
	combout => \bram0|ram~30_combout\);

-- Location: IOIBUF_X41_Y0_N15
\writedata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: LCCOMB_X42_Y3_N2
\bram0|ram_rtl_0_bypass[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[6]~feeder_combout\ = \writedata[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[2]~input_o\,
	combout => \bram0|ram_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X42_Y3_N3
\bram0|ram_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[6]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(6));

-- Location: IOIBUF_X36_Y0_N8
\writedata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: FF_X38_Y3_N27
\r32_0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[3]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_0|Q\(3));

-- Location: FF_X42_Y3_N29
\bram0|ram_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_0|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(7));

-- Location: LCCOMB_X38_Y3_N28
\r32_0|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_0|Q[2]~feeder_combout\ = \writedata[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[2]~input_o\,
	combout => \r32_0|Q[2]~feeder_combout\);

-- Location: FF_X38_Y3_N29
\r32_0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_0|Q[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_0|Q\(2));

-- Location: LCCOMB_X42_Y3_N0
\bram0|ram_rtl_0_bypass[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram_rtl_0_bypass[5]~feeder_combout\ = \r32_0|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r32_0|Q\(2),
	combout => \bram0|ram_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X42_Y3_N1
\bram0|ram_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bram0|ram_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(5));

-- Location: LCCOMB_X42_Y3_N28
\bram0|ram~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~29_combout\ = (\bram0|ram_rtl_0_bypass\(8) & ((\bram0|ram_rtl_0_bypass\(6) $ (\bram0|ram_rtl_0_bypass\(5))) # (!\bram0|ram_rtl_0_bypass\(7)))) # (!\bram0|ram_rtl_0_bypass\(8) & ((\bram0|ram_rtl_0_bypass\(7)) # (\bram0|ram_rtl_0_bypass\(6) $ 
-- (\bram0|ram_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bram0|ram_rtl_0_bypass\(8),
	datab => \bram0|ram_rtl_0_bypass\(6),
	datac => \bram0|ram_rtl_0_bypass\(7),
	datad => \bram0|ram_rtl_0_bypass\(5),
	combout => \bram0|ram~29_combout\);

-- Location: LCCOMB_X42_Y3_N4
\bram0|ram~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~32_combout\ = (\bram0|ram~31_combout\) # ((\bram0|ram~28_combout\) # ((\bram0|ram~30_combout\) # (\bram0|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bram0|ram~31_combout\,
	datab => \bram0|ram~28_combout\,
	datac => \bram0|ram~30_combout\,
	datad => \bram0|ram~29_combout\,
	combout => \bram0|ram~32_combout\);

-- Location: LCCOMB_X41_Y3_N4
\bram0|ram~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~34_combout\ = (\bram0|ram~33_combout\) # ((\bram0|ram~32_combout\) # (!\bram0|ram_rtl_0_bypass\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bram0|ram~33_combout\,
	datac => \bram0|ram_rtl_0_bypass\(0),
	datad => \bram0|ram~32_combout\,
	combout => \bram0|ram~34_combout\);

-- Location: LCCOMB_X41_Y3_N20
\readdata[0]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[0]~34_combout\ = (\read_en0~0_combout\ & (!\add[0]~input_o\ & ((\bram0|ram~19_q\) # (!\bram0|ram~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bram0|ram~19_q\,
	datab => \read_en0~0_combout\,
	datac => \bram0|ram~34_combout\,
	datad => \add[0]~input_o\,
	combout => \readdata[0]~34_combout\);

-- Location: LCCOMB_X39_Y3_N10
\readdata[0]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[0]~35_combout\ = (\readdata[0]~75_combout\ & (((\readdata[0]~34_combout\)))) # (!\readdata[0]~75_combout\ & ((\readdata[0]~34_combout\ & ((\bram0|ram_rtl_0_bypass\(21)))) # (!\readdata[0]~34_combout\ & (\r32_2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[0]~75_combout\,
	datab => \r32_2|Q\(0),
	datac => \bram0|ram_rtl_0_bypass\(21),
	datad => \readdata[0]~34_combout\,
	combout => \readdata[0]~35_combout\);

-- Location: IOIBUF_X27_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y0_N1
\writedata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: LCCOMB_X38_Y3_N12
\r32_0|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_0|Q[6]~feeder_combout\ = \writedata[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[6]~input_o\,
	combout => \r32_0|Q[6]~feeder_combout\);

-- Location: FF_X38_Y3_N13
\r32_0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_0|Q[6]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_0|Q\(6));

-- Location: IOIBUF_X36_Y0_N1
\writedata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: LCCOMB_X38_Y3_N18
\r32_0|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_0|Q[7]~feeder_combout\ = \writedata[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[7]~input_o\,
	combout => \r32_0|Q[7]~feeder_combout\);

-- Location: FF_X38_Y3_N19
\r32_0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_0|Q[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_0|Q\(7));

-- Location: IOIBUF_X52_Y9_N1
\writedata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(8),
	o => \writedata[8]~input_o\);

-- Location: FF_X38_Y3_N9
\r32_0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[8]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_0|Q\(8));

-- Location: IOIBUF_X52_Y13_N1
\writedata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(9),
	o => \writedata[9]~input_o\);

-- Location: FF_X38_Y3_N3
\r32_0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[9]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_0|Q\(9));

-- Location: LCCOMB_X37_Y3_N0
\r32_1|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_1|Q[1]~feeder_combout\ = \writedata[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[1]~input_o\,
	combout => \r32_1|Q[1]~feeder_combout\);

-- Location: FF_X37_Y3_N1
\r32_1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_1|Q[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_1|Q\(1));

-- Location: LCCOMB_X37_Y3_N6
\r32_1|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_1|Q[2]~feeder_combout\ = \writedata[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[2]~input_o\,
	combout => \r32_1|Q[2]~feeder_combout\);

-- Location: FF_X37_Y3_N7
\r32_1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_1|Q[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_1|Q\(2));

-- Location: LCCOMB_X37_Y3_N24
\r32_1|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_1|Q[3]~feeder_combout\ = \writedata[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[3]~input_o\,
	combout => \r32_1|Q[3]~feeder_combout\);

-- Location: FF_X37_Y3_N25
\r32_1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_1|Q[3]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_1|Q\(3));

-- Location: LCCOMB_X37_Y3_N30
\r32_1|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_1|Q[4]~feeder_combout\ = \writedata[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[4]~input_o\,
	combout => \r32_1|Q[4]~feeder_combout\);

-- Location: FF_X37_Y3_N31
\r32_1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_1|Q[4]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_1|Q\(4));

-- Location: FF_X37_Y3_N5
\r32_1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[5]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_1|Q\(5));

-- Location: LCCOMB_X37_Y3_N26
\r32_1|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_1|Q[6]~feeder_combout\ = \writedata[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[6]~input_o\,
	combout => \r32_1|Q[6]~feeder_combout\);

-- Location: FF_X37_Y3_N27
\r32_1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_1|Q[6]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_1|Q\(6));

-- Location: LCCOMB_X37_Y3_N16
\r32_1|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_1|Q[7]~feeder_combout\ = \writedata[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[7]~input_o\,
	combout => \r32_1|Q[7]~feeder_combout\);

-- Location: FF_X37_Y3_N17
\r32_1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_1|Q[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_1|Q\(7));

-- Location: M9K_X40_Y3_N0
\bram0|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bram:bram0|altsyncram:ram_rtl_0|altsyncram_p5e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \write_enable1~0_combout\,
	portbre => VCC,
	portbaddrstall => \ALT_INV_write_enable0~combout\,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \write_enable1~0_combout\,
	portadatain => \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \bram0|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X38_Y3_N0
\bram0|ram~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~36_combout\ = (!\r32_0|Q\(3) & (!\r32_0|Q\(2) & (!\r32_0|Q\(4) & !\r32_0|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(3),
	datab => \r32_0|Q\(2),
	datac => \r32_0|Q\(4),
	datad => \r32_0|Q\(5),
	combout => \bram0|ram~36_combout\);

-- Location: LCCOMB_X38_Y3_N8
\bram0|ram~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~35_combout\ = (!\r32_0|Q\(6) & (!\r32_0|Q\(9) & (!\r32_0|Q\(8) & !\r32_0|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(6),
	datab => \r32_0|Q\(9),
	datac => \r32_0|Q\(8),
	datad => \r32_0|Q\(7),
	combout => \bram0|ram~35_combout\);

-- Location: LCCOMB_X38_Y3_N2
\bram0|ram~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~37_combout\ = (!\r32_0|Q\(1) & !\r32_0|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(1),
	datad => \r32_0|Q\(0),
	combout => \bram0|ram~37_combout\);

-- Location: LCCOMB_X38_Y3_N6
\bram0|ram~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bram0|ram~38_combout\ = (\write_enable1~0_combout\ & (\bram0|ram~36_combout\ & (\bram0|ram~35_combout\ & \bram0|ram~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_enable1~0_combout\,
	datab => \bram0|ram~36_combout\,
	datac => \bram0|ram~35_combout\,
	datad => \bram0|ram~37_combout\,
	combout => \bram0|ram~38_combout\);

-- Location: FF_X39_Y3_N29
\bram0|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(0),
	sload => VCC,
	ena => \bram0|ram~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram~20_q\);

-- Location: LCCOMB_X41_Y3_N14
\readdata[0]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[0]~75_combout\ = (\read_en~input_o\ & (\chipselect~input_o\ & (\bram0|ram~34_combout\ & !\add[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \chipselect~input_o\,
	datac => \bram0|ram~34_combout\,
	datad => \add[0]~input_o\,
	combout => \readdata[0]~75_combout\);

-- Location: LCCOMB_X39_Y3_N28
\readdata[0]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[0]~36_combout\ = (\readdata[0]~35_combout\ & ((\bram0|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\) # ((!\readdata[0]~75_combout\)))) # (!\readdata[0]~35_combout\ & (((\bram0|ram~20_q\ & \readdata[0]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[0]~35_combout\,
	datab => \bram0|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \bram0|ram~20_q\,
	datad => \readdata[0]~75_combout\,
	combout => \readdata[0]~36_combout\);

-- Location: FF_X39_Y3_N23
\bram0|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(1),
	sload => VCC,
	ena => \bram0|ram~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram~21_q\);

-- Location: LCCOMB_X43_Y3_N6
\r32_2|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_2|Q[1]~feeder_combout\ = \writedata[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[1]~input_o\,
	combout => \r32_2|Q[1]~feeder_combout\);

-- Location: FF_X43_Y3_N7
\r32_2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_2|Q[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(1));

-- Location: LCCOMB_X39_Y3_N22
\readdata[1]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[1]~37_combout\ = (\readdata[0]~75_combout\ & ((\readdata[0]~34_combout\) # ((\bram0|ram~21_q\)))) # (!\readdata[0]~75_combout\ & (!\readdata[0]~34_combout\ & ((\r32_2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[0]~75_combout\,
	datab => \readdata[0]~34_combout\,
	datac => \bram0|ram~21_q\,
	datad => \r32_2|Q\(1),
	combout => \readdata[1]~37_combout\);

-- Location: FF_X39_Y3_N5
\bram0|ram_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(22));

-- Location: LCCOMB_X39_Y3_N4
\readdata[1]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[1]~38_combout\ = (\readdata[1]~37_combout\ & ((\bram0|ram_rtl_0|auto_generated|ram_block1a1\) # ((!\readdata[0]~34_combout\)))) # (!\readdata[1]~37_combout\ & (((\bram0|ram_rtl_0_bypass\(22) & \readdata[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[1]~37_combout\,
	datab => \bram0|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \bram0|ram_rtl_0_bypass\(22),
	datad => \readdata[0]~34_combout\,
	combout => \readdata[1]~38_combout\);

-- Location: FF_X39_Y3_N1
\bram0|ram_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(23));

-- Location: FF_X43_Y3_N1
\r32_2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[2]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(2));

-- Location: LCCOMB_X39_Y3_N0
\readdata[2]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[2]~39_combout\ = (\readdata[0]~75_combout\ & (\readdata[0]~34_combout\)) # (!\readdata[0]~75_combout\ & ((\readdata[0]~34_combout\ & (\bram0|ram_rtl_0_bypass\(23))) # (!\readdata[0]~34_combout\ & ((\r32_2|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[0]~75_combout\,
	datab => \readdata[0]~34_combout\,
	datac => \bram0|ram_rtl_0_bypass\(23),
	datad => \r32_2|Q\(2),
	combout => \readdata[2]~39_combout\);

-- Location: FF_X38_Y3_N25
\bram0|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(2),
	sload => VCC,
	ena => \bram0|ram~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram~22_q\);

-- Location: LCCOMB_X38_Y3_N24
\readdata[2]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[2]~40_combout\ = (\readdata[2]~39_combout\ & ((\bram0|ram_rtl_0|auto_generated|ram_block1a2\) # ((!\readdata[0]~75_combout\)))) # (!\readdata[2]~39_combout\ & (((\bram0|ram~22_q\ & \readdata[0]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bram0|ram_rtl_0|auto_generated|ram_block1a2\,
	datab => \readdata[2]~39_combout\,
	datac => \bram0|ram~22_q\,
	datad => \readdata[0]~75_combout\,
	combout => \readdata[2]~40_combout\);

-- Location: FF_X39_Y3_N13
\bram0|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(3),
	sload => VCC,
	ena => \bram0|ram~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram~23_q\);

-- Location: LCCOMB_X39_Y3_N12
\readdata[3]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[3]~41_combout\ = (\readdata[0]~34_combout\ & (((\readdata[0]~75_combout\)))) # (!\readdata[0]~34_combout\ & ((\readdata[0]~75_combout\ & ((\bram0|ram~23_q\))) # (!\readdata[0]~75_combout\ & (\r32_2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_2|Q\(3),
	datab => \readdata[0]~34_combout\,
	datac => \bram0|ram~23_q\,
	datad => \readdata[0]~75_combout\,
	combout => \readdata[3]~41_combout\);

-- Location: FF_X39_Y3_N3
\bram0|ram_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(24));

-- Location: LCCOMB_X39_Y3_N2
\readdata[3]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[3]~42_combout\ = (\readdata[3]~41_combout\ & (((\bram0|ram_rtl_0|auto_generated|ram_block1a3\)) # (!\readdata[0]~34_combout\))) # (!\readdata[3]~41_combout\ & (\readdata[0]~34_combout\ & (\bram0|ram_rtl_0_bypass\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[3]~41_combout\,
	datab => \readdata[0]~34_combout\,
	datac => \bram0|ram_rtl_0_bypass\(24),
	datad => \bram0|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \readdata[3]~42_combout\);

-- Location: FF_X39_Y3_N7
\bram0|ram_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(25));

-- Location: LCCOMB_X43_Y3_N18
\r32_2|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r32_2|Q[4]~feeder_combout\ = \writedata[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[4]~input_o\,
	combout => \r32_2|Q[4]~feeder_combout\);

-- Location: FF_X43_Y3_N19
\r32_2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r32_2|Q[4]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(4));

-- Location: LCCOMB_X39_Y3_N6
\readdata[4]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[4]~43_combout\ = (\readdata[0]~75_combout\ & (\readdata[0]~34_combout\)) # (!\readdata[0]~75_combout\ & ((\readdata[0]~34_combout\ & (\bram0|ram_rtl_0_bypass\(25))) # (!\readdata[0]~34_combout\ & ((\r32_2|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[0]~75_combout\,
	datab => \readdata[0]~34_combout\,
	datac => \bram0|ram_rtl_0_bypass\(25),
	datad => \r32_2|Q\(4),
	combout => \readdata[4]~43_combout\);

-- Location: FF_X38_Y3_N15
\bram0|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(4),
	sload => VCC,
	ena => \bram0|ram~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram~24_q\);

-- Location: LCCOMB_X38_Y3_N14
\readdata[4]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[4]~44_combout\ = (\readdata[4]~43_combout\ & ((\bram0|ram_rtl_0|auto_generated|ram_block1a4\) # ((!\readdata[0]~75_combout\)))) # (!\readdata[4]~43_combout\ & (((\bram0|ram~24_q\ & \readdata[0]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[4]~43_combout\,
	datab => \bram0|ram_rtl_0|auto_generated|ram_block1a4\,
	datac => \bram0|ram~24_q\,
	datad => \readdata[0]~75_combout\,
	combout => \readdata[4]~44_combout\);

-- Location: FF_X38_Y3_N5
\bram0|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(5),
	sload => VCC,
	ena => \bram0|ram~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram~25_q\);

-- Location: LCCOMB_X38_Y3_N4
\readdata[5]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[5]~45_combout\ = (\readdata[0]~34_combout\ & (((\readdata[0]~75_combout\)))) # (!\readdata[0]~34_combout\ & ((\readdata[0]~75_combout\ & ((\bram0|ram~25_q\))) # (!\readdata[0]~75_combout\ & (\r32_2|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_2|Q\(5),
	datab => \readdata[0]~34_combout\,
	datac => \bram0|ram~25_q\,
	datad => \readdata[0]~75_combout\,
	combout => \readdata[5]~45_combout\);

-- Location: FF_X39_Y3_N9
\bram0|ram_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(26));

-- Location: LCCOMB_X39_Y3_N8
\readdata[5]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[5]~46_combout\ = (\readdata[5]~45_combout\ & ((\bram0|ram_rtl_0|auto_generated|ram_block1a5\) # ((!\readdata[0]~34_combout\)))) # (!\readdata[5]~45_combout\ & (((\bram0|ram_rtl_0_bypass\(26) & \readdata[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bram0|ram_rtl_0|auto_generated|ram_block1a5\,
	datab => \readdata[5]~45_combout\,
	datac => \bram0|ram_rtl_0_bypass\(26),
	datad => \readdata[0]~34_combout\,
	combout => \readdata[5]~46_combout\);

-- Location: FF_X39_Y3_N19
\bram0|ram_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(27));

-- Location: LCCOMB_X39_Y3_N18
\readdata[6]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[6]~47_combout\ = (\readdata[0]~34_combout\ & (((\bram0|ram_rtl_0_bypass\(27)) # (\readdata[0]~75_combout\)))) # (!\readdata[0]~34_combout\ & (\r32_2|Q\(6) & ((!\readdata[0]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_2|Q\(6),
	datab => \readdata[0]~34_combout\,
	datac => \bram0|ram_rtl_0_bypass\(27),
	datad => \readdata[0]~75_combout\,
	combout => \readdata[6]~47_combout\);

-- Location: FF_X38_Y3_N23
\bram0|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(6),
	sload => VCC,
	ena => \bram0|ram~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram~26_q\);

-- Location: LCCOMB_X38_Y3_N22
\readdata[6]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[6]~48_combout\ = (\readdata[0]~75_combout\ & ((\readdata[6]~47_combout\ & ((\bram0|ram_rtl_0|auto_generated|ram_block1a6\))) # (!\readdata[6]~47_combout\ & (\bram0|ram~26_q\)))) # (!\readdata[0]~75_combout\ & (\readdata[6]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[0]~75_combout\,
	datab => \readdata[6]~47_combout\,
	datac => \bram0|ram~26_q\,
	datad => \bram0|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \readdata[6]~48_combout\);

-- Location: FF_X38_Y3_N17
\bram0|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(7),
	sload => VCC,
	ena => \bram0|ram~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram~27_q\);

-- Location: LCCOMB_X38_Y3_N16
\readdata[7]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[7]~49_combout\ = (\readdata[0]~34_combout\ & (((\readdata[0]~75_combout\)))) # (!\readdata[0]~34_combout\ & ((\readdata[0]~75_combout\ & ((\bram0|ram~27_q\))) # (!\readdata[0]~75_combout\ & (\r32_2|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_2|Q\(7),
	datab => \readdata[0]~34_combout\,
	datac => \bram0|ram~27_q\,
	datad => \readdata[0]~75_combout\,
	combout => \readdata[7]~49_combout\);

-- Location: FF_X39_Y3_N21
\bram0|ram_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r32_1|Q\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bram0|ram_rtl_0_bypass\(28));

-- Location: LCCOMB_X39_Y3_N20
\readdata[7]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[7]~50_combout\ = (\readdata[7]~49_combout\ & (((\bram0|ram_rtl_0|auto_generated|ram_block1a7\)) # (!\readdata[0]~34_combout\))) # (!\readdata[7]~49_combout\ & (\readdata[0]~34_combout\ & (\bram0|ram_rtl_0_bypass\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[7]~49_combout\,
	datab => \readdata[0]~34_combout\,
	datac => \bram0|ram_rtl_0_bypass\(28),
	datad => \bram0|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \readdata[7]~50_combout\);

-- Location: FF_X43_Y3_N9
\r32_2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[8]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(8));

-- Location: LCCOMB_X43_Y3_N8
\readdata[8]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[8]~51_combout\ = (\r32_2|Q\(8) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(8),
	datad => \chipselect~input_o\,
	combout => \readdata[8]~51_combout\);

-- Location: FF_X51_Y25_N29
\r32_2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[9]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(9));

-- Location: LCCOMB_X51_Y25_N28
\readdata[9]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[9]~52_combout\ = (\r32_2|Q\(9) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(9),
	datad => \chipselect~input_o\,
	combout => \readdata[9]~52_combout\);

-- Location: IOIBUF_X52_Y28_N1
\writedata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(10),
	o => \writedata[10]~input_o\);

-- Location: FF_X51_Y25_N3
\r32_2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[10]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(10));

-- Location: LCCOMB_X51_Y25_N2
\readdata[10]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[10]~53_combout\ = (\r32_2|Q\(10) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(10),
	datad => \chipselect~input_o\,
	combout => \readdata[10]~53_combout\);

-- Location: IOIBUF_X52_Y31_N8
\writedata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(11),
	o => \writedata[11]~input_o\);

-- Location: FF_X51_Y25_N9
\r32_2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[11]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(11));

-- Location: LCCOMB_X51_Y25_N8
\readdata[11]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[11]~54_combout\ = (\r32_2|Q\(11) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(11),
	datad => \chipselect~input_o\,
	combout => \readdata[11]~54_combout\);

-- Location: IOIBUF_X52_Y25_N1
\writedata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(12),
	o => \writedata[12]~input_o\);

-- Location: FF_X51_Y25_N23
\r32_2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[12]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(12));

-- Location: LCCOMB_X51_Y25_N22
\readdata[12]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[12]~55_combout\ = (\r32_2|Q\(12) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(12),
	datad => \chipselect~input_o\,
	combout => \readdata[12]~55_combout\);

-- Location: IOIBUF_X25_Y0_N8
\writedata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(13),
	o => \writedata[13]~input_o\);

-- Location: FF_X43_Y3_N15
\r32_2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[13]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(13));

-- Location: LCCOMB_X43_Y3_N14
\readdata[13]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[13]~56_combout\ = (\r32_2|Q\(13) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(13),
	datad => \chipselect~input_o\,
	combout => \readdata[13]~56_combout\);

-- Location: IOIBUF_X52_Y25_N8
\writedata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(14),
	o => \writedata[14]~input_o\);

-- Location: FF_X51_Y25_N1
\r32_2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[14]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(14));

-- Location: LCCOMB_X51_Y25_N0
\readdata[14]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[14]~57_combout\ = (\r32_2|Q\(14) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(14),
	datad => \chipselect~input_o\,
	combout => \readdata[14]~57_combout\);

-- Location: IOIBUF_X52_Y31_N1
\writedata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(15),
	o => \writedata[15]~input_o\);

-- Location: FF_X51_Y25_N27
\r32_2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[15]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(15));

-- Location: LCCOMB_X51_Y25_N26
\readdata[15]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[15]~58_combout\ = (\r32_2|Q\(15) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(15),
	datad => \chipselect~input_o\,
	combout => \readdata[15]~58_combout\);

-- Location: IOIBUF_X52_Y30_N8
\writedata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(16),
	o => \writedata[16]~input_o\);

-- Location: FF_X51_Y25_N13
\r32_2|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[16]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(16));

-- Location: LCCOMB_X51_Y25_N12
\readdata[16]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[16]~59_combout\ = (\r32_2|Q\(16) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(16),
	datad => \chipselect~input_o\,
	combout => \readdata[16]~59_combout\);

-- Location: IOIBUF_X48_Y0_N1
\writedata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(17),
	o => \writedata[17]~input_o\);

-- Location: FF_X43_Y3_N5
\r32_2|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[17]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(17));

-- Location: LCCOMB_X43_Y3_N4
\readdata[17]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[17]~60_combout\ = (\r32_2|Q\(17) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(17),
	datad => \chipselect~input_o\,
	combout => \readdata[17]~60_combout\);

-- Location: IOIBUF_X52_Y11_N1
\writedata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(18),
	o => \writedata[18]~input_o\);

-- Location: FF_X43_Y3_N23
\r32_2|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[18]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(18));

-- Location: LCCOMB_X43_Y3_N22
\readdata[18]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[18]~61_combout\ = (\r32_2|Q\(18) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(18),
	datad => \chipselect~input_o\,
	combout => \readdata[18]~61_combout\);

-- Location: IOIBUF_X48_Y0_N8
\writedata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(19),
	o => \writedata[19]~input_o\);

-- Location: FF_X43_Y3_N21
\r32_2|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[19]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(19));

-- Location: LCCOMB_X43_Y3_N20
\readdata[19]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[19]~62_combout\ = (\r32_2|Q\(19) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(19),
	datad => \chipselect~input_o\,
	combout => \readdata[19]~62_combout\);

-- Location: IOIBUF_X27_Y41_N1
\writedata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(20),
	o => \writedata[20]~input_o\);

-- Location: FF_X51_Y25_N15
\r32_2|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[20]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(20));

-- Location: LCCOMB_X51_Y25_N14
\readdata[20]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[20]~63_combout\ = (\r32_2|Q\(20) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(20),
	datad => \chipselect~input_o\,
	combout => \readdata[20]~63_combout\);

-- Location: IOIBUF_X27_Y41_N8
\writedata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(21),
	o => \writedata[21]~input_o\);

-- Location: FF_X51_Y25_N21
\r32_2|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[21]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(21));

-- Location: LCCOMB_X51_Y25_N20
\readdata[21]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[21]~64_combout\ = (\r32_2|Q\(21) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(21),
	datad => \chipselect~input_o\,
	combout => \readdata[21]~64_combout\);

-- Location: IOIBUF_X52_Y23_N1
\writedata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(22),
	o => \writedata[22]~input_o\);

-- Location: FF_X51_Y25_N7
\r32_2|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[22]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(22));

-- Location: LCCOMB_X51_Y25_N6
\readdata[22]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[22]~65_combout\ = (\r32_2|Q\(22) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(22),
	datad => \chipselect~input_o\,
	combout => \readdata[22]~65_combout\);

-- Location: IOIBUF_X52_Y30_N1
\writedata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(23),
	o => \writedata[23]~input_o\);

-- Location: FF_X51_Y25_N25
\r32_2|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[23]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(23));

-- Location: LCCOMB_X51_Y25_N24
\readdata[23]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[23]~66_combout\ = (\r32_2|Q\(23) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(23),
	datad => \chipselect~input_o\,
	combout => \readdata[23]~66_combout\);

-- Location: IOIBUF_X46_Y0_N15
\writedata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(24),
	o => \writedata[24]~input_o\);

-- Location: FF_X43_Y3_N27
\r32_2|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[24]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(24));

-- Location: LCCOMB_X43_Y3_N26
\readdata[24]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[24]~67_combout\ = (\r32_2|Q\(24) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(24),
	datad => \chipselect~input_o\,
	combout => \readdata[24]~67_combout\);

-- Location: IOIBUF_X52_Y23_N8
\writedata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(25),
	o => \writedata[25]~input_o\);

-- Location: FF_X51_Y25_N11
\r32_2|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[25]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(25));

-- Location: LCCOMB_X51_Y25_N10
\readdata[25]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[25]~68_combout\ = (\r32_2|Q\(25) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(25),
	datad => \chipselect~input_o\,
	combout => \readdata[25]~68_combout\);

-- Location: IOIBUF_X43_Y0_N1
\writedata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(26),
	o => \writedata[26]~input_o\);

-- Location: FF_X43_Y3_N25
\r32_2|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[26]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(26));

-- Location: LCCOMB_X43_Y3_N24
\readdata[26]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[26]~69_combout\ = (\r32_2|Q\(26) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(26),
	datad => \chipselect~input_o\,
	combout => \readdata[26]~69_combout\);

-- Location: IOIBUF_X52_Y9_N8
\writedata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(27),
	o => \writedata[27]~input_o\);

-- Location: FF_X43_Y3_N11
\r32_2|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[27]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(27));

-- Location: LCCOMB_X43_Y3_N10
\readdata[27]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[27]~70_combout\ = (\r32_2|Q\(27) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(27),
	datad => \chipselect~input_o\,
	combout => \readdata[27]~70_combout\);

-- Location: IOIBUF_X52_Y19_N1
\writedata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(28),
	o => \writedata[28]~input_o\);

-- Location: FF_X51_Y25_N5
\r32_2|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[28]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(28));

-- Location: LCCOMB_X51_Y25_N4
\readdata[28]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[28]~71_combout\ = (\r32_2|Q\(28) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(28),
	datad => \chipselect~input_o\,
	combout => \readdata[28]~71_combout\);

-- Location: IOIBUF_X52_Y27_N8
\writedata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(29),
	o => \writedata[29]~input_o\);

-- Location: FF_X51_Y25_N19
\r32_2|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[29]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(29));

-- Location: LCCOMB_X51_Y25_N18
\readdata[29]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[29]~72_combout\ = (\r32_2|Q\(29) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(29),
	datad => \chipselect~input_o\,
	combout => \readdata[29]~72_combout\);

-- Location: IOIBUF_X43_Y0_N8
\writedata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(30),
	o => \writedata[30]~input_o\);

-- Location: FF_X43_Y3_N17
\r32_2|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[30]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(30));

-- Location: LCCOMB_X43_Y3_N16
\readdata[30]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[30]~73_combout\ = (\r32_2|Q\(30) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(30),
	datad => \chipselect~input_o\,
	combout => \readdata[30]~73_combout\);

-- Location: IOIBUF_X52_Y28_N8
\writedata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(31),
	o => \writedata[31]~input_o\);

-- Location: FF_X51_Y25_N17
\r32_2|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \writedata[31]~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r32_2|Q\(31));

-- Location: LCCOMB_X51_Y25_N16
\readdata[31]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readdata[31]~74_combout\ = (\r32_2|Q\(31) & (((\add[0]~input_o\) # (!\chipselect~input_o\)) # (!\read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~input_o\,
	datab => \add[0]~input_o\,
	datac => \r32_2|Q\(31),
	datad => \chipselect~input_o\,
	combout => \readdata[31]~74_combout\);

ww_readdata(0) <= \readdata[0]~output_o\;

ww_readdata(1) <= \readdata[1]~output_o\;

ww_readdata(2) <= \readdata[2]~output_o\;

ww_readdata(3) <= \readdata[3]~output_o\;

ww_readdata(4) <= \readdata[4]~output_o\;

ww_readdata(5) <= \readdata[5]~output_o\;

ww_readdata(6) <= \readdata[6]~output_o\;

ww_readdata(7) <= \readdata[7]~output_o\;

ww_readdata(8) <= \readdata[8]~output_o\;

ww_readdata(9) <= \readdata[9]~output_o\;

ww_readdata(10) <= \readdata[10]~output_o\;

ww_readdata(11) <= \readdata[11]~output_o\;

ww_readdata(12) <= \readdata[12]~output_o\;

ww_readdata(13) <= \readdata[13]~output_o\;

ww_readdata(14) <= \readdata[14]~output_o\;

ww_readdata(15) <= \readdata[15]~output_o\;

ww_readdata(16) <= \readdata[16]~output_o\;

ww_readdata(17) <= \readdata[17]~output_o\;

ww_readdata(18) <= \readdata[18]~output_o\;

ww_readdata(19) <= \readdata[19]~output_o\;

ww_readdata(20) <= \readdata[20]~output_o\;

ww_readdata(21) <= \readdata[21]~output_o\;

ww_readdata(22) <= \readdata[22]~output_o\;

ww_readdata(23) <= \readdata[23]~output_o\;

ww_readdata(24) <= \readdata[24]~output_o\;

ww_readdata(25) <= \readdata[25]~output_o\;

ww_readdata(26) <= \readdata[26]~output_o\;

ww_readdata(27) <= \readdata[27]~output_o\;

ww_readdata(28) <= \readdata[28]~output_o\;

ww_readdata(29) <= \readdata[29]~output_o\;

ww_readdata(30) <= \readdata[30]~output_o\;

ww_readdata(31) <= \readdata[31]~output_o\;
END structure;


