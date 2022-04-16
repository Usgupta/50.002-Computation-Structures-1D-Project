set projDir "C:/Users/ernes/Documents/stateintegration/work/vivado"
set projName "stateintegration"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/ernes/Documents/stateintegration/work/verilog/au_top_0.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/reset_conditioner_1.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/button_conditioner_2.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/edge_detector_3.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/counter_4.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/pn_gen_5.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/beta_6.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/pipeline_7.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/alu16_8.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/look_up_table_9.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/fsm_auto_10.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/reg_files_11.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/variable_counter_12.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/counter_13.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/adder_14.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/boolean_15.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/shift_16.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/compare_17.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/multiplier_18.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/multi_seven_seg_19.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/multi_dec_ctr_20.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/decimal_counter_5_21.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/seven_seg_22.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/edge_detector_23.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/counter_24.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/counter_25.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/decoder_26.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/decimal_counter_27.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/decimal_counter_28.v" "C:/Users/ernes/Documents/stateintegration/work/verilog/decimal_counter_29.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/ernes/Documents/stateintegration/work/constraint/alchitry.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" "C:/Users/ernes/Documents/stateintegration/work/constraint/io.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
