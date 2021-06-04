LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
ENTITY top_avalon IS
PORT ( 	clock, resetn 	: IN STD_LOGIC;
			chipselect 		: IN  STD_LOGIC;
			writedata  		: IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			write_en      	: IN  STD_LOGIC;
			readdata   		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
   	   add        		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			read_en       	: IN STD_LOGIC );
END top_avalon;

ARCHITECTURE arq OF top_avalon IS

COMPONENT reg32
PORT ( 		clock, resetn 	: IN STD_LOGIC;
				WE 				: IN STD_LOGIC;
				D 					: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
				Q 					: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
END COMPONENT;

component bram is
	port(
	clk 	: in std_logic;
	addr 	: in unsigned(9 downto 0);
	wr_en : in std_logic;
	dataI : in unsigned(7 downto 0);
	dataO : out unsigned(7 downto 0)
	);
end component;

signal write_enable0, write_enable1, write_enable2, addZero, addUm, read_en0, read_en1 : std_logic;
--signal read_enable0, read_enable1, read_enable_cnt, reg_n_cont : std_logic;
signal r32o0, r32o1, r32Check, r32Out, SAIDA, CHECK, dataBram: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal ADDR: std_LOGIC_VECTOR(9 DOWNTO 0);
--signal endereco: unsigned(9 downto 0);
signal dataIn: std_LOGIC_VECTOR(7 DOWNTO 0);
--signal entra: unsigned(7 downto 0);
signal dataOut: unsigned(7 downto 0);
signal WR_EN, RST: std_logic;

BEGIN
addZero <= add(0);
addUm <= add(1);
write_enable0 <= write_en and chipselect  and (not addZero) and (not addUm);  -- 1 1 00
write_enable1 <= write_en and chipselect  and (addZero) and (not addUm); 		-- 1 1 01
write_enable2 <= write_en and chipselect  and (not addZero) and (addUm);		-- 1 1 10

--		reg 0: ADDR
--		33222222222211111111110000000000
--		10987654321098765432109876543210
--									 ---------- ADDR 
   
	r32_0 : reg32 -- escrita
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE      	=> write_enable0,
		D 			=> writedata, --vem do NIOS
 		Q 			=> r32o0   --readdata_internal
);
ADDR <= r32o0(9 downto 0);

--		reg 1: dataI
--		33222222222211111111110000000000
--		10987654321098765432109876543210
--						 			   -------- dataI
--						  				       

	r32_1 : reg32 -- escrita
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
      WE     	=> write_enable1,
		D 			=> writedata, --vem do NIOS
		Q 			=> r32o1   --readdata_internal
);
dataIn <= r32o1(7 downto 0);

--		reg 2: CHECK
--		33222222222211111111110000000000
--		10987654321098765432109876543210
--		
--		PASS: 80658383
--		FAIL: 70657376	
	r32_2 : reg32 -- escrita e leitura
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
      WE     	=> write_enable2,
		D 			=> writedata,
		Q 			=> r32Check   --readdata_internal
);

	r32_3 : reg32 -- leitura
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
      WE     	=> '1',
		D 			=> dataBram,
		Q 			=> r32Out);

	bram0 : bram
	port map (
		clk 		=> clock,
		addr 		=>	unsigned(ADDR),
		wr_en		=>	write_enable1,
		dataI		=> unsigned(dataIn),
		dataO		=> dataOut
  );
dataBram <= x"000000" & STD_LOGIC_VECTOR(dataOut);

--	process(clock,wr_en)
--		begin
--		if rising_edge(clock) then
--			if write_enable0 = '1' then
--				endereco <= unsigned(ADDR);
--			end if;
--			if write_enable1 = '1' then
--				entra <= unsigned(dataIn);
--			end if;
--		end if;
--	end process;


read_en0    <= read_en and chipselect and (not addZero);
read_en1    <= read_en and chipselect and      addZero;

readdata <= dataBram   when read_en0    = '1' else  
				r32Check when read_en1    = '1' else
												(others => 'Z');


-- process(clock)
	-- begin
	
	-- if rising_edge(clock) then
		-- if write_enable0 = '1' then
			-- writedata_internal <= writedata;
		-- --elsif read_enable = '1' then
	   -- --readdata <= SAIDA;
						
		-- end if;
	
	-- end if;
		
	-- end process;

END arq;
