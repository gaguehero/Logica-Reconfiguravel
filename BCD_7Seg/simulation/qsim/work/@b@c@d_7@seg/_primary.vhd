library verilog;
use verilog.vl_types.all;
entity BCD_7Seg is
    port(
        X               : in     vl_logic_vector(3 downto 0);
        SeteSeg         : out    vl_logic_vector(7 downto 0)
    );
end BCD_7Seg;
