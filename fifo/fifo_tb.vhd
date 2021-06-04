library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo_tb is
end entity;

architecture x of fifo_tb is
component fifo is
port(
	clk : in std_logic;
	count : out unsigned(8 downto 0);
	rst: in std_logic;
	wr : in std_logic;
	rd : in std_logic; 
	dataI : in unsigned(7 downto 0);
	dataO : out unsigned(7 downto 0)
	);
end component;

signal clk, rst, wr_en, rd_en: std_logic;
signal count: unsigned (8 downto 0);
signal entra, sai: unsigned(7 downto 0);

begin
DUT: fifo
port map(	
			clk => clk,
			rst => rst,
			count => count,
			wr => wr_en,
			rd => rd_en,
			dataI => entra,
			dataO => sai);

clk_gen: Process	
begin
	clk <= '0';
   wait for 10 ns;
	clk <= '1';
   wait for 10 ns;
end process;

rst_gen: Process 
begin
	rst <= '1';
   wait for 15 ns;
	rst <= '0';
   wait;
end process;

process
		begin 
			wait for 20 ns;
			wr_en <= '1';
			rd_en <= '0';
			entra <= x"50";
			wait for 20 ns;
			entra <= x"23";
			wait for 20 ns;
			wr_en <= '1';
			entra <= x"50";
			wait for 20 ns;
			entra <= x"23";
			wait for 20 ns;
			wr_en <= '0';
			rd_en <= '1';
			wait for 20 ns;
			wait for 20 ns;
			entra <= x"09";
			wait for 20 ns;
			wr_en <= '1';
			rd_en <= '0';
			wait for 20 ns;
			wr_en <= '0';
			rd_en <= '1';
			wait for 20 ns;
			wait for 20 ns;
			wait for 20 ns;
			wait for 20 ns;
		end process;
End architecture;