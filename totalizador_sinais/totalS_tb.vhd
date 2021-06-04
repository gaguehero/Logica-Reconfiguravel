Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity totalS_tb is
end entity;

Architecture x of totalS_tb is

component totalS is 
	PORT(	
			CLK  	: in std_logic;
			RST	: in STD_logic;
			Qout	: out std_logic_vector (2 downto 0));
end component;

signal clk, rst : std_logic;
signal Q : std_logic_vector (2 downto 0);
begin

clk_gen: Process	
begin
	clk <= '0';
   wait for 10 ns;
	clk <= '1';
   wait for 10 ns;
end process;
	
-- gerar o rst
rst_gen: Process 
begin
	rst <= '1';
   wait for 15 ns;
	rst <= '0';
   wait;
end process;
-- gerar uma instância do DUT (device under test)
DUT: totalS
port map(
	CLK => CLK,
	RST => RST,
	Qout => Q);
End architecture;
