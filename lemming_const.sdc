create_clock -name clk -period 10 -waveform {0 5} [get_ports "clk"]
set_clock_transition -rise 0.05 [get_clocks "clk"]
set_clock_transition -fall 0.05 [get_clocks "clk"]
set_clock_uncertainty 0.01 [get_ports "clk"]

set_input_delay -max 1.0 [get_ports "areset" ] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "bump_right" ] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "bump_left" ] -clock [get_clocks "clk"]

set_input_delay -max 1.0 [get_ports "ground" ] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "dig" ] -clock [get_clocks "clk"]

set_output_delay -max 1.0 [get_ports "walk_left" ] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "walk_right" ] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "aaah" ] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "digging" ] -clock [get_clocks "clk"]

set_max_delay 3 -from ground -to digging
set_max_delay 3 -from ground -to aaah
set_max_delay 3 -from ground -to digging

