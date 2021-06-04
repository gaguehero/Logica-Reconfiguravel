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

-- DATE "05/05/2021 19:27:10"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cronometro IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	Q : OUT IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0);
	B1 : IN std_logic;
	B2 : IN std_logic
	);
END cronometro;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cronometro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \centesimos|unidade|CONT[3]~2_combout\ : std_logic;
SIGNAL \centesimos|unidade|CONT[3]~7_combout\ : std_logic;
SIGNAL \centesimos|dezena|Add0~0_combout\ : std_logic;
SIGNAL \centesimos|CleaRR1~0_combout\ : std_logic;
SIGNAL \segundos|unidade|Add0~0_combout\ : std_logic;
SIGNAL \segundos|unidade|Add0~1_combout\ : std_logic;
SIGNAL \segundos|dezena|CONT~3_combout\ : std_logic;
SIGNAL \segundos|dezena|Add0~0_combout\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[9]~output_o\ : std_logic;
SIGNAL \Q[10]~output_o\ : std_logic;
SIGNAL \Q[11]~output_o\ : std_logic;
SIGNAL \Q[12]~output_o\ : std_logic;
SIGNAL \Q[13]~output_o\ : std_logic;
SIGNAL \Q[14]~output_o\ : std_logic;
SIGNAL \Q[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \centesimos|unidade|CONT[1]~3_combout\ : std_logic;
SIGNAL \centesimos|unidade|CONT[1]~4_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \centesimos|unidade|CONT[2]~5_combout\ : std_logic;
SIGNAL \centesimos|unidade|CONT[2]~6_combout\ : std_logic;
SIGNAL \centesimos|unidade|Add0~0_combout\ : std_logic;
SIGNAL \centesimos|unidade|CONT[3]~8_combout\ : std_logic;
SIGNAL \centesimos|Equal1~0_combout\ : std_logic;
SIGNAL \centesimos|unidade|CONT[0]~9_combout\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \centesimos|dezena|CONT~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \centesimos|CarrY~combout\ : std_logic;
SIGNAL \centesimos|dezena|CONT[0]~3_combout\ : std_logic;
SIGNAL \centesimos|dezena|CONT~7_combout\ : std_logic;
SIGNAL \centesimos|Equal0~0_combout\ : std_logic;
SIGNAL \centesimos|CleaR2~combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \centesimos|dezena|CONT~2_combout\ : std_logic;
SIGNAL \centesimos|dezena|CONT~4_combout\ : std_logic;
SIGNAL \centesimos|dezena|CONT~6_combout\ : std_logic;
SIGNAL \segundos|unidade|CONT[0]~2_combout\ : std_logic;
SIGNAL \segundos|unidade|CONT[0]~7_combout\ : std_logic;
SIGNAL \segundos|unidade|CONT[2]~5_combout\ : std_logic;
SIGNAL \segundos|unidade|CONT[3]~6_combout\ : std_logic;
SIGNAL \segundos|process_0~0_combout\ : std_logic;
SIGNAL \segundos|unidade|CONT[3]~3_combout\ : std_logic;
SIGNAL \segundos|unidade|CONT[1]~4_combout\ : std_logic;
SIGNAL \segundos|process_0~1_combout\ : std_logic;
SIGNAL \segundos|CleaR2~combout\ : std_logic;
SIGNAL \segundos|dezena|CONT~0_combout\ : std_logic;
SIGNAL \segundos|dezena|CONT[0]~feeder_combout\ : std_logic;
SIGNAL \segundos|dezena|CONT[1]~feeder_combout\ : std_logic;
SIGNAL \segundos|dezena|CONT~4_combout\ : std_logic;
SIGNAL \segundos|process_0~2_combout\ : std_logic;
SIGNAL \segundos|process_0~3_combout\ : std_logic;
SIGNAL \segundos|CarrY~combout\ : std_logic;
SIGNAL \segundos|dezena|CONT[0]~1_combout\ : std_logic;
SIGNAL \segundos|dezena|CONT~2_combout\ : std_logic;
SIGNAL \segundos|dezena|CONT~5_combout\ : std_logic;
SIGNAL \centesimos|dezena|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segundos|unidade|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segundos|dezena|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \centesimos|unidade|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
Q <= IEEE.NUMERIC_STD.UNSIGNED(ww_Q);
ww_B1 <= B1;
ww_B2 <= B2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;

-- Location: LCCOMB_X19_Y1_N4
\centesimos|unidade|CONT[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|unidade|CONT[3]~2_combout\ = (!\B2~input_o\ & \B1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2~input_o\,
	datac => \B1~input_o\,
	combout => \centesimos|unidade|CONT[3]~2_combout\);

-- Location: LCCOMB_X18_Y1_N8
\centesimos|unidade|CONT[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|unidade|CONT[3]~7_combout\ = (\centesimos|unidade|CONT\(3) & (\B1~input_o\ & !\B2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|unidade|CONT\(3),
	datab => \B1~input_o\,
	datac => \B2~input_o\,
	combout => \centesimos|unidade|CONT[3]~7_combout\);

-- Location: LCCOMB_X17_Y1_N24
\centesimos|dezena|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|dezena|Add0~0_combout\ = (\centesimos|dezena|CONT\(0) & \centesimos|dezena|CONT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centesimos|dezena|CONT\(0),
	datac => \centesimos|dezena|CONT\(1),
	combout => \centesimos|dezena|Add0~0_combout\);

-- Location: LCCOMB_X18_Y1_N22
\centesimos|CleaRR1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|CleaRR1~0_combout\ = (\B2~input_o\ & \B1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2~input_o\,
	datad => \B1~input_o\,
	combout => \centesimos|CleaRR1~0_combout\);

-- Location: LCCOMB_X18_Y1_N26
\segundos|unidade|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|unidade|Add0~0_combout\ = \segundos|unidade|CONT\(2) $ (((\segundos|unidade|CONT\(1) & \segundos|unidade|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|unidade|CONT\(1),
	datab => \segundos|unidade|CONT\(0),
	datad => \segundos|unidade|CONT\(2),
	combout => \segundos|unidade|Add0~0_combout\);

-- Location: LCCOMB_X18_Y1_N4
\segundos|unidade|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|unidade|Add0~1_combout\ = \segundos|unidade|CONT\(3) $ (((\segundos|unidade|CONT\(1) & (\segundos|unidade|CONT\(0) & \segundos|unidade|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|unidade|CONT\(1),
	datab => \segundos|unidade|CONT\(0),
	datac => \segundos|unidade|CONT\(2),
	datad => \segundos|unidade|CONT\(3),
	combout => \segundos|unidade|Add0~1_combout\);

-- Location: LCCOMB_X16_Y1_N18
\segundos|dezena|CONT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|dezena|CONT~3_combout\ = (\segundos|dezena|CONT~2_combout\ & (\segundos|dezena|CONT\(0) $ (\segundos|dezena|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|dezena|CONT~2_combout\,
	datac => \segundos|dezena|CONT\(0),
	datad => \segundos|dezena|CONT\(1),
	combout => \segundos|dezena|CONT~3_combout\);

-- Location: LCCOMB_X16_Y1_N20
\segundos|dezena|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|dezena|Add0~0_combout\ = (\segundos|dezena|CONT\(0) & \segundos|dezena|CONT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segundos|dezena|CONT\(0),
	datad => \segundos|dezena|CONT\(1),
	combout => \segundos|dezena|Add0~0_combout\);

-- Location: IOOBUF_X31_Y0_N2
\Q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \centesimos|unidade|CONT\(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \centesimos|unidade|CONT\(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\Q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \centesimos|unidade|CONT\(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\Q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \centesimos|unidade|CONT\(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\Q[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \centesimos|dezena|CONT\(0),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\Q[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \centesimos|dezena|CONT\(1),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Q[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \centesimos|dezena|CONT\(2),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Q[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \centesimos|dezena|CONT\(3),
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Q[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segundos|unidade|CONT\(0),
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Q[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segundos|unidade|CONT\(1),
	devoe => ww_devoe,
	o => \Q[9]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\Q[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segundos|unidade|CONT\(2),
	devoe => ww_devoe,
	o => \Q[10]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\Q[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segundos|unidade|CONT\(3),
	devoe => ww_devoe,
	o => \Q[11]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Q[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segundos|dezena|CONT\(0),
	devoe => ww_devoe,
	o => \Q[12]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\Q[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segundos|dezena|CONT\(1),
	devoe => ww_devoe,
	o => \Q[13]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\Q[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segundos|dezena|CONT\(2),
	devoe => ww_devoe,
	o => \Q[14]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Q[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segundos|dezena|CONT\(3),
	devoe => ww_devoe,
	o => \Q[15]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\B1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X18_Y1_N28
\centesimos|unidade|CONT[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|unidade|CONT[1]~3_combout\ = (\B1~input_o\ & (!\B2~input_o\ & (\centesimos|unidade|CONT\(1)))) # (!\B1~input_o\ & ((\centesimos|unidade|CONT\(1) $ (\centesimos|unidade|CONT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \centesimos|unidade|CONT\(1),
	datac => \centesimos|unidade|CONT\(0),
	datad => \B1~input_o\,
	combout => \centesimos|unidade|CONT[1]~3_combout\);

-- Location: LCCOMB_X18_Y1_N20
\centesimos|unidade|CONT[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|unidade|CONT[1]~4_combout\ = (\centesimos|unidade|CONT[1]~3_combout\ & !\centesimos|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centesimos|unidade|CONT[1]~3_combout\,
	datad => \centesimos|Equal1~0_combout\,
	combout => \centesimos|unidade|CONT[1]~4_combout\);

-- Location: IOIBUF_X16_Y0_N22
\RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G19
\RST~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X18_Y1_N21
\centesimos|unidade|CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \centesimos|unidade|CONT[1]~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesimos|unidade|CONT\(1));

-- Location: LCCOMB_X18_Y1_N0
\centesimos|unidade|CONT[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|unidade|CONT[2]~5_combout\ = (!\B1~input_o\ & (\centesimos|unidade|CONT\(2) $ (((\centesimos|unidade|CONT\(1) & \centesimos|unidade|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~input_o\,
	datab => \centesimos|unidade|CONT\(1),
	datac => \centesimos|unidade|CONT\(2),
	datad => \centesimos|unidade|CONT\(0),
	combout => \centesimos|unidade|CONT[2]~5_combout\);

-- Location: LCCOMB_X18_Y1_N24
\centesimos|unidade|CONT[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|unidade|CONT[2]~6_combout\ = (!\centesimos|Equal1~0_combout\ & ((\centesimos|unidade|CONT[2]~5_combout\) # ((\centesimos|unidade|CONT[3]~2_combout\ & \centesimos|unidade|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|unidade|CONT[3]~2_combout\,
	datab => \centesimos|unidade|CONT[2]~5_combout\,
	datac => \centesimos|unidade|CONT\(2),
	datad => \centesimos|Equal1~0_combout\,
	combout => \centesimos|unidade|CONT[2]~6_combout\);

-- Location: FF_X18_Y1_N25
\centesimos|unidade|CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \centesimos|unidade|CONT[2]~6_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesimos|unidade|CONT\(2));

-- Location: LCCOMB_X18_Y1_N2
\centesimos|unidade|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|unidade|Add0~0_combout\ = \centesimos|unidade|CONT\(3) $ (((\centesimos|unidade|CONT\(1) & (\centesimos|unidade|CONT\(0) & \centesimos|unidade|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|unidade|CONT\(3),
	datab => \centesimos|unidade|CONT\(1),
	datac => \centesimos|unidade|CONT\(0),
	datad => \centesimos|unidade|CONT\(2),
	combout => \centesimos|unidade|Add0~0_combout\);

-- Location: LCCOMB_X18_Y1_N30
\centesimos|unidade|CONT[3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|unidade|CONT[3]~8_combout\ = (!\centesimos|Equal1~0_combout\ & ((\centesimos|unidade|CONT[3]~7_combout\) # ((!\B1~input_o\ & \centesimos|unidade|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|unidade|CONT[3]~7_combout\,
	datab => \B1~input_o\,
	datac => \centesimos|unidade|Add0~0_combout\,
	datad => \centesimos|Equal1~0_combout\,
	combout => \centesimos|unidade|CONT[3]~8_combout\);

-- Location: FF_X18_Y1_N31
\centesimos|unidade|CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \centesimos|unidade|CONT[3]~8_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesimos|unidade|CONT\(3));

-- Location: LCCOMB_X17_Y1_N18
\centesimos|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|Equal1~0_combout\ = (!\centesimos|unidade|CONT\(1) & (\centesimos|unidade|CONT\(0) & (\centesimos|unidade|CONT\(3) & !\centesimos|unidade|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|unidade|CONT\(1),
	datab => \centesimos|unidade|CONT\(0),
	datac => \centesimos|unidade|CONT\(3),
	datad => \centesimos|unidade|CONT\(2),
	combout => \centesimos|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y1_N14
\centesimos|unidade|CONT[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|unidade|CONT[0]~9_combout\ = (!\centesimos|Equal1~0_combout\ & ((\B1~input_o\ & (!\B2~input_o\ & \centesimos|unidade|CONT\(0))) # (!\B1~input_o\ & ((!\centesimos|unidade|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \B1~input_o\,
	datac => \centesimos|unidade|CONT\(0),
	datad => \centesimos|Equal1~0_combout\,
	combout => \centesimos|unidade|CONT[0]~9_combout\);

-- Location: FF_X18_Y1_N15
\centesimos|unidade|CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \centesimos|unidade|CONT[0]~9_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesimos|unidade|CONT\(0));

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y1_N22
\centesimos|dezena|CONT~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|dezena|CONT~5_combout\ = (\centesimos|dezena|CONT~4_combout\ & (\centesimos|dezena|CONT\(0) $ (\centesimos|dezena|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|dezena|CONT~4_combout\,
	datab => \centesimos|dezena|CONT\(0),
	datad => \centesimos|dezena|CONT\(1),
	combout => \centesimos|dezena|CONT~5_combout\);

-- Location: LCCOMB_X17_Y1_N20
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\centesimos|Equal1~0_combout\) # (!\centesimos|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \centesimos|Equal0~0_combout\,
	datad => \centesimos|Equal1~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y1_N2
\centesimos|CarrY\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|CarrY~combout\ = (\Equal0~0_combout\ & (\centesimos|Equal1~0_combout\)) # (!\Equal0~0_combout\ & ((\centesimos|CarrY~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centesimos|Equal1~0_combout\,
	datac => \centesimos|CarrY~combout\,
	datad => \Equal0~0_combout\,
	combout => \centesimos|CarrY~combout\);

-- Location: LCCOMB_X17_Y1_N0
\centesimos|dezena|CONT[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|dezena|CONT[0]~3_combout\ = (\centesimos|CleaR2~combout\) # ((\centesimos|CarrY~combout\) # ((\B2~input_o\ & \B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \centesimos|CleaR2~combout\,
	datac => \centesimos|CarrY~combout\,
	datad => \B1~input_o\,
	combout => \centesimos|dezena|CONT[0]~3_combout\);

-- Location: FF_X17_Y1_N25
\centesimos|dezena|CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \centesimos|dezena|CONT~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \centesimos|dezena|CONT[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesimos|dezena|CONT\(1));

-- Location: LCCOMB_X17_Y1_N14
\centesimos|dezena|CONT~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|dezena|CONT~7_combout\ = (\centesimos|dezena|CONT~4_combout\ & (\centesimos|dezena|CONT\(2) $ (((\centesimos|dezena|CONT\(0) & \centesimos|dezena|CONT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|dezena|CONT~4_combout\,
	datab => \centesimos|dezena|CONT\(0),
	datac => \centesimos|dezena|CONT\(2),
	datad => \centesimos|dezena|CONT\(1),
	combout => \centesimos|dezena|CONT~7_combout\);

-- Location: FF_X17_Y1_N23
\centesimos|dezena|CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \centesimos|dezena|CONT~7_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \centesimos|dezena|CONT[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesimos|dezena|CONT\(2));

-- Location: LCCOMB_X17_Y1_N4
\centesimos|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|Equal0~0_combout\ = (\centesimos|dezena|CONT\(3) & (!\centesimos|dezena|CONT\(1) & (!\centesimos|dezena|CONT\(2) & \centesimos|dezena|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|dezena|CONT\(3),
	datab => \centesimos|dezena|CONT\(1),
	datac => \centesimos|dezena|CONT\(2),
	datad => \centesimos|dezena|CONT\(0),
	combout => \centesimos|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y1_N16
\centesimos|CleaR2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|CleaR2~combout\ = (\centesimos|Equal1~0_combout\ & ((\centesimos|Equal0~0_combout\) # (\centesimos|CleaR2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centesimos|Equal1~0_combout\,
	datac => \centesimos|Equal0~0_combout\,
	datad => \centesimos|CleaR2~combout\,
	combout => \centesimos|CleaR2~combout\);

-- Location: IOIBUF_X20_Y0_N1
\B2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X16_Y1_N28
\centesimos|dezena|CONT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|dezena|CONT~2_combout\ = (!\centesimos|dezena|CONT\(0) & (!\centesimos|CleaR2~combout\ & ((!\B2~input_o\) # (!\B1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~input_o\,
	datab => \centesimos|dezena|CONT\(0),
	datac => \centesimos|CleaR2~combout\,
	datad => \B2~input_o\,
	combout => \centesimos|dezena|CONT~2_combout\);

-- Location: FF_X17_Y1_N29
\centesimos|dezena|CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \centesimos|dezena|CONT~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \centesimos|dezena|CONT[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesimos|dezena|CONT\(0));

-- Location: LCCOMB_X17_Y1_N28
\centesimos|dezena|CONT~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|dezena|CONT~4_combout\ = (!\centesimos|CleaR2~combout\ & ((!\B1~input_o\) # (!\B2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \centesimos|CleaR2~combout\,
	datad => \B1~input_o\,
	combout => \centesimos|dezena|CONT~4_combout\);

-- Location: LCCOMB_X17_Y1_N30
\centesimos|dezena|CONT~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \centesimos|dezena|CONT~6_combout\ = (\centesimos|dezena|CONT~4_combout\ & (\centesimos|dezena|CONT\(3) $ (((\centesimos|dezena|Add0~0_combout\ & \centesimos|dezena|CONT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|dezena|Add0~0_combout\,
	datab => \centesimos|dezena|CONT\(2),
	datac => \centesimos|dezena|CONT\(3),
	datad => \centesimos|dezena|CONT~4_combout\,
	combout => \centesimos|dezena|CONT~6_combout\);

-- Location: FF_X17_Y1_N31
\centesimos|dezena|CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \centesimos|dezena|CONT~6_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \centesimos|dezena|CONT[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \centesimos|dezena|CONT\(3));

-- Location: LCCOMB_X18_Y1_N18
\segundos|unidade|CONT[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|unidade|CONT[0]~2_combout\ = (!\centesimos|CleaRR1~0_combout\ & (\segundos|unidade|CONT\(0) $ (((\centesimos|Equal0~0_combout\ & \centesimos|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|CleaRR1~0_combout\,
	datab => \centesimos|Equal0~0_combout\,
	datac => \segundos|unidade|CONT\(0),
	datad => \centesimos|Equal1~0_combout\,
	combout => \segundos|unidade|CONT[0]~2_combout\);

-- Location: FF_X18_Y1_N19
\segundos|unidade|CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \segundos|unidade|CONT[0]~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundos|unidade|CONT\(0));

-- Location: LCCOMB_X17_Y1_N6
\segundos|unidade|CONT[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|unidade|CONT[0]~7_combout\ = (\B2~input_o\ & (!\B1~input_o\ & ((!\centesimos|Equal1~0_combout\) # (!\centesimos|Equal0~0_combout\)))) # (!\B2~input_o\ & (((!\centesimos|Equal1~0_combout\) # (!\centesimos|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \B1~input_o\,
	datac => \centesimos|Equal0~0_combout\,
	datad => \centesimos|Equal1~0_combout\,
	combout => \segundos|unidade|CONT[0]~7_combout\);

-- Location: LCCOMB_X18_Y1_N10
\segundos|unidade|CONT[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|unidade|CONT[2]~5_combout\ = (\segundos|unidade|Add0~0_combout\ & ((\segundos|unidade|CONT[3]~3_combout\) # ((\segundos|unidade|CONT[0]~7_combout\ & \segundos|unidade|CONT\(2))))) # (!\segundos|unidade|Add0~0_combout\ & 
-- (\segundos|unidade|CONT[0]~7_combout\ & (\segundos|unidade|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|unidade|Add0~0_combout\,
	datab => \segundos|unidade|CONT[0]~7_combout\,
	datac => \segundos|unidade|CONT\(2),
	datad => \segundos|unidade|CONT[3]~3_combout\,
	combout => \segundos|unidade|CONT[2]~5_combout\);

-- Location: FF_X18_Y1_N11
\segundos|unidade|CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \segundos|unidade|CONT[2]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundos|unidade|CONT\(2));

-- Location: LCCOMB_X18_Y1_N12
\segundos|unidade|CONT[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|unidade|CONT[3]~6_combout\ = (\segundos|unidade|Add0~1_combout\ & ((\segundos|unidade|CONT[3]~3_combout\) # ((\segundos|unidade|CONT[0]~7_combout\ & \segundos|unidade|CONT\(3))))) # (!\segundos|unidade|Add0~1_combout\ & 
-- (\segundos|unidade|CONT[0]~7_combout\ & (\segundos|unidade|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|unidade|Add0~1_combout\,
	datab => \segundos|unidade|CONT[0]~7_combout\,
	datac => \segundos|unidade|CONT\(3),
	datad => \segundos|unidade|CONT[3]~3_combout\,
	combout => \segundos|unidade|CONT[3]~6_combout\);

-- Location: FF_X18_Y1_N13
\segundos|unidade|CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \segundos|unidade|CONT[3]~6_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundos|unidade|CONT\(3));

-- Location: LCCOMB_X17_Y1_N26
\segundos|process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|process_0~0_combout\ = (!\segundos|unidade|CONT\(1) & (!\segundos|unidade|CONT\(2) & (\segundos|unidade|CONT\(3) & \segundos|unidade|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|unidade|CONT\(1),
	datab => \segundos|unidade|CONT\(2),
	datac => \segundos|unidade|CONT\(3),
	datad => \segundos|unidade|CONT\(0),
	combout => \segundos|process_0~0_combout\);

-- Location: LCCOMB_X17_Y1_N12
\segundos|unidade|CONT[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|unidade|CONT[3]~3_combout\ = (!\centesimos|CleaRR1~0_combout\ & (\centesimos|Equal0~0_combout\ & (!\segundos|process_0~0_combout\ & \centesimos|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|CleaRR1~0_combout\,
	datab => \centesimos|Equal0~0_combout\,
	datac => \segundos|process_0~0_combout\,
	datad => \centesimos|Equal1~0_combout\,
	combout => \segundos|unidade|CONT[3]~3_combout\);

-- Location: LCCOMB_X18_Y1_N6
\segundos|unidade|CONT[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|unidade|CONT[1]~4_combout\ = (\segundos|unidade|CONT\(1) & ((\segundos|unidade|CONT[0]~7_combout\) # ((!\segundos|unidade|CONT\(0) & \segundos|unidade|CONT[3]~3_combout\)))) # (!\segundos|unidade|CONT\(1) & (\segundos|unidade|CONT\(0) & 
-- ((\segundos|unidade|CONT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|unidade|CONT\(0),
	datab => \segundos|unidade|CONT[0]~7_combout\,
	datac => \segundos|unidade|CONT\(1),
	datad => \segundos|unidade|CONT[3]~3_combout\,
	combout => \segundos|unidade|CONT[1]~4_combout\);

-- Location: FF_X18_Y1_N7
\segundos|unidade|CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \segundos|unidade|CONT[1]~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundos|unidade|CONT\(1));

-- Location: LCCOMB_X17_Y1_N16
\segundos|process_0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|process_0~1_combout\ = (\centesimos|Equal0~0_combout\ & (\segundos|process_0~0_combout\ & \centesimos|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centesimos|Equal0~0_combout\,
	datac => \segundos|process_0~0_combout\,
	datad => \centesimos|Equal1~0_combout\,
	combout => \segundos|process_0~1_combout\);

-- Location: LCCOMB_X16_Y1_N12
\segundos|CleaR2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|CleaR2~combout\ = (\segundos|process_0~1_combout\ & ((\segundos|process_0~2_combout\) # (\segundos|CleaR2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|process_0~2_combout\,
	datab => \segundos|process_0~1_combout\,
	datad => \segundos|CleaR2~combout\,
	combout => \segundos|CleaR2~combout\);

-- Location: LCCOMB_X16_Y1_N22
\segundos|dezena|CONT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|dezena|CONT~0_combout\ = (!\segundos|dezena|CONT\(0) & (!\segundos|CleaR2~combout\ & ((!\B2~input_o\) # (!\B1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~input_o\,
	datab => \B2~input_o\,
	datac => \segundos|dezena|CONT\(0),
	datad => \segundos|CleaR2~combout\,
	combout => \segundos|dezena|CONT~0_combout\);

-- Location: LCCOMB_X16_Y1_N16
\segundos|dezena|CONT[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|dezena|CONT[0]~feeder_combout\ = \segundos|dezena|CONT~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segundos|dezena|CONT~0_combout\,
	combout => \segundos|dezena|CONT[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y1_N8
\segundos|dezena|CONT[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|dezena|CONT[1]~feeder_combout\ = \segundos|dezena|CONT~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|dezena|CONT~3_combout\,
	combout => \segundos|dezena|CONT[1]~feeder_combout\);

-- Location: FF_X16_Y1_N9
\segundos|dezena|CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \segundos|dezena|CONT[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \segundos|dezena|CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundos|dezena|CONT\(1));

-- Location: LCCOMB_X16_Y1_N30
\segundos|dezena|CONT~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|dezena|CONT~4_combout\ = (\segundos|dezena|CONT~2_combout\ & (\segundos|dezena|CONT\(2) $ (((\segundos|dezena|CONT\(0) & \segundos|dezena|CONT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|dezena|CONT~2_combout\,
	datab => \segundos|dezena|CONT\(0),
	datac => \segundos|dezena|CONT\(1),
	datad => \segundos|dezena|CONT\(2),
	combout => \segundos|dezena|CONT~4_combout\);

-- Location: FF_X16_Y1_N25
\segundos|dezena|CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \segundos|dezena|CONT~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \segundos|dezena|CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundos|dezena|CONT\(2));

-- Location: LCCOMB_X16_Y1_N6
\segundos|process_0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|process_0~2_combout\ = (!\segundos|dezena|CONT\(3) & (\segundos|dezena|CONT\(2) & (!\segundos|dezena|CONT\(1) & \segundos|dezena|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|dezena|CONT\(3),
	datab => \segundos|dezena|CONT\(2),
	datac => \segundos|dezena|CONT\(1),
	datad => \segundos|dezena|CONT\(0),
	combout => \segundos|process_0~2_combout\);

-- Location: LCCOMB_X17_Y1_N8
\segundos|process_0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|process_0~3_combout\ = (\centesimos|Equal0~0_combout\ & (\segundos|process_0~2_combout\ & (\segundos|process_0~0_combout\ & \centesimos|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centesimos|Equal0~0_combout\,
	datab => \segundos|process_0~2_combout\,
	datac => \segundos|process_0~0_combout\,
	datad => \centesimos|Equal1~0_combout\,
	combout => \segundos|process_0~3_combout\);

-- Location: LCCOMB_X17_Y1_N10
\segundos|CarrY\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|CarrY~combout\ = (\segundos|process_0~3_combout\ & (\segundos|CarrY~combout\)) # (!\segundos|process_0~3_combout\ & ((\segundos|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|CarrY~combout\,
	datac => \segundos|process_0~3_combout\,
	datad => \segundos|process_0~1_combout\,
	combout => \segundos|CarrY~combout\);

-- Location: LCCOMB_X16_Y1_N14
\segundos|dezena|CONT[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|dezena|CONT[0]~1_combout\ = (\segundos|CarrY~combout\) # ((\segundos|CleaR2~combout\) # ((\B1~input_o\ & \B2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~input_o\,
	datab => \B2~input_o\,
	datac => \segundos|CarrY~combout\,
	datad => \segundos|CleaR2~combout\,
	combout => \segundos|dezena|CONT[0]~1_combout\);

-- Location: FF_X16_Y1_N17
\segundos|dezena|CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \segundos|dezena|CONT[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \segundos|dezena|CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundos|dezena|CONT\(0));

-- Location: LCCOMB_X16_Y1_N24
\segundos|dezena|CONT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|dezena|CONT~2_combout\ = (!\segundos|CleaR2~combout\ & ((!\B2~input_o\) # (!\B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~input_o\,
	datab => \B2~input_o\,
	datad => \segundos|CleaR2~combout\,
	combout => \segundos|dezena|CONT~2_combout\);

-- Location: LCCOMB_X16_Y1_N26
\segundos|dezena|CONT~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \segundos|dezena|CONT~5_combout\ = (\segundos|dezena|CONT~2_combout\ & (\segundos|dezena|CONT\(3) $ (((\segundos|dezena|Add0~0_combout\ & \segundos|dezena|CONT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segundos|dezena|Add0~0_combout\,
	datab => \segundos|dezena|CONT\(2),
	datac => \segundos|dezena|CONT\(3),
	datad => \segundos|dezena|CONT~2_combout\,
	combout => \segundos|dezena|CONT~5_combout\);

-- Location: FF_X16_Y1_N27
\segundos|dezena|CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \segundos|dezena|CONT~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \segundos|dezena|CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segundos|dezena|CONT\(3));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(9) <= \Q[9]~output_o\;

ww_Q(10) <= \Q[10]~output_o\;

ww_Q(11) <= \Q[11]~output_o\;

ww_Q(12) <= \Q[12]~output_o\;

ww_Q(13) <= \Q[13]~output_o\;

ww_Q(14) <= \Q[14]~output_o\;

ww_Q(15) <= \Q[15]~output_o\;
END structure;


