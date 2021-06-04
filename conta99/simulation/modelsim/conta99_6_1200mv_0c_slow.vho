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

-- DATE "05/05/2021 17:32:16"

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

ENTITY 	conta99 IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	Q : OUT IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	EN : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	LOAD : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0)
	);
END conta99;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF conta99 IS
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
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_LD : std_logic;
SIGNAL ww_LOAD : std_logic_vector(7 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \LOAD[0]~input_o\ : std_logic;
SIGNAL \LOAD[1]~input_o\ : std_logic;
SIGNAL \LOAD[2]~input_o\ : std_logic;
SIGNAL \LOAD[3]~input_o\ : std_logic;
SIGNAL \LOAD[4]~input_o\ : std_logic;
SIGNAL \LOAD[5]~input_o\ : std_logic;
SIGNAL \LOAD[6]~input_o\ : std_logic;
SIGNAL \LOAD[7]~input_o\ : std_logic;
SIGNAL \LD~input_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \unidade|CONT[1]~1_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \unidade|CONT[2]~2_combout\ : std_logic;
SIGNAL \unidade|Add0~0_combout\ : std_logic;
SIGNAL \unidade|CONT[3]~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \unidade|CONT[0]~0_combout\ : std_logic;
SIGNAL \dezena|CONT~2_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \CarrY~combout\ : std_logic;
SIGNAL \dezena|CONT[0]~1_combout\ : std_logic;
SIGNAL \dezena|CONT~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \CleaR2~combout\ : std_logic;
SIGNAL \dezena|CONT~0_combout\ : std_logic;
SIGNAL \dezena|CONT~4_combout\ : std_logic;
SIGNAL \dezena|CONT~5_combout\ : std_logic;
SIGNAL \dezena|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \unidade|CONT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
Q <= IEEE.NUMERIC_STD.UNSIGNED(ww_Q);
ww_EN <= EN;
ww_CLR <= CLR;
ww_LD <= LD;
ww_LOAD <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(LOAD);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;

-- Location: IOOBUF_X20_Y0_N2
\Q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade|CONT\(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\Q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade|CONT\(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade|CONT\(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade|CONT\(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Q[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezena|CONT\(0),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Q[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezena|CONT\(1),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Q[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezena|CONT\(2),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Q[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezena|CONT\(3),
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOIBUF_X26_Y0_N8
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\EN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X25_Y1_N30
\unidade|CONT[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unidade|CONT[1]~1_combout\ = (!\Equal1~0_combout\ & (\unidade|CONT\(1) $ (((\unidade|CONT\(0) & \EN~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade|CONT\(0),
	datab => \EN~input_o\,
	datac => \unidade|CONT\(1),
	datad => \Equal1~0_combout\,
	combout => \unidade|CONT[1]~1_combout\);

-- Location: IOIBUF_X16_Y0_N15
\RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G17
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

-- Location: FF_X25_Y1_N31
\unidade|CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \unidade|CONT[1]~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidade|CONT\(1));

-- Location: LCCOMB_X25_Y1_N20
\unidade|CONT[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unidade|CONT[2]~2_combout\ = \unidade|CONT\(2) $ (((\unidade|CONT\(0) & (\EN~input_o\ & \unidade|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade|CONT\(0),
	datab => \EN~input_o\,
	datac => \unidade|CONT\(2),
	datad => \unidade|CONT\(1),
	combout => \unidade|CONT[2]~2_combout\);

-- Location: FF_X25_Y1_N21
\unidade|CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \unidade|CONT[2]~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidade|CONT\(2));

-- Location: LCCOMB_X25_Y1_N6
\unidade|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unidade|Add0~0_combout\ = \unidade|CONT\(3) $ (((\unidade|CONT\(1) & (\unidade|CONT\(0) & \unidade|CONT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade|CONT\(1),
	datab => \unidade|CONT\(3),
	datac => \unidade|CONT\(0),
	datad => \unidade|CONT\(2),
	combout => \unidade|Add0~0_combout\);

-- Location: LCCOMB_X25_Y1_N10
\unidade|CONT[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unidade|CONT[3]~3_combout\ = (!\Equal1~0_combout\ & ((\EN~input_o\ & ((\unidade|Add0~0_combout\))) # (!\EN~input_o\ & (\unidade|CONT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \Equal1~0_combout\,
	datac => \unidade|CONT\(3),
	datad => \unidade|Add0~0_combout\,
	combout => \unidade|CONT[3]~3_combout\);

-- Location: FF_X25_Y1_N11
\unidade|CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \unidade|CONT[3]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidade|CONT\(3));

-- Location: LCCOMB_X25_Y1_N0
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\unidade|CONT\(0) & (!\unidade|CONT\(2) & (!\unidade|CONT\(1) & \unidade|CONT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade|CONT\(0),
	datab => \unidade|CONT\(2),
	datac => \unidade|CONT\(1),
	datad => \unidade|CONT\(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X25_Y1_N22
\unidade|CONT[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unidade|CONT[0]~0_combout\ = (!\Equal1~0_combout\ & (\EN~input_o\ $ (\unidade|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datac => \unidade|CONT\(0),
	datad => \Equal1~0_combout\,
	combout => \unidade|CONT[0]~0_combout\);

-- Location: FF_X25_Y1_N23
\unidade|CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \unidade|CONT[0]~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidade|CONT\(0));

-- Location: LCCOMB_X25_Y1_N4
\dezena|CONT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dezena|CONT~2_combout\ = (!\CleaR2~combout\ & (\dezena|CONT\(0) $ (\dezena|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CleaR2~combout\,
	datac => \dezena|CONT\(0),
	datad => \dezena|CONT\(1),
	combout => \dezena|CONT~2_combout\);

-- Location: LCCOMB_X25_Y1_N24
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\Equal0~0_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X25_Y1_N18
CarrY : cycloneiv_lcell_comb
-- Equation(s):
-- \CarrY~combout\ = (\process_0~0_combout\ & (\CarrY~combout\)) # (!\process_0~0_combout\ & ((\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datac => \CarrY~combout\,
	datad => \Equal1~0_combout\,
	combout => \CarrY~combout\);

-- Location: LCCOMB_X25_Y1_N28
\dezena|CONT[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dezena|CONT[0]~1_combout\ = (\CleaR2~combout\) # (\CarrY~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CleaR2~combout\,
	datad => \CarrY~combout\,
	combout => \dezena|CONT[0]~1_combout\);

-- Location: FF_X25_Y1_N3
\dezena|CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \dezena|CONT~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dezena|CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dezena|CONT\(1));

-- Location: LCCOMB_X25_Y1_N14
\dezena|CONT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dezena|CONT~3_combout\ = (!\CleaR2~combout\ & (\dezena|CONT\(2) $ (((\dezena|CONT\(1) & \dezena|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleaR2~combout\,
	datab => \dezena|CONT\(1),
	datac => \dezena|CONT\(0),
	datad => \dezena|CONT\(2),
	combout => \dezena|CONT~3_combout\);

-- Location: FF_X25_Y1_N29
\dezena|CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \dezena|CONT~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dezena|CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dezena|CONT\(2));

-- Location: LCCOMB_X25_Y1_N8
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\dezena|CONT\(3) & (!\dezena|CONT\(2) & (\dezena|CONT\(0) & !\dezena|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena|CONT\(3),
	datab => \dezena|CONT\(2),
	datac => \dezena|CONT\(0),
	datad => \dezena|CONT\(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X25_Y1_N16
CleaR2 : cycloneiv_lcell_comb
-- Equation(s):
-- \CleaR2~combout\ = (\Equal1~0_combout\ & ((\Equal0~0_combout\) # (\CleaR2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \CleaR2~combout\,
	combout => \CleaR2~combout\);

-- Location: LCCOMB_X25_Y1_N2
\dezena|CONT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dezena|CONT~0_combout\ = (!\dezena|CONT\(0) & !\CleaR2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena|CONT\(0),
	datad => \CleaR2~combout\,
	combout => \dezena|CONT~0_combout\);

-- Location: FF_X25_Y1_N9
\dezena|CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \dezena|CONT~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dezena|CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dezena|CONT\(0));

-- Location: LCCOMB_X25_Y1_N26
\dezena|CONT~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dezena|CONT~4_combout\ = (!\dezena|CONT\(1)) # (!\dezena|CONT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dezena|CONT\(0),
	datad => \dezena|CONT\(1),
	combout => \dezena|CONT~4_combout\);

-- Location: LCCOMB_X25_Y1_N12
\dezena|CONT~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dezena|CONT~5_combout\ = (!\CleaR2~combout\ & (\dezena|CONT\(3) $ (((\dezena|CONT\(2) & !\dezena|CONT~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CleaR2~combout\,
	datab => \dezena|CONT\(2),
	datac => \dezena|CONT\(3),
	datad => \dezena|CONT~4_combout\,
	combout => \dezena|CONT~5_combout\);

-- Location: FF_X25_Y1_N13
\dezena|CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \dezena|CONT~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \dezena|CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dezena|CONT\(3));

-- Location: IOIBUF_X16_Y0_N8
\CLR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\LOAD[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(0),
	o => \LOAD[0]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\LOAD[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(1),
	o => \LOAD[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\LOAD[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(2),
	o => \LOAD[2]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\LOAD[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(3),
	o => \LOAD[3]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\LOAD[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(4),
	o => \LOAD[4]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\LOAD[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(5),
	o => \LOAD[5]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\LOAD[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(6),
	o => \LOAD[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\LOAD[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(7),
	o => \LOAD[7]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\LD~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD,
	o => \LD~input_o\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;
END structure;


