library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bram is
	port(
	clk : in std_logic;
	addr : in unsigned(9 downto 0);
	wr_en : in std_logic;
	dataI : in unsigned(7 downto 0);
	dataO : out unsigned(7 downto 0)
	);
end entity;

architecture arc of bram is
	type mem is array (0 to 1023) of unsigned(7 downto 0);
	signal ram : mem;
begin
	process(clk,wr_en)
		begin
		if rising_edge(clk) then
			if wr_en='1' then
				ram(to_integer(addr)) <= dataI;
			end if;
		end if;
	end process;
	dataO <= ram(to_integer(addr));
end architecture;
