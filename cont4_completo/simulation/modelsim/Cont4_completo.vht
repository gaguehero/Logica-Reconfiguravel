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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/21/2020 16:59:18"
                                                            
-- Vhdl Test Bench template for design  :  Cont4_completo
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Cont4_completo_vhd_tst IS
END Cont4_completo_vhd_tst;
ARCHITECTURE Cont4_completo_arch OF Cont4_completo_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLR : STD_LOGIC;
SIGNAL EN : STD_LOGIC;
SIGNAL LD : STD_LOGIC;
SIGNAL LOAD : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
COMPONENT Cont4_completo
	PORT (
	CLK : IN STD_LOGIC;
	CLR : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	LD : IN STD_LOGIC;
	LOAD : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Cont4_completo
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLR => CLR,
	EN => EN,
	LD => LD,
	LOAD => LOAD,
	Q => Q,
	RST => RST
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Cont4_completo_arch;
