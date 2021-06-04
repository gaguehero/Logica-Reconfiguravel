LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity top_avalon_tb is
end entity;

architecture x of top_avalon_tb is
component top_avalon is
PORT ( 	clock, resetn 	: IN STD_LOGIC;
			chipselect 		: IN  STD_LOGIC;
			writedata  		: IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			write_en      	: IN  STD_LOGIC;
			readdata   		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
   	   add        		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			read_en       	: IN STD_LOGIC );
end component;

signal clk,resetn,write_en, read_en,chipselect: std_logic;
signal address: std_LOGIC_VECTOR (1 downto 0);
signal data, saida: std_LOGIC_VECTOR (31 downto 0);
begin
DUT: top_avalon
port map(
				clock=>clk,
				resetn=>resetn,
				chipselect=>chipselect,
				write_en=>write_en,
				read_en=>read_en,
				add=>address,
				writedata=>data,
				readdata=>saida);
				
clk_gen: Process	
begin
	clk <= '0';
   wait for 10 ns;
	clk <= '1';
   wait for 10 ns;
end process;

Process
begin
	resetn <='1';
	read_en <='0';
	wait for 40 ns;
	write_en <='1';
	chipselect <='1';
	address <="00";
	data <= x"00000011";
	wait for 40 ns;
	address <="01";
	data <= x"00000044";
	wait for 40 ns;
	address <="00";
	data <= x"00000000";
	wait for 40 ns;
	address <="01";
	data <= x"00000023";
	wait for 40 ns;
	address <="00";
	data <= x"00000001";
	wait for 40 ns;
	address <="01";
	data <=x"00000032";
	wait for 40 ns;
	read_en <='1';
	chipselect <='1';
	address <="00";
	data <= x"00000011";
	wait for 80 ns;
	data <= x"00000000";
	wait for 80 ns;
	data <= x"00000001";
	wait for 80 ns;
	address <="00";
	data <=x"00000012";
	wait for 200 ns;
end process;
END x;