library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bram_tb is
end entity;

architecture x of bram_tb is
component bram is
	port(
	clk : in std_logic;
	addr : in unsigned(9 downto 0);
	wr_en : in std_logic;
	dataI : in unsigned(7 downto 0);
	dataO : out unsigned(7 downto 0)
	);
end component;

signal clk, wr_en: std_logic;
signal address : unsigned(9 downto 0);
signal entra, sai: unsigned(7 downto 0);
begin
DUT: bram
port map(	
			clk => clk,
			addr => address,
			wr_en => wr_en,
			dataI => entra,
			dataO => sai);

clk_gen: Process	
begin
	clk <= '0';
   wait for 10 ns;
	clk <= '1';
   wait for 10 ns;
end process;


		process
		begin 
			wait for 20 ns;
			wr_en <= '1';
			entra <= x"50";
			address <= "0101010101";
			wait for 20 ns;
			entra <= x"23";
			address <= "0000000000";
			wait for 20 ns;
			wr_en <= '0';
			address <= "0101010101";
			wait for 20 ns;
			address <= "0000000001";
			wait for 20 ns;
			entra <= x"09";
			address <= "0000000000";
		end process;
End architecture;