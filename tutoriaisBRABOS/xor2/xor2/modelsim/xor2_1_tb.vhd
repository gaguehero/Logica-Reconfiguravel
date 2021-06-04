--
-- Testbench Xor 2_1
--
-- Gabriel Guerrero
-- Março 2021
--
-- A B | O
-- 0 0 | 0
-- 0 1 | 1
-- 1 0 | 1
-- 1 1 | 0
--
	entity testbench1 is end; -- é uma entidade sem entradas ou saídas

	library IEEE;
	use IEEE.std_logic_1164.all;
	use std.textio.all;
	
	architecture xor2_1_tb of testbench1 is
	component xor2_1
		port(
			A: in std_logic;
			B: in std_logic;
			O: out std_logic);
	end component;
	
	-- Sinais auxiliares 
	signal i_1 : std_logic;
	signal i_2 : std_logic;
	
	begin
	-- Instancia do componente para interconexão do componente
	
	xor1: xor2_1 port map (A=> i_1, B=> i_2, O=> open);
	
	estimulo : process
	begin
		wait for 5 ns; i_1 <= '0'; i_2 <= '0';
		wait for 5 ns; i_1 <= '1';
		wait for 5 ns; i_2 <= '1';
		wait for 5 ns; i_1 <= '0';
		wait;
	end process estimulo;
	end xor2_1_tb;
		
