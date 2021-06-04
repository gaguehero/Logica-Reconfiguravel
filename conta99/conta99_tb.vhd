Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity conta99_tb is
end entity;

Architecture X of conta99_tb is

component conta99
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(7 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (7 downto 0));
end component;

Signal clk, rst : std_logic;
Signal EN, CLR, LD : std_logic;
signal LOAD , Q: unsigned (7 downto 0);
begin
	-- região "ativa"
	EN   <= '1';
	CLR  <= '0';
	LD   <= '0';
	LOAD <= "10101010";  -- x"0"

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
DUT: conta99
port map(
       RST  => RST , 
       CLK  => CLK ,
       Q    => Q   ,
       EN   => EN  ,
       CLR  => CLR ,
       LD   => LD  ,
       LOAD => LOAD);
	
End architecture;