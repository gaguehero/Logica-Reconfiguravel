--
-- TESTBENCH: Binary-coded Decimal conversor para 7 Segmentos
--
-- Gabriel Carrico Guerrero
-- 
-- Março de 2021
--
-- X1 X2 X3 X4 | a b c d e f g dp       |       a
-- 0  0  0  0  | 1 1 1 1 1 1 0 0        |     -----
-- 0  0  0  1  | 0 1 1 0 0 0 0 0 		 |	  f|     |b
-- 0  0  1  0  | 1 1 0 1 1 0 1 0 		 |		|	g	|
-- 0  0  1  1  | 1 1 1 1 0 0 1 0 		 |		 -----
-- 0  1  0  0  | 0 1 1 0 0 1 1 0 		 |	  e|     |c
-- 0  1  0  1  | 1 0 1 1 0 1 1 0 		 |		|	d	|  _
-- 0  1  1  0  | 1 0 1 1 1 1 1 0 		 |		 -----  | |dp
-- 0  1  1  1  | 1 1 1 0 0 0 0 0        |             -
-- 1  0  0  0  | 1 1 1 1 1 1 1 0 
-- 1  0  0  1  | 1 1 1 1 0 1 1 0 
-- 1  0  1  0  | 1 0 0 1 1 1 1 1 

	library IEEE;
	use IEEE.std_logic_1164.all;
	entity BCD_7Seg_tb is
	end entity;
	
	architecture bcdaum of BCD_7Seg_tb is
	component BCD_7Seg is port
	(
		X: in std_logic_vector (3 downto 0);
		SeteSeg: out std_logic_vector (7 downto 0)
	);
	end component;
	
	signal x1 : std_logic_vector (3 downto 0);
	signal seteseg1: std_logic_vector (7 downto 0);
	begin
	UUT: BCD_7Seg
		port map(
			X => x1,
			SeteSeg => seteseg1
		);
	process
	begin
		x1 <= "0000";
		wait for 20 ns;
		x1 <= "0001";
		wait for 20 ns;
		x1 <= "0010";
		wait for 20 ns;
		x1 <= "0011";
		wait for 20 ns;
		x1 <= "0100";
		wait for 20 ns;
		x1 <= "0101";
		wait for 20 ns;
		x1 <= "0110";
		wait for 20 ns;
		x1 <= "0111";
		wait for 20 ns;
		x1 <= "1000";
		wait for 20 ns;
		x1 <= "1001";
		wait for 20 ns;
		x1 <= "1010";
		wait for 20 ns;
		x1 <= "1011";
		wait for 20 ns;
		x1 <= "1100";
		wait for 20 ns;
		x1 <= "1101";
		wait for 20 ns;
		x1 <= "1110";
		wait for 20 ns;
		x1 <= "1111";
		wait;
		end process;
	end bcdaum;
		