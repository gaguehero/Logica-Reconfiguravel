--
-- Unidade Lógica Aritimética em VHDL
--
-- Gabriel Guerrero
-- Março de 2021
--
-- sel2 sel1 sel0 | Out
--  0    0    0   | A+B
--  0    0    1   | A-B
--  0    1    0   | A and B
--  0    1    1   | A or  B
--  1    0    0   | A xor B
--  1    0    1   | not A
--  1    1    0   | not B
--  1    1    1   | Z
--
	library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.std_logic_unsigned.all;
	entity unidadeLogicaArt is port
	( 
		A:   in std_logic_vector  (3 downto 0);
		B:   in std_logic_vector  (3 downto 0);
		SEL: in std_logic_vector  (2 downto 0);
		O:   out std_logic_vector (3 downto 0)
	);
	end unidadeLogicaArt;
	
	architecture hardware of unidadeLogicaArt is
	begin
	process(A,B,SEL)
	begin
		case SEL is
		when "000" => O <= A +   B;
		when "001" => O <= A -   B;
		when "010" => O <= A and B;
		when "011" => O <= A or  B;
		when "100" => O <= A xor B;
		when "101" => O <= not A;
		when "110" => O <= not B;
		when others => O <= "ZZZZ";
		end case;
	end process;
	end hardware;