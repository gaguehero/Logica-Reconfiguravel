--
-- Descri�ao de Hardware (VHDL) de uma Porta XOR de duas entradas
--             ______
--      in1 --|      |           in1 in2  | o
--            | xor  |-- o       ---------|---
--      in2 --|______|            0   0   | 0
--                                0   1   | 1
--                                1   0   | 1
--                                1   1   | 0
--
-- Autor: Eng. Wagner Rambo         Data: Agosto de 2015
--
-- Kit de Desenvolvimento: EE02-SOQ, dispon�vel em http://www.professoremersonmartins.com.br/site/products/KIT-FPGA-%252d-EE02-%252d-SOQ.html
--
--

		library IEEE;											-- Biblioteca utilizada: IEEE
		use IEEE.std_logic_1164.all;						-- Inclui todo o pacote padr�o 1164
		
		entity xor2_1 is									-- In�cio da declara�ao da entidade
		port(														
				in1   :   in   std_logic;					-- Entrada in1 padr�o l�gico
				in2   :   in   std_logic;					-- Entrada in2 padr�o l�gico
				o     :  out   std_logic);             -- Sa�da o padr�o l�gico
		end xor2_1;											-- Final da declara�ao da entidade
		
		architecture hardware of xor2_1 is			-- In�cio da declara�ao da arquitetura
		begin														-- In�cio do codigo concorrente
			
				o <= in1 xor in2;								-- Sa�da o recebe in1 XOR com in2
		
		end hardware;											-- Final da declara�ao da arquitetura 
		
		
