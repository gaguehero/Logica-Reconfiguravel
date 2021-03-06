--
-- Porta Lógica AND descrita em VHDL
--
-- Duas entradas A,B e uma saída O
--
-- Autor: Gabriel Guerrero
-- Data: Março de 2021

	library IEEE;				 -- instituto de engenheiros elétricos e eletrônicos
	use IEEE.std_logic_1164.all; -- biblioteca padrão 1164
	
	entity my_and is port
	(
		A: in std_logic; 			-- entrada digital A
		B: in std_logic;			-- entrada digital B
		O: out std_logic			-- saída digital O
	);
	end my_and;
	
	architecture hardware of my_and is
	begin							-- inicia o hardware
	O <= A AND B;				-- O recebe A && B
	end hardware;				-- final do hardware
	
	