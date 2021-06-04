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

-- DATE "03/18/2021 16:40:59"

-- 
-- Device: Altera EP2C8T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cont4 IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0);
	EN : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	LOAD : IN std_logic_vector(3 DOWNTO 0)
	);
END cont4;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q[2]	=>  Location: PIN_9,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q[3]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- LOAD[0]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cont4 IS
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
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \LD~combout\ : std_logic;
SIGNAL \CONT~0_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \CLR~combout\ : std_logic;
SIGNAL \DIVI[18]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \CONT[0]~1_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \EN~combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \CONT[0]~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \CONT[0]~3_combout\ : std_logic;
SIGNAL \CONT[0]~4_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \CONT[0]~6_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \CONT[0]~5_combout\ : std_logic;
SIGNAL \CONT[0]~7_combout\ : std_logic;
SIGNAL \CONT[0]~8_combout\ : std_logic;
SIGNAL \CONT~9_combout\ : std_logic;
SIGNAL \CONT~10_combout\ : std_logic;
SIGNAL \CONT~11_combout\ : std_logic;
SIGNAL \CONT~12_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \CONT~13_combout\ : std_logic;
SIGNAL DIVI : std_logic_vector(18 DOWNTO 0);
SIGNAL CONT : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOAD~combout\ : std_logic_vector(3 DOWNTO 0);

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

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

-- Location: LCFF_X2_Y8_N9
\DIVI[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~26_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(13));

-- Location: LCFF_X2_Y8_N1
\DIVI[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(9));

-- Location: LCFF_X2_Y9_N25
\DIVI[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~10_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(5));

-- Location: LCFF_X2_Y9_N21
\DIVI[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(3));

-- Location: LCFF_X2_Y9_N17
\DIVI[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(1));

-- Location: LCFF_X2_Y8_N19
\DIVI[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~36_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(18));

-- Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
\LOAD[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LOAD(1),
	combout => \LOAD~combout\(1));

-- Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G2
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
\LD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LD,
	combout => \LD~combout\);

-- Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
\LOAD[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LOAD(0),
	combout => \LOAD~combout\(0));

-- Location: LCCOMB_X1_Y8_N28
\CONT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~0_combout\ = (!\CLR~combout\ & ((\LD~combout\ & ((\LOAD~combout\(0)))) # (!\LD~combout\ & (!CONT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~combout\,
	datab => \LD~combout\,
	datac => CONT(0),
	datad => \LOAD~combout\(0),
	combout => \CONT~0_combout\);

-- Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
\RST~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: CLKCTRL_G1
\RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~clkctrl_outclk\);

-- Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
\CLR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLR,
	combout => \CLR~combout\);

-- Location: LCCOMB_X1_Y9_N16
\DIVI[18]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DIVI[18]~0_combout\ = (!\RST~combout\ & !\CLR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~combout\,
	datad => \CLR~combout\,
	combout => \DIVI[18]~0_combout\);

-- Location: LCFF_X2_Y8_N15
\DIVI[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~32_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(16));

-- Location: LCCOMB_X2_Y9_N14
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = DIVI(0) $ (VCC)
-- \Add0~1\ = CARRY(DIVI(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => DIVI(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCFF_X2_Y9_N15
\DIVI[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(0));

-- Location: LCCOMB_X2_Y9_N16
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (DIVI(1) & (!\Add0~1\)) # (!DIVI(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!DIVI(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DIVI(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X2_Y9_N18
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (DIVI(2) & (\Add0~3\ $ (GND))) # (!DIVI(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((DIVI(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCFF_X2_Y9_N19
\DIVI[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(2));

-- Location: LCCOMB_X2_Y9_N20
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (DIVI(3) & (!\Add0~5\)) # (!DIVI(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!DIVI(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DIVI(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X2_Y9_N22
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (DIVI(4) & (\Add0~7\ $ (GND))) # (!DIVI(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((DIVI(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCFF_X2_Y9_N23
\DIVI[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~8_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(4));

-- Location: LCCOMB_X2_Y9_N24
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (DIVI(5) & (!\Add0~9\)) # (!DIVI(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!DIVI(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DIVI(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X2_Y9_N26
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (DIVI(6) & (\Add0~11\ $ (GND))) # (!DIVI(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((DIVI(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCFF_X2_Y9_N27
\DIVI[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(6));

-- Location: LCCOMB_X2_Y9_N28
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (DIVI(7) & (!\Add0~13\)) # (!DIVI(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!DIVI(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCFF_X2_Y9_N29
\DIVI[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~14_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(7));

-- Location: LCCOMB_X2_Y9_N30
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (DIVI(8) & (\Add0~15\ $ (GND))) # (!DIVI(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((DIVI(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCFF_X2_Y9_N31
\DIVI[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(8));

-- Location: LCCOMB_X2_Y8_N0
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (DIVI(9) & (!\Add0~17\)) # (!DIVI(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!DIVI(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DIVI(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X2_Y8_N2
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (DIVI(10) & (\Add0~19\ $ (GND))) # (!DIVI(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((DIVI(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCFF_X2_Y8_N3
\DIVI[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(10));

-- Location: LCCOMB_X2_Y8_N4
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (DIVI(11) & (!\Add0~21\)) # (!DIVI(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!DIVI(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCFF_X2_Y8_N5
\DIVI[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(11));

-- Location: LCCOMB_X2_Y8_N6
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (DIVI(12) & (\Add0~23\ $ (GND))) # (!DIVI(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((DIVI(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCFF_X2_Y8_N7
\DIVI[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~24_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(12));

-- Location: LCCOMB_X2_Y8_N8
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (DIVI(13) & (!\Add0~25\)) # (!DIVI(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!DIVI(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DIVI(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X2_Y8_N10
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (DIVI(14) & (\Add0~27\ $ (GND))) # (!DIVI(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((DIVI(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCFF_X2_Y8_N11
\DIVI[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~28_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(14));

-- Location: LCCOMB_X2_Y8_N12
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (DIVI(15) & (!\Add0~29\)) # (!DIVI(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!DIVI(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCFF_X2_Y8_N13
\DIVI[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~30_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(15));

-- Location: LCCOMB_X2_Y8_N14
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (DIVI(16) & (\Add0~31\ $ (GND))) # (!DIVI(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((DIVI(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCFF_X2_Y8_N17
\DIVI[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~34_combout\,
	ena => \DIVI[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DIVI(17));

-- Location: LCCOMB_X2_Y8_N16
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (DIVI(17) & (!\Add0~33\)) # (!DIVI(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!DIVI(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => DIVI(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X2_Y8_N18
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = DIVI(18) $ (!\Add0~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DIVI(18),
	cin => \Add0~35\,
	combout => \Add0~36_combout\);

-- Location: LCCOMB_X2_Y8_N28
\CONT[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[0]~1_combout\ = (\Add0~30_combout\) # ((\Add0~32_combout\) # ((\Add0~34_combout\) # (\Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~34_combout\,
	datad => \Add0~36_combout\,
	combout => \CONT[0]~1_combout\);

-- Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
\EN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EN,
	combout => \EN~combout\);

-- Location: LCCOMB_X2_Y9_N8
\CONT[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[0]~2_combout\ = (\Add0~0_combout\) # (((\Add0~4_combout\) # (\Add0~2_combout\)) # (!\EN~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \EN~combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~2_combout\,
	combout => \CONT[0]~2_combout\);

-- Location: LCCOMB_X2_Y9_N6
\CONT[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[0]~3_combout\ = (\Add0~8_combout\) # (\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Add0~6_combout\,
	combout => \CONT[0]~3_combout\);

-- Location: LCCOMB_X2_Y9_N0
\CONT[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[0]~4_combout\ = (\Add0~12_combout\) # ((\Add0~10_combout\) # ((\CONT[0]~2_combout\) # (\CONT[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~10_combout\,
	datac => \CONT[0]~2_combout\,
	datad => \CONT[0]~3_combout\,
	combout => \CONT[0]~4_combout\);

-- Location: LCCOMB_X2_Y8_N24
\CONT[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[0]~6_combout\ = (\Add0~22_combout\) # (\Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~22_combout\,
	datad => \Add0~24_combout\,
	combout => \CONT[0]~6_combout\);

-- Location: LCCOMB_X2_Y8_N26
\CONT[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[0]~5_combout\ = (\Add0~14_combout\) # ((\Add0~18_combout\) # ((\Add0~16_combout\) # (\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~16_combout\,
	datad => \Add0~20_combout\,
	combout => \CONT[0]~5_combout\);

-- Location: LCCOMB_X2_Y8_N30
\CONT[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[0]~7_combout\ = (\Add0~28_combout\) # ((\Add0~26_combout\) # ((\CONT[0]~6_combout\) # (\CONT[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add0~26_combout\,
	datac => \CONT[0]~6_combout\,
	datad => \CONT[0]~5_combout\,
	combout => \CONT[0]~7_combout\);

-- Location: LCCOMB_X1_Y8_N20
\CONT[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[0]~8_combout\ = (\CLR~combout\) # ((!\CONT[0]~1_combout\ & (!\CONT[0]~4_combout\ & !\CONT[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~combout\,
	datab => \CONT[0]~1_combout\,
	datac => \CONT[0]~4_combout\,
	datad => \CONT[0]~7_combout\,
	combout => \CONT[0]~8_combout\);

-- Location: LCFF_X1_Y8_N29
\CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \CONT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(0));

-- Location: LCCOMB_X1_Y8_N30
\CONT~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~9_combout\ = (\LD~combout\ & (\LOAD~combout\(1))) # (!\LD~combout\ & ((CONT(0) $ (CONT(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LOAD~combout\(1),
	datab => CONT(0),
	datac => \LD~combout\,
	datad => CONT(1),
	combout => \CONT~9_combout\);

-- Location: LCCOMB_X1_Y8_N26
\CONT~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~10_combout\ = (!\CLR~combout\ & \CONT~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR~combout\,
	datad => \CONT~9_combout\,
	combout => \CONT~10_combout\);

-- Location: LCFF_X1_Y8_N27
\CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT~10_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \CONT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(1));

-- Location: LCCOMB_X1_Y8_N0
\CONT~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~11_combout\ = (!\LD~combout\ & (CONT(2) $ (((CONT(0) & CONT(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONT(2),
	datab => CONT(0),
	datac => \LD~combout\,
	datad => CONT(1),
	combout => \CONT~11_combout\);

-- Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
\LOAD[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LOAD(2),
	combout => \LOAD~combout\(2));

-- Location: LCCOMB_X1_Y8_N12
\CONT~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~12_combout\ = (!\CLR~combout\ & ((\CONT~11_combout\) # ((\LD~combout\ & \LOAD~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD~combout\,
	datab => \CONT~11_combout\,
	datac => \CLR~combout\,
	datad => \LOAD~combout\(2),
	combout => \CONT~12_combout\);

-- Location: LCFF_X1_Y8_N13
\CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT~12_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \CONT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(2));

-- Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
\LOAD[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LOAD(3),
	combout => \LOAD~combout\(3));

-- Location: LCCOMB_X1_Y8_N22
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = CONT(3) $ (((CONT(2) & (CONT(1) & CONT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONT(2),
	datab => CONT(1),
	datac => CONT(3),
	datad => CONT(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X1_Y8_N10
\CONT~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~13_combout\ = (!\CLR~combout\ & ((\LD~combout\ & (\LOAD~combout\(3))) # (!\LD~combout\ & ((\Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD~combout\,
	datab => \LOAD~combout\(3),
	datac => \CLR~combout\,
	datad => \Add1~0_combout\,
	combout => \CONT~13_combout\);

-- Location: LCFF_X1_Y8_N11
\CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT~13_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \CONT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(3));

-- Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => CONT(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => CONT(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_9,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => CONT(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => CONT(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(3));
END structure;


