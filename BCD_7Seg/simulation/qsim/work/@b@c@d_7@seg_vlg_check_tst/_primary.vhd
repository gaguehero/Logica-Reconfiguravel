library verilog;
use verilog.vl_types.all;
entity BCD_7Seg_vlg_check_tst is
    port(
        SeteSeg         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end BCD_7Seg_vlg_check_tst;
