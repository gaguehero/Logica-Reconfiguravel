LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
ENTITY top_avalon IS
PORT ( 	clock, resetn 	: IN STD_LOGIC;
			writedata  		: IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			write_en      	: IN  STD_LOGIC;
			readdata   		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
   	   add        		: IN STD_LOGIC;
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
signal wr_en0,wr_en1 : std_LOGIC;
signal add32b, data32b : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal sai32b : std_LOGIC_VECTOR(31 downto 0);
signal add10b : unsigned(9 downto 0);
signal data8b,sai8b : unsigned (7 downto 0);

BEGIN
wr_en0 = (not add);
wr_en1 = add
--		reg 0: ADDR
--		33222222222211111111110000000000
--		10987654321098765432109876543210
--									 ---------- ADDR 
   
	r32_0 : reg32 -- escrita
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE      	=> wr_en0,
		D 			=> writedata, --vem do NIOS
 		Q 			=> add32b   --readdata_internal
		
--		reg 1: dataI
--		33222222222211111111110000000000
--		10987654321098765432109876543210
--						 			   -------- dataI
--						  				       

	r32_1 : reg32 -- escrita
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
      WE     	=> wr_en1,
		D 			=> writedata, --vem do NIOS
		Q 			=> data32b   --readdata_internal
);

add10b <= unsigned(add32b(9 downto 0));
data8b <= unsigned(data32b(7 downto 0));
	
	bram0 : bram
	port map (
		clk 		=> clock,
		addr 		=>	add10b,
		wr_en		=>	wr_en1,
		dataI		=> data8b,
		dataO		=> sai8b
  );
sai32b <= x"000000" & std_LOGIC_VECTOR(sai8b);

process(clock,wr_en)
	begin
	if read_en = '1' then
		readdata <= sai32b;
	else
		readdata <= (others => 'Z');
	
