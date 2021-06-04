Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity Cont4_completo is
   PORT(RST  : in std_logic;
        CLK  : in std_logic;
        Q    : out unsigned(3 downto 0);
        EN   : in std_logic;
        CLR  : in std_logic;
        LD   : in std_logic;
        LOAD : in unsigned (3 downto 0));
end entity;
Architecture X of Cont4_completo is
Signal CONT: unsigned (3 downto 0);
component DIVISOR is

port	(CLK: in std_logic;
		 RST: in std_logic;
		 DIV50: out std_logic 
		 );
		 
End component;
signal CLK_1centEn: std_logic;

Begin

div1_cent: DIVISOR
port map(CLK => CLK,
			RST => RST,
			DIV50 => CLK_1centEn);

Process (CLK, RST)
   variable testevar : std_logic;
   Begin
	If RST = '1' then
	   CONT <= "0000";
		testevar := '0';
	Elsif CLK' event and CLK = '1' then
		if CLK_1centEn = '1' then
			If CLR = '1'then
				CONT <= "0000";
			Else
				If EN = '1' then
					If LD = '1' then
						CONT <= LOAD;
					Else
						testevar := '1';
						CONT <= CONT+1;
					--CONT <= testevar;
					End IF;
				End If;
			End If;
		End If;
	End if;
End process;
Q <= CONT;
--Q <= CONT OR "1001";
End architecture;
