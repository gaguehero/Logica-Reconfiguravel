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

-- DATE "05/05/2021 16:37:15"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
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
-- Q[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[3]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LOAD[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LD	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LOAD[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LOAD[2]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LOAD[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div1_cent|Add0~28_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \div1_cent|Equal0~6_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \CLR~combout\ : std_logic;
SIGNAL \CONT~0_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \EN~combout\ : std_logic;
SIGNAL \div1_cent|Add0~0_combout\ : std_logic;
SIGNAL \div1_cent|Add0~1\ : std_logic;
SIGNAL \div1_cent|Add0~3\ : std_logic;
SIGNAL \div1_cent|Add0~4_combout\ : std_logic;
SIGNAL \div1_cent|Add0~2_combout\ : std_logic;
SIGNAL \div1_cent|Add0~5\ : std_logic;
SIGNAL \div1_cent|Add0~6_combout\ : std_logic;
SIGNAL \div1_cent|Equal0~2_combout\ : std_logic;
SIGNAL \div1_cent|Add0~7\ : std_logic;
SIGNAL \div1_cent|Add0~8_combout\ : std_logic;
SIGNAL \div1_cent|Add0~9\ : std_logic;
SIGNAL \div1_cent|Add0~10_combout\ : std_logic;
SIGNAL \div1_cent|CONT~6_combout\ : std_logic;
SIGNAL \div1_cent|Add0~11\ : std_logic;
SIGNAL \div1_cent|Add0~12_combout\ : std_logic;
SIGNAL \div1_cent|Add0~13\ : std_logic;
SIGNAL \div1_cent|Add0~14_combout\ : std_logic;
SIGNAL \div1_cent|Add0~15\ : std_logic;
SIGNAL \div1_cent|Add0~16_combout\ : std_logic;
SIGNAL \div1_cent|CONT~5_combout\ : std_logic;
SIGNAL \div1_cent|Add0~17\ : std_logic;
SIGNAL \div1_cent|Add0~18_combout\ : std_logic;
SIGNAL \div1_cent|Add0~19\ : std_logic;
SIGNAL \div1_cent|Add0~20_combout\ : std_logic;
SIGNAL \div1_cent|Add0~21\ : std_logic;
SIGNAL \div1_cent|Add0~22_combout\ : std_logic;
SIGNAL \div1_cent|Add0~23\ : std_logic;
SIGNAL \div1_cent|Add0~25\ : std_logic;
SIGNAL \div1_cent|Add0~27\ : std_logic;
SIGNAL \div1_cent|Add0~29\ : std_logic;
SIGNAL \div1_cent|Add0~30_combout\ : std_logic;
SIGNAL \div1_cent|CONT~3_combout\ : std_logic;
SIGNAL \div1_cent|Add0~26_combout\ : std_logic;
SIGNAL \div1_cent|CONT~4_combout\ : std_logic;
SIGNAL \div1_cent|Add0~24_combout\ : std_logic;
SIGNAL \div1_cent|Equal0~4_combout\ : std_logic;
SIGNAL \div1_cent|Equal0~5_combout\ : std_logic;
SIGNAL \div1_cent|Add0~31\ : std_logic;
SIGNAL \div1_cent|Add0~32_combout\ : std_logic;
SIGNAL \div1_cent|CONT~2_combout\ : std_logic;
SIGNAL \div1_cent|Add0~33\ : std_logic;
SIGNAL \div1_cent|Add0~34_combout\ : std_logic;
SIGNAL \div1_cent|CONT~1_combout\ : std_logic;
SIGNAL \div1_cent|Add0~35\ : std_logic;
SIGNAL \div1_cent|Add0~36_combout\ : std_logic;
SIGNAL \div1_cent|CONT~0_combout\ : std_logic;
SIGNAL \div1_cent|Equal0~3_combout\ : std_logic;
SIGNAL \div1_cent|Equal0~7_combout\ : std_logic;
SIGNAL \div1_cent|Equal0~8_combout\ : std_logic;
SIGNAL \div1_cent|DIV50~regout\ : std_logic;
SIGNAL \CONT[0]~1_combout\ : std_logic;
SIGNAL \LD~combout\ : std_logic;
SIGNAL \CONT~2_combout\ : std_logic;
SIGNAL \CONT~3_combout\ : std_logic;
SIGNAL \CONT~4_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \CONT~5_combout\ : std_logic;
SIGNAL CONT : std_logic_vector(3 DOWNTO 0);
SIGNAL \div1_cent|CONT\ : std_logic_vector(18 DOWNTO 0);
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

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);

-- Location: LCCOMB_X22_Y34_N10
\div1_cent|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~28_combout\ = (\div1_cent|CONT\(14) & (\div1_cent|Add0~27\ $ (GND))) # (!\div1_cent|CONT\(14) & (!\div1_cent|Add0~27\ & VCC))
-- \div1_cent|Add0~29\ = CARRY((\div1_cent|CONT\(14) & !\div1_cent|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(14),
	datad => VCC,
	cin => \div1_cent|Add0~27\,
	combout => \div1_cent|Add0~28_combout\,
	cout => \div1_cent|Add0~29\);

-- Location: LCCOMB_X23_Y34_N10
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = CONT(2) $ (((CONT(1) & CONT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONT(1),
	datab => CONT(2),
	datad => CONT(0),
	combout => \Add0~0_combout\);

-- Location: LCFF_X22_Y34_N11
\div1_cent|CONT[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~28_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(14));

-- Location: LCCOMB_X22_Y35_N6
\div1_cent|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Equal0~6_combout\ = (!\div1_cent|CONT\(7) & (\div1_cent|CONT\(4) & (!\div1_cent|CONT\(5) & !\div1_cent|CONT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(7),
	datab => \div1_cent|CONT\(4),
	datac => \div1_cent|CONT\(5),
	datad => \div1_cent|CONT\(6),
	combout => \div1_cent|Equal0~6_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y34_N0
\CONT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~0_combout\ = (!\CLR~combout\ & ((\LD~combout\ & (\LOAD~combout\(0))) # (!\LD~combout\ & ((!CONT(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD~combout\,
	datab => \LOAD~combout\(0),
	datac => CONT(0),
	datad => \CLR~combout\,
	combout => \CONT~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X22_Y35_N14
\div1_cent|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~0_combout\ = \div1_cent|CONT\(0) $ (VCC)
-- \div1_cent|Add0~1\ = CARRY(\div1_cent|CONT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(0),
	datad => VCC,
	combout => \div1_cent|Add0~0_combout\,
	cout => \div1_cent|Add0~1\);

-- Location: LCFF_X22_Y35_N15
\div1_cent|CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(0));

-- Location: LCCOMB_X22_Y35_N16
\div1_cent|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~2_combout\ = (\div1_cent|CONT\(1) & (!\div1_cent|Add0~1\)) # (!\div1_cent|CONT\(1) & ((\div1_cent|Add0~1\) # (GND)))
-- \div1_cent|Add0~3\ = CARRY((!\div1_cent|Add0~1\) # (!\div1_cent|CONT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(1),
	datad => VCC,
	cin => \div1_cent|Add0~1\,
	combout => \div1_cent|Add0~2_combout\,
	cout => \div1_cent|Add0~3\);

-- Location: LCCOMB_X22_Y35_N18
\div1_cent|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~4_combout\ = (\div1_cent|CONT\(2) & (\div1_cent|Add0~3\ $ (GND))) # (!\div1_cent|CONT\(2) & (!\div1_cent|Add0~3\ & VCC))
-- \div1_cent|Add0~5\ = CARRY((\div1_cent|CONT\(2) & !\div1_cent|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(2),
	datad => VCC,
	cin => \div1_cent|Add0~3\,
	combout => \div1_cent|Add0~4_combout\,
	cout => \div1_cent|Add0~5\);

-- Location: LCFF_X22_Y35_N19
\div1_cent|CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(2));

-- Location: LCFF_X22_Y35_N17
\div1_cent|CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(1));

-- Location: LCCOMB_X22_Y35_N20
\div1_cent|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~6_combout\ = (\div1_cent|CONT\(3) & (!\div1_cent|Add0~5\)) # (!\div1_cent|CONT\(3) & ((\div1_cent|Add0~5\) # (GND)))
-- \div1_cent|Add0~7\ = CARRY((!\div1_cent|Add0~5\) # (!\div1_cent|CONT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(3),
	datad => VCC,
	cin => \div1_cent|Add0~5\,
	combout => \div1_cent|Add0~6_combout\,
	cout => \div1_cent|Add0~7\);

-- Location: LCFF_X22_Y35_N21
\div1_cent|CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~6_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(3));

-- Location: LCCOMB_X22_Y35_N12
\div1_cent|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Equal0~2_combout\ = (\div1_cent|CONT\(2) & (\div1_cent|CONT\(1) & \div1_cent|CONT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(2),
	datab => \div1_cent|CONT\(1),
	datad => \div1_cent|CONT\(3),
	combout => \div1_cent|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y35_N22
\div1_cent|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~8_combout\ = (\div1_cent|CONT\(4) & (\div1_cent|Add0~7\ $ (GND))) # (!\div1_cent|CONT\(4) & (!\div1_cent|Add0~7\ & VCC))
-- \div1_cent|Add0~9\ = CARRY((\div1_cent|CONT\(4) & !\div1_cent|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(4),
	datad => VCC,
	cin => \div1_cent|Add0~7\,
	combout => \div1_cent|Add0~8_combout\,
	cout => \div1_cent|Add0~9\);

-- Location: LCFF_X22_Y35_N23
\div1_cent|CONT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~8_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(4));

-- Location: LCCOMB_X22_Y35_N24
\div1_cent|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~10_combout\ = (\div1_cent|CONT\(5) & (!\div1_cent|Add0~9\)) # (!\div1_cent|CONT\(5) & ((\div1_cent|Add0~9\) # (GND)))
-- \div1_cent|Add0~11\ = CARRY((!\div1_cent|Add0~9\) # (!\div1_cent|CONT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(5),
	datad => VCC,
	cin => \div1_cent|Add0~9\,
	combout => \div1_cent|Add0~10_combout\,
	cout => \div1_cent|Add0~11\);

-- Location: LCCOMB_X22_Y35_N4
\div1_cent|CONT~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|CONT~6_combout\ = (\div1_cent|Add0~10_combout\ & ((!\div1_cent|Equal0~7_combout\) # (!\div1_cent|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|Equal0~2_combout\,
	datac => \div1_cent|Add0~10_combout\,
	datad => \div1_cent|Equal0~7_combout\,
	combout => \div1_cent|CONT~6_combout\);

-- Location: LCFF_X22_Y35_N5
\div1_cent|CONT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|CONT~6_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(5));

-- Location: LCCOMB_X22_Y35_N26
\div1_cent|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~12_combout\ = (\div1_cent|CONT\(6) & (\div1_cent|Add0~11\ $ (GND))) # (!\div1_cent|CONT\(6) & (!\div1_cent|Add0~11\ & VCC))
-- \div1_cent|Add0~13\ = CARRY((\div1_cent|CONT\(6) & !\div1_cent|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(6),
	datad => VCC,
	cin => \div1_cent|Add0~11\,
	combout => \div1_cent|Add0~12_combout\,
	cout => \div1_cent|Add0~13\);

-- Location: LCFF_X22_Y35_N27
\div1_cent|CONT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~12_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(6));

-- Location: LCCOMB_X22_Y35_N28
\div1_cent|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~14_combout\ = (\div1_cent|CONT\(7) & (!\div1_cent|Add0~13\)) # (!\div1_cent|CONT\(7) & ((\div1_cent|Add0~13\) # (GND)))
-- \div1_cent|Add0~15\ = CARRY((!\div1_cent|Add0~13\) # (!\div1_cent|CONT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(7),
	datad => VCC,
	cin => \div1_cent|Add0~13\,
	combout => \div1_cent|Add0~14_combout\,
	cout => \div1_cent|Add0~15\);

-- Location: LCFF_X22_Y35_N29
\div1_cent|CONT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~14_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(7));

-- Location: LCCOMB_X22_Y35_N30
\div1_cent|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~16_combout\ = (\div1_cent|CONT\(8) & (\div1_cent|Add0~15\ $ (GND))) # (!\div1_cent|CONT\(8) & (!\div1_cent|Add0~15\ & VCC))
-- \div1_cent|Add0~17\ = CARRY((\div1_cent|CONT\(8) & !\div1_cent|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(8),
	datad => VCC,
	cin => \div1_cent|Add0~15\,
	combout => \div1_cent|Add0~16_combout\,
	cout => \div1_cent|Add0~17\);

-- Location: LCCOMB_X22_Y35_N2
\div1_cent|CONT~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|CONT~5_combout\ = (\div1_cent|Add0~16_combout\ & ((!\div1_cent|Equal0~7_combout\) # (!\div1_cent|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|Equal0~2_combout\,
	datab => \div1_cent|Add0~16_combout\,
	datad => \div1_cent|Equal0~7_combout\,
	combout => \div1_cent|CONT~5_combout\);

-- Location: LCFF_X22_Y35_N3
\div1_cent|CONT[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|CONT~5_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(8));

-- Location: LCCOMB_X22_Y34_N0
\div1_cent|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~18_combout\ = (\div1_cent|CONT\(9) & (!\div1_cent|Add0~17\)) # (!\div1_cent|CONT\(9) & ((\div1_cent|Add0~17\) # (GND)))
-- \div1_cent|Add0~19\ = CARRY((!\div1_cent|Add0~17\) # (!\div1_cent|CONT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(9),
	datad => VCC,
	cin => \div1_cent|Add0~17\,
	combout => \div1_cent|Add0~18_combout\,
	cout => \div1_cent|Add0~19\);

-- Location: LCFF_X22_Y34_N1
\div1_cent|CONT[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~18_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(9));

-- Location: LCCOMB_X22_Y34_N2
\div1_cent|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~20_combout\ = (\div1_cent|CONT\(10) & (\div1_cent|Add0~19\ $ (GND))) # (!\div1_cent|CONT\(10) & (!\div1_cent|Add0~19\ & VCC))
-- \div1_cent|Add0~21\ = CARRY((\div1_cent|CONT\(10) & !\div1_cent|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(10),
	datad => VCC,
	cin => \div1_cent|Add0~19\,
	combout => \div1_cent|Add0~20_combout\,
	cout => \div1_cent|Add0~21\);

-- Location: LCFF_X22_Y34_N3
\div1_cent|CONT[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~20_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(10));

-- Location: LCCOMB_X22_Y34_N4
\div1_cent|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~22_combout\ = (\div1_cent|CONT\(11) & (!\div1_cent|Add0~21\)) # (!\div1_cent|CONT\(11) & ((\div1_cent|Add0~21\) # (GND)))
-- \div1_cent|Add0~23\ = CARRY((!\div1_cent|Add0~21\) # (!\div1_cent|CONT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(11),
	datad => VCC,
	cin => \div1_cent|Add0~21\,
	combout => \div1_cent|Add0~22_combout\,
	cout => \div1_cent|Add0~23\);

-- Location: LCFF_X22_Y34_N5
\div1_cent|CONT[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~22_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(11));

-- Location: LCCOMB_X22_Y34_N6
\div1_cent|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~24_combout\ = (\div1_cent|CONT\(12) & (\div1_cent|Add0~23\ $ (GND))) # (!\div1_cent|CONT\(12) & (!\div1_cent|Add0~23\ & VCC))
-- \div1_cent|Add0~25\ = CARRY((\div1_cent|CONT\(12) & !\div1_cent|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(12),
	datad => VCC,
	cin => \div1_cent|Add0~23\,
	combout => \div1_cent|Add0~24_combout\,
	cout => \div1_cent|Add0~25\);

-- Location: LCCOMB_X22_Y34_N8
\div1_cent|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~26_combout\ = (\div1_cent|CONT\(13) & (!\div1_cent|Add0~25\)) # (!\div1_cent|CONT\(13) & ((\div1_cent|Add0~25\) # (GND)))
-- \div1_cent|Add0~27\ = CARRY((!\div1_cent|Add0~25\) # (!\div1_cent|CONT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(13),
	datad => VCC,
	cin => \div1_cent|Add0~25\,
	combout => \div1_cent|Add0~26_combout\,
	cout => \div1_cent|Add0~27\);

-- Location: LCCOMB_X22_Y34_N12
\div1_cent|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~30_combout\ = (\div1_cent|CONT\(15) & (!\div1_cent|Add0~29\)) # (!\div1_cent|CONT\(15) & ((\div1_cent|Add0~29\) # (GND)))
-- \div1_cent|Add0~31\ = CARRY((!\div1_cent|Add0~29\) # (!\div1_cent|CONT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(15),
	datad => VCC,
	cin => \div1_cent|Add0~29\,
	combout => \div1_cent|Add0~30_combout\,
	cout => \div1_cent|Add0~31\);

-- Location: LCCOMB_X22_Y34_N26
\div1_cent|CONT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|CONT~3_combout\ = (\div1_cent|Add0~30_combout\ & ((!\div1_cent|Equal0~2_combout\) # (!\div1_cent|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|Equal0~7_combout\,
	datab => \div1_cent|Equal0~2_combout\,
	datad => \div1_cent|Add0~30_combout\,
	combout => \div1_cent|CONT~3_combout\);

-- Location: LCFF_X22_Y34_N27
\div1_cent|CONT[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|CONT~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(15));

-- Location: LCCOMB_X22_Y34_N24
\div1_cent|CONT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|CONT~4_combout\ = (\div1_cent|Add0~26_combout\ & ((!\div1_cent|Equal0~7_combout\) # (!\div1_cent|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|Equal0~2_combout\,
	datac => \div1_cent|Add0~26_combout\,
	datad => \div1_cent|Equal0~7_combout\,
	combout => \div1_cent|CONT~4_combout\);

-- Location: LCFF_X22_Y34_N25
\div1_cent|CONT[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|CONT~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(13));

-- Location: LCFF_X22_Y34_N7
\div1_cent|CONT[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Add0~24_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(12));

-- Location: LCCOMB_X22_Y34_N22
\div1_cent|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Equal0~4_combout\ = (!\div1_cent|CONT\(14) & (\div1_cent|CONT\(15) & (\div1_cent|CONT\(13) & !\div1_cent|CONT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(14),
	datab => \div1_cent|CONT\(15),
	datac => \div1_cent|CONT\(13),
	datad => \div1_cent|CONT\(12),
	combout => \div1_cent|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y34_N24
\div1_cent|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Equal0~5_combout\ = (!\div1_cent|CONT\(9) & (!\div1_cent|CONT\(11) & (\div1_cent|CONT\(8) & !\div1_cent|CONT\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(9),
	datab => \div1_cent|CONT\(11),
	datac => \div1_cent|CONT\(8),
	datad => \div1_cent|CONT\(10),
	combout => \div1_cent|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y34_N14
\div1_cent|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~32_combout\ = (\div1_cent|CONT\(16) & (\div1_cent|Add0~31\ $ (GND))) # (!\div1_cent|CONT\(16) & (!\div1_cent|Add0~31\ & VCC))
-- \div1_cent|Add0~33\ = CARRY((\div1_cent|CONT\(16) & !\div1_cent|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(16),
	datad => VCC,
	cin => \div1_cent|Add0~31\,
	combout => \div1_cent|Add0~32_combout\,
	cout => \div1_cent|Add0~33\);

-- Location: LCCOMB_X22_Y34_N28
\div1_cent|CONT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|CONT~2_combout\ = (\div1_cent|Add0~32_combout\ & ((!\div1_cent|Equal0~7_combout\) # (!\div1_cent|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|Equal0~2_combout\,
	datac => \div1_cent|Add0~32_combout\,
	datad => \div1_cent|Equal0~7_combout\,
	combout => \div1_cent|CONT~2_combout\);

-- Location: LCFF_X22_Y34_N29
\div1_cent|CONT[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|CONT~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(16));

-- Location: LCCOMB_X22_Y34_N16
\div1_cent|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~34_combout\ = (\div1_cent|CONT\(17) & (!\div1_cent|Add0~33\)) # (!\div1_cent|CONT\(17) & ((\div1_cent|Add0~33\) # (GND)))
-- \div1_cent|Add0~35\ = CARRY((!\div1_cent|Add0~33\) # (!\div1_cent|CONT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|CONT\(17),
	datad => VCC,
	cin => \div1_cent|Add0~33\,
	combout => \div1_cent|Add0~34_combout\,
	cout => \div1_cent|Add0~35\);

-- Location: LCCOMB_X22_Y34_N30
\div1_cent|CONT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|CONT~1_combout\ = (\div1_cent|Add0~34_combout\ & ((!\div1_cent|Equal0~7_combout\) # (!\div1_cent|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div1_cent|Equal0~2_combout\,
	datac => \div1_cent|Add0~34_combout\,
	datad => \div1_cent|Equal0~7_combout\,
	combout => \div1_cent|CONT~1_combout\);

-- Location: LCFF_X22_Y34_N31
\div1_cent|CONT[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|CONT~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(17));

-- Location: LCCOMB_X22_Y34_N18
\div1_cent|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Add0~36_combout\ = \div1_cent|Add0~35\ $ (!\div1_cent|CONT\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div1_cent|CONT\(18),
	cin => \div1_cent|Add0~35\,
	combout => \div1_cent|Add0~36_combout\);

-- Location: LCCOMB_X22_Y34_N20
\div1_cent|CONT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|CONT~0_combout\ = (\div1_cent|Add0~36_combout\ & ((!\div1_cent|Equal0~2_combout\) # (!\div1_cent|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|Equal0~7_combout\,
	datab => \div1_cent|Equal0~2_combout\,
	datad => \div1_cent|Add0~36_combout\,
	combout => \div1_cent|CONT~0_combout\);

-- Location: LCFF_X22_Y34_N21
\div1_cent|CONT[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|CONT~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|CONT\(18));

-- Location: LCCOMB_X23_Y34_N22
\div1_cent|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Equal0~3_combout\ = (\div1_cent|CONT\(17) & (\div1_cent|CONT\(16) & (\div1_cent|CONT\(18) & \div1_cent|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(17),
	datab => \div1_cent|CONT\(16),
	datac => \div1_cent|CONT\(18),
	datad => \div1_cent|CONT\(0),
	combout => \div1_cent|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y34_N2
\div1_cent|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Equal0~7_combout\ = (\div1_cent|Equal0~6_combout\ & (\div1_cent|Equal0~4_combout\ & (\div1_cent|Equal0~5_combout\ & \div1_cent|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|Equal0~6_combout\,
	datab => \div1_cent|Equal0~4_combout\,
	datac => \div1_cent|Equal0~5_combout\,
	datad => \div1_cent|Equal0~3_combout\,
	combout => \div1_cent|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y34_N12
\div1_cent|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \div1_cent|Equal0~8_combout\ = (\div1_cent|CONT\(3) & (\div1_cent|CONT\(2) & (\div1_cent|CONT\(1) & \div1_cent|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1_cent|CONT\(3),
	datab => \div1_cent|CONT\(2),
	datac => \div1_cent|CONT\(1),
	datad => \div1_cent|Equal0~7_combout\,
	combout => \div1_cent|Equal0~8_combout\);

-- Location: LCFF_X23_Y34_N13
\div1_cent|DIV50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \div1_cent|Equal0~8_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \div1_cent|DIV50~regout\);

-- Location: LCCOMB_X23_Y34_N18
\CONT[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[0]~1_combout\ = (\div1_cent|DIV50~regout\ & ((\CLR~combout\) # (\EN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR~combout\,
	datac => \EN~combout\,
	datad => \div1_cent|DIV50~regout\,
	combout => \CONT[0]~1_combout\);

-- Location: LCFF_X23_Y34_N1
\CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y34_N16
\CONT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~2_combout\ = (!\CLR~combout\ & (!\LD~combout\ & (CONT(1) $ (CONT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONT(1),
	datab => \CLR~combout\,
	datac => \LD~combout\,
	datad => CONT(0),
	combout => \CONT~2_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y34_N6
\CONT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~3_combout\ = (\CONT~2_combout\) # ((\LD~combout\ & (!\CLR~combout\ & \LOAD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD~combout\,
	datab => \CLR~combout\,
	datac => \CONT~2_combout\,
	datad => \LOAD~combout\(1),
	combout => \CONT~3_combout\);

-- Location: LCFF_X23_Y34_N7
\CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(1));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y34_N28
\CONT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~4_combout\ = (!\CLR~combout\ & ((\LD~combout\ & ((\LOAD~combout\(2)))) # (!\LD~combout\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \CLR~combout\,
	datac => \LD~combout\,
	datad => \LOAD~combout\(2),
	combout => \CONT~4_combout\);

-- Location: LCFF_X23_Y34_N29
\CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(2));

-- Location: LCCOMB_X23_Y34_N20
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = CONT(3) $ (((CONT(1) & (CONT(0) & CONT(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONT(1),
	datab => CONT(0),
	datac => CONT(3),
	datad => CONT(2),
	combout => \Add0~1_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y34_N26
\CONT~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT~5_combout\ = (!\CLR~combout\ & ((\LD~combout\ & ((\LOAD~combout\(3)))) # (!\LD~combout\ & (\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD~combout\,
	datab => \CLR~combout\,
	datac => \Add0~1_combout\,
	datad => \LOAD~combout\(3),
	combout => \CONT~5_combout\);

-- Location: LCFF_X23_Y34_N27
\CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT~5_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \CONT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(3));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


