Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity cont3 is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out std_logic_vector(2 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in std_logic_vector (2 downto 0));
end entity;  
Architecture hardware of cont3 is
Signal CONT: std_logic_vector (2 downto 0);
Begin
	Process (CLK, RST)
		
		Begin
		If RST = '1' then
		   CONT <= "000";
		Elsif CLK'event and CLK = '1' then
		   If CLR = '1'then
				CONT <= "000";
			Else
					If EN = '1' then
						If LD = '1' then
							CONT <= std_logic_vector((signed(LOAD)));
						Else
							CONT <= std_logic_vector((signed(CONT) + 1));
						End IF;
					End If;
			End If;
		End If;
	End process;
	Q <= CONT;
End architecture;
