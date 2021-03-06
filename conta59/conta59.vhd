Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity conta59 is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(7 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (7 downto 0));
end entity;  

Architecture X of conta59 is

component conta4
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(3 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (3 downto 0));
end component;

SIGNAL UniOut, DezOut, UniLoad, DezLoad: unsigned (3 downto 0);
SIGNAL CarrY, CleaR1, CleaR2, CleaRR1, CleaRR2 : std_logic;

BEGIN
	unidade: conta4
	port map(
		CLK => CLK,
		RST => RST,
		Q => UniOut, -- Saída do primeiro valor
		EN => EN,
		CLR => CleaRR1,
		LD => LD,
		LOAD => UniLoad -- Carga da Unidade
	);
CleaRR1 <= CLR or CleaR1;
	
	dezena: conta4
	port map(
		CLK => CLK,
		RST => RST,
		Q => DezOut, -- Saída do primeiro valor
		EN => CarrY,
		CLR => CleaRR2,
		LD => LD,
		LOAD => DezLoad -- Carga da Unidade
	);
	CleaRR2 <= CLR or CleaR2;	
	
	PROCESS (CLK, RST)
		BEGIN
		IF DezOut = 5 and UniOut = 9 and EN = '1' then
			CleaR2 <= '1';
			CleaR1 <= '1';
		ELSIF UniOut = 9 and EN = '1' then
			CleaR1 <= '1';
			CarrY <= '1';
		ELSE 
			CleaR2 <= '0';
			CleaR1 <= '0';
			CarrY <= '0';
		END IF;

	END PROCESS;
Q <= DezOut & UniOut;
End X;
	