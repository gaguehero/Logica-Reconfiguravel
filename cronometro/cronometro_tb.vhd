Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity cronometro_tb is
end entity;

Architecture X of cronometro_tb is

component cronometro
PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(15 downto 0);
		  B1: in std_logic;
		  B2: in std_logic);
end component;

Signal clk, rst : std_logic;
Signal B1, B2 : std_logic;
signal Q: unsigned (15 downto 0);
begin
	-- região "ativa"
	B1 <= '0';
	B1 <= '0';
-- gerar o clock
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
DUT: cronometro
port map(
       RST  => RST , 
       CLK  => CLK ,
       Q    => Q   ,
		 B1 	=> B1	 ,
		 B2 	=> B2 );
	
End architecture;