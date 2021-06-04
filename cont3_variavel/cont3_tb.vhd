Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cont3_tb is
end entity;

Architecture X1 of cont3_tb is
-- região declarativa

--Component 
component cont3 is
   PORT(RST  : in std_logic;
        CLK  : in std_logic;
        Q    : out std_logic_vector(2 downto 0);
        EN   : in std_logic;
        CLR  : in std_logic;
        LD   : in std_logic;
        LOAD : in std_logic_vector (2 downto 0));
end component;

Signal clk1, rst1 : std_logic;
Signal en1, clr1, ld1 : std_logic;
signal load1 , q1: std_logic_vector (2 downto 0);
begin
	-- região "ativa"
	en1   <= '1';
	clr1  <= '0';
	ld1  <= '0';
	load1 <= "101";  -- x"0"

-- gerar o clock
clk_gen: Process	
begin
	clk1 <= '0';
   wait for 10 ns;
	clk1 <= '1';
   wait for 10 ns;
end process;
	
-- gerar o rst
rst_gen: Process 
begin
	rst1 <= '1';
   wait for 15 ns;
	rst1 <= '0';
   wait;
end process;

-- gerar uma instância do DUT (device under test)
DUT: cont3
port map(
       RST  => rst1 , 
       CLK  => clk1 ,
       Q    => q1   ,
       EN   => en1  ,
       CLR  => clr1 ,
       LD   => ld1  ,
       LOAD => load1);
	
End architecture;