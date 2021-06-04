library verilog;
use verilog.vl_types.all;
entity decod2_4_vlg_sample_tst is
    port(
        B               : in     vl_logic_vector(1 downto 0);
        EN              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end decod2_4_vlg_sample_tst;
