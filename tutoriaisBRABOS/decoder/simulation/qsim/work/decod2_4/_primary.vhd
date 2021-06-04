library verilog;
use verilog.vl_types.all;
entity decod2_4 is
    port(
        B               : in     vl_logic_vector(1 downto 0);
        Y               : out    vl_logic_vector(3 downto 0);
        EN              : in     vl_logic
    );
end decod2_4;
