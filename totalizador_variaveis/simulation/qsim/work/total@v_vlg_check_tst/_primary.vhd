library verilog;
use verilog.vl_types.all;
entity totalV_vlg_check_tst is
    port(
        Qout            : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end totalV_vlg_check_tst;
