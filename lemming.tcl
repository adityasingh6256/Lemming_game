#rm designs
#rm lemming
set_attr init_lib_search_path /home/adityamtech/Cadence_design_database_45nm/Cadence_design_database_45nm/lib

set_attr init_hdl_search_path /home/adityamtech/lemming

set_attr library fast_vdd1v0_basicCells.lib

read_hdl lemming.v
#read_physical -lefs /home/adityamtech/Cadence_design_database_45nm/Cadence_design_database_45nm/lef/gsclib045_tech.lef
elaborate
read_sdc lemming_const.sdc
set_attr syn_generic_effort high
syn_gen
syn_map
set_attr syn_opt_effort high
syn_opt
#Check design for timing errors
check_design > ./reports/after/design_check.txt
report_gates > ./reports/after/lemming_gates.txt
report_timing > ./reports/after/lemming_timing.txt
report_area > ./reports/after/lemming_area.txt
report_power > ./reports/after/lemming_power.txt
report_qor > ./reports/after/qor_final.txt
write_hdl > ./reports/after/lemming_synth.v
write_sdc > ./reports/after/final_lemming_const.sdc

