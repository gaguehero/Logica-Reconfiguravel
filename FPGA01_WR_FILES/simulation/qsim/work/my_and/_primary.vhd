library verilog;
use verilog.vl_types.all;
entity my_and is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        O               : out    vl_logic
    );
end my_and;
