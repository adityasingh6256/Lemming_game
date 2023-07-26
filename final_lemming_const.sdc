# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.10-p002_1 on Wed Jul 26 17:00:28 IST 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design lemming

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.05 [get_clocks clk]
set_max_delay 3 -from [get_ports ground] -to [list \
  [get_ports aaah]  \
  [get_ports digging] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports areset]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports bump_right]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports bump_left]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports ground]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports dig]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports walk_left]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports walk_right]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports aaah]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports digging]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
