library verilog;
use verilog.vl_types.all;
entity mux4_1 is
    port(
        sel             : in     vl_logic_vector(1 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        X               : out    vl_logic
    );
end mux4_1;
