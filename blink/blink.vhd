--
-- Atributos em VHDL
--
-- Gerar um clock a partir do kit
--

	library IEEE;
	use IEEE.std_logic_1164.all;
	
	entity blink is
	port(
		saida : out integer range 0 to 255;
		clk : in 	std_logic
	);
	end blink;
	
	architecture hd of blink is
	begin
	process (clk)
		variable counter : integer range 0 to 255;
		variable prescaler : integer range 0 to 999999999;
		
		begin
		
		if (clk'event AND clk = '1')then
			prescaler := prescaler+1;
			if (prescaler = 0) then
				counter := 255 - counter;
			end if;
		end if;
		saida <= counter;
	end process;	
end hd;	