Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY cronometro_tb IS
END ENTITY;

ARCHITECTURE example OF cronometro_tb IS
	COMPONENT cronometro IS
		PORT(	RST	: in std_logic;
			CLK  	: in std_logic;
			Q0  	: out unsigned(7 downto 0);
			Q1  	: out unsigned(7 downto 0);
			Q2  	: out unsigned(7 downto 0);
			Q3  	: out unsigned(7 downto 0);
			EN   	: in std_logic);
	END COMPONENT;
	

SIGNAL CLOCK, SW1, SW2: std_logic;
SIGNAL Q00: unsigned (7 downto 0); 
SIGNAL Q01: unsigned (7 downto 0);   
SIGNAL Q02: unsigned (7 downto 0); 
SIGNAL Q03: unsigned (7 downto 0);    

BEGIN
	UUT: cronometro
	PORT MAP (CLK => CLOCK,			
		      EN => SW1,
				RST => SW2,
			  Q0 => Q00,
			  Q1 => Q01,
			  Q2 => Q02,
			  Q3 => Q03);
				
		
		PROCESS
			BEGIN
			CLOCK<= '0';
			WAIT FOR 5 ns;
			CLOCK<= '1';
			WAIT FOR 5 ns;
		END PROCESS;
		
		PROCESS
			BEGIN
			SW1 <= '0';
			WAIT FOR 20 ns;
			SW1 <= '1';
			WAIT FOR 200 ns;
		END PROCESS;
		
		PROCESS
			BEGIN
			SW2 <= '1';
			WAIT FOR 2 ns;
			SW2 <= '0';
			WAIT;
		END PROCESS;
		
END ARCHITECTURE;
