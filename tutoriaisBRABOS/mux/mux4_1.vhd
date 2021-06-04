--
-- Mux 4:1 em VHDL
--
-- Gabriel Guerrero
-- Março 2021

	library IEEE;
	use IEEE.std_logic_1164.all;
	
	entity mux4_1 is port
	( 
		sel : in std_logic_vector (1 downto 0); --vetor de 2 elementos
		A	 : in std_logic_vector (3 downto 0); --vetor de 4 elementos
		X	 : out std_logic
	);
	end mux4_1;
	architecture hardware of mux4_1 is
	begin
		with sel select
			X <= A(0) when "00",
				  A(1) when "01",
				  A(2) when "10",
				  A(3) when "11",
				  '0'  when others;
		end hardware;

	