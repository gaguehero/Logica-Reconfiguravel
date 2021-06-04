--
-- Circutio Combinacional
--
-- Gabriel Guerrero
-- Fevereiro de 2021

	library IEEE;
	use IEEE.std_logic_1164.all;
	
	entity circuito_combinacional is port
	( 
		A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		O: out std_logic
		
	
	
	
	);
	end circuito_combinacional;
	
	architecture hardware of circuito_combinacional is
	
	signal OR1: std_logic;
	signal OR2: std_logic;
	
	begin 
		OR1 <= (not A) and (not B);
		OR2 <= A and (not C);
		O <= (OR1 or OR2);
	end hardware;
	