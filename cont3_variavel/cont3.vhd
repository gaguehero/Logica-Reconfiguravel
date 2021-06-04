Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity cont3 is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out std_logic_vector (2 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in std_logic_vector (2 downto 0));
end entity;  
Architecture hardware of cont3 is

Begin
	Process (CLK, RST)
		variable contador : integer range 0 to 7;
		Begin
		If RST = '1' then
		   contador := 0;
		Elsif CLK'event and CLK = '1' then
		   If CLR = '1'then
				contador := 0;
			Else
				If EN = '1' then
					If LD = '1' then
						Q <= LOAD;
					Else
						contador := contador+1;
					End If;
				End If;
			End If;
		End If;
		case contador is
		when 0 => Q <= "000";
		when 1 => Q <= "001";
		when 2 => Q <= "010";
		when 3 => Q <= "011";
		when 4 => Q <= "100";
		when 5 => Q <= "101";
		when 6 => Q <= "110";
		when others => Q <= "111";
		end case;
	End process;
End architecture;
