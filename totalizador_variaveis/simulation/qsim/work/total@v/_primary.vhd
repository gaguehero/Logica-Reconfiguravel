library verilog;
use verilog.vl_types.all;
entity totalV is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Qout            : out    vl_logic_vector(2 downto 0)
    );
end totalV;
