Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cronometro is
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(15 downto 0);
		  B1: in std_logic; -- botão 1
		  B2: in std_logic); -- botão 2
end entity;  

Architecture X of cronometro is

component conta99
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(7 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (7 downto 0));
end component;

component conta59
	PORT(RST: in std_logic;
	     CLK: in std_logic;
		  Q: out unsigned(7 downto 0);
		  EN: in std_logic;
		  CLR: in std_logic;
		  LD:  in std_logic;
		  LOAD: in unsigned (7 downto 0));
end component;

Signal Clear, enSeg, enCen : std_logic;
Signal CenOut, SegOut : unsigned(7 downto 0);

BEGIN
	centesimos : conta99
	port map(
		CLK => CLK,
		RST => RST,
		Q => CenOut, -- Saída do primeiro valor
		EN => enCen,
		CLR => Clear,
		LD => '0',
		LOAD => "01010101" -- Carga da Unidade
	);

	segundos : conta59
	port map(
		CLK => CLK,
		RST => RST,
		Q => SegOut, -- Saída do segundo valor
		EN => enSeg,
		CLR => Clear,
		LD => '0',
		LOAD => "10101010" -- Carga da Unidade
	);
	
	PROCESS (CLK, RST)
		BEGIN
		Clear <='0';
		IF CenOut = "10011001" then -- detector de 99
			enSeg <= '1';
		Else
			enSeg <= '0';
		END IF;
		IF B1 = '1' then
			enCen <= '0';
			IF B2 = '1' then
				Clear <='1';
			End IF;
		Else
			enCen <= '1';
		END IF;
	End Process;
Q<= SegOut & CenOut;
End Architecture;