--
-- Binary-coded Decimal conversor para 7 Segmentos
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
	entity BCD_7Seg is port
	(
		X: in std_logic_vector (3 downto 0);
		SeteSeg: out std_logic_vector (7 downto 0)
	);
	end BCD_7Seg;
	
	architecture hardware of BCD_7Seg is
	begin
	process(X)
	begin
		case X is
			when "0000" => SeteSeg <= "11111100";
			when "0001" => SeteSeg <= "01100000";
			when "0010" => SeteSeg <= "11011010";
			when "0011" => SeteSeg <= "11110010";
			when "0100" => SeteSeg <= "01100110";
			when "0101" => SeteSeg <= "10110110";
			when "0110" => SeteSeg <= "10111110";
			when "0111" => SeteSeg <= "11100000";
			when "1000" => SeteSeg <= "11111110";
			when "1001" => SeteSeg <= "11110110";
			when others => SeteSeg <= "10011111";
			end case;
		end process;
	end hardware;
	