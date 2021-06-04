Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity totalV is
	PORT(	
			CLK  	: in std_logic;
			RST	: in STD_logic;
			Qout	: out unsigned (2 downto 0));
	end entity;
	Architecture x of totalV is
COMPONENT cont3 is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out std_logic_vector (2 downto 0);
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
		variable contador : integer range 0 to 3;
		BEGIN
			contador := 0;
			for I in 0 to 2 loop
				if (count(I) = '1') then
					contador := contador+1;
				end if;
			end loop;
			case contador is
			when 0 => Qout <= "000";
			when 1 => Qout <= "001";
			when 2 => Qout <= "010";
			when 3 => Qout <= "011";
			end case;
		end process;
end architecture;