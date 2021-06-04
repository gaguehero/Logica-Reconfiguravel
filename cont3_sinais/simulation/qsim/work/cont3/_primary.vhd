library verilog;
use verilog.vl_types.all;
entity cont3 is
    port(
        RST             : in     vl_logic;
        CLK             : in     vl_logic;
        Q               : out    vl_logic_vector(2 downto 0);
        EN              : in     vl_logic;
        CLR             : in     vl_logic;
        LD              : in     vl_logic;
        LOAD            : in     vl_logic_vector(2 downto 0)
    );
end cont3;
