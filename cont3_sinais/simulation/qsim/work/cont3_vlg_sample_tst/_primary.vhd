library verilog;
use verilog.vl_types.all;
entity cont3_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        EN              : in     vl_logic;
        LD              : in     vl_logic;
        LOAD            : in     vl_logic_vector(2 downto 0);
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cont3_vlg_sample_tst;
