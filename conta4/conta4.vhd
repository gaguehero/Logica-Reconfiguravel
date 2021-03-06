Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity conta4 is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(3 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (3 downto 0));
end entity; 

Architecture hardware of conta4 is
Signal CONT: unsigned (3 downto 0);

BEGIN
	Process (CLK, RST)
	BEGIN
		If RST = '1' then
			CONT <= "0000";
		ELSIF CLK'event and CLK = '1' then
			IF CLR = '1' then
				CONT <= "0000";
			ELSE
				IF EN = '1' then
					IF LD = '1' then
						CONT <= LOAD;
					ELSE
						CONT <= CONT + 1;
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	Q <= CONT;
END Architecture;
