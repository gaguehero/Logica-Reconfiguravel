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

-- DATE "03/03/2021 08:59:44"

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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Cont4_completo IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0);
	EN : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	LOAD : IN std_logic_vector(3 DOWNTO 0)
	);
END Cont4_completo;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Cont4_completo IS
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
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_LD : std_logic;
SIGNAL ww_LOAD : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOAD[1]~input_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \LOAD[0]~input_o\ : std_logic;
SIGNAL \CONT~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \CONT[0]~1_combout\ : std_logic;
SIGNAL \LD~input_o\ : std_logic;
SIGNAL \CONT~2_combout\ : std_logic;
SIGNAL \CONT~3_combout\ : std_logic;
SIGNAL \LOAD[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \CONT~4_combout\ : std_logic;
SIGNAL \LOAD[3]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \CONT~5_combout\ : std_logic;
SIGNAL CONT : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
Q <= ww_Q;
ww_EN <= EN;
ww_CLR <= CLR;
ww_LD <= LD;
ww_LOAD <= LOAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;

-- Location: IOIBUF_X33_Y25_N8
\LOAD[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(1),
	o => \LOAD[1]~input_o\);

-- Location: IOOBUF_X33_Y24_N2
\Q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CONT(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\Q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CONT(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\Q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CONT(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\Q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CONT(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

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

-- Location: IOIBUF_X33_Y14_N1
\CLR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\LOAD[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(0),
	o => \LOAD[0]~input_o\);

-- Location: LCCOMB_X32_Y19_N28
\CONT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CONT~0_combout\ = (!\CLR~input_o\ & ((\LD~input_o\ & ((\LOAD[0]~input_o\))) # (!\LD~input_o\ & (!CONT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD~input_o\,
	datab => \CLR~input_o\,
	datac => CONT(0),
	datad => \LOAD[0]~input_o\,
	combout => \CONT~0_combout\);

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

-- Location: IOIBUF_X33_Y22_N8
\EN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X32_Y19_N12
\CONT[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CONT[0]~1_combout\ = (\CLR~input_o\) # (\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR~input_o\,
	datad => \EN~input_o\,
	combout => \CONT[0]~1_combout\);

-- Location: FF_X32_Y19_N29
\CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONT~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONT(0));

-- Location: IOIBUF_X33_Y24_N8
\LD~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD,
	o => \LD~input_o\);

-- Location: LCCOMB_X32_Y19_N6
\CONT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CONT~2_combout\ = (!\LD~input_o\ & (!\CLR~input_o\ & (CONT(0) $ (CONT(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD~input_o\,
	datab => \CLR~input_o\,
	datac => CONT(0),
	datad => CONT(1),
	combout => \CONT~2_combout\);

-- Location: LCCOMB_X32_Y19_N2
\CONT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CONT~3_combout\ = (\CONT~2_combout\) # ((\LOAD[1]~input_o\ & (!\CLR~input_o\ & \LD~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LOAD[1]~input_o\,
	datab => \CLR~input_o\,
	datac => \LD~input_o\,
	datad => \CONT~2_combout\,
	combout => \CONT~3_combout\);

-- Location: FF_X32_Y19_N3
\CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONT~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONT(1));

-- Location: IOIBUF_X33_Y14_N8
\LOAD[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(2),
	o => \LOAD[2]~input_o\);

-- Location: LCCOMB_X32_Y19_N0
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = CONT(2) $ (((CONT(1) & CONT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONT(1),
	datac => CONT(2),
	datad => CONT(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X32_Y19_N8
\CONT~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CONT~4_combout\ = (!\CLR~input_o\ & ((\LD~input_o\ & (\LOAD[2]~input_o\)) # (!\LD~input_o\ & ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD~input_o\,
	datab => \CLR~input_o\,
	datac => \LOAD[2]~input_o\,
	datad => \Add0~0_combout\,
	combout => \CONT~4_combout\);

-- Location: FF_X32_Y19_N9
\CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONT~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONT(2));

-- Location: IOIBUF_X33_Y22_N1
\LOAD[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(3),
	o => \LOAD[3]~input_o\);

-- Location: LCCOMB_X32_Y19_N10
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = CONT(3) $ (((CONT(1) & (CONT(2) & CONT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONT(3),
	datab => CONT(1),
	datac => CONT(2),
	datad => CONT(0),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X32_Y19_N30
\CONT~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CONT~5_combout\ = (!\CLR~input_o\ & ((\LD~input_o\ & (\LOAD[3]~input_o\)) # (!\LD~input_o\ & ((\Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD~input_o\,
	datab => \CLR~input_o\,
	datac => \LOAD[3]~input_o\,
	datad => \Add0~1_combout\,
	combout => \CONT~5_combout\);

-- Location: FF_X32_Y19_N31
\CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONT~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONT(3));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


