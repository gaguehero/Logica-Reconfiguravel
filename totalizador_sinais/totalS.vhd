Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity totalS is
	PORT(	
			CLK  	: in std_logic;
			RST	: in STD_logic;
			Qout	: out std_logic_vector (2 downto 0));
	end entity;
	Architecture x of totalS is
COMPONENT cont3 is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out std_logic_vector(2 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in std_logic_vector (2 downto 0));
end component; 
SIGNAL count: std_logic_vector (2 downto 0);
SIGNAL ld, clr, en: std_logic;
SIGNAL load: std_logic_vector (2 downto 0);
	
BEGIN	
	ld <= '0';
	load <= "000";
	clr <= '0';
	en <= '1';	
	totalizador: cont3
	PORT MAP (CLK => CLK,
				RST => RST,
				EN  => en,
				CLR => clr,
				LD  => ld,
				LOAD => load,
				Q => count);
	PROCESS (CLK, RST) 
		BEGIN
		CASE count is
		when "000" => Qout <= "000";
		when "001" => Qout <= "001";
		when "010" => Qout <= "001";
		when "011" => Qout <= "010";
		when "100" => Qout <= "001";
		when "101" => Qout <= "010";
		when "110" => Qout <= "010";
		when others => Qout <= "011";
		end case;
	end process;
end architecture;