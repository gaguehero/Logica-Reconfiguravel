library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo is
	port(
	clk : in std_logic;
	count : out unsigned(8 downto 0);
	rst: in std_logic;
	wr : in std_logic;
	rd : in std_logic; 
	dataI : in unsigned(7 downto 0);
	dataO : out unsigned(7 downto 0)
	);
end entity;

architecture arc of fifo is
	type mem is array (0 to 511) of unsigned (7 downto 0);
	signal element: mem;
	signal wr_index, rd_index : unsigned(8 downto 0);
	signal n_reads: unsigned (8 downto 0);
begin
	process (clk, rst)
	begin
		if rst = '1' then
			n_reads <= "000000000";
			wr_index <= "000000000";
			rd_index <= "000000000";
		elsif clk'event and clk = '1' then
			if rd = '1' and n_reads > "000000000" then -- operação de leitura
				dataO <= element(to_integer(rd_index));
				n_reads <= n_reads -1;
				if rd_index /= wr_index then
					rd_index <= rd_index+1;
				else
					rd_index <= "000000000";
					wr_index <= "000000000";
				end if;
			end if;
			if wr = '1' and n_reads < "111111111" then -- operação de escrita
				element(to_integer(wr_index)) <= dataI;
				wr_index <= wr_index+1;
				n_reads <= n_reads +1;
			end if;
		end if;
		count <= n_reads;
	end process;
	end architecture;
		
				
	