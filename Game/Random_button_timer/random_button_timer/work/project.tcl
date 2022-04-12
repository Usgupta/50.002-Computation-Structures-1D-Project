set projDir "C:/Users/ernes/Desktop/Test/Test/work/vivado"
set projName "Test"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/ernes/Desktop/Test/Test/work/verilog/au_top_0.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/reset_conditioner_1.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/edge_detector_2.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/button_conditioner_3.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/variable_counter_4.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/counter_5.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/multi_seven_seg_6.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/multi_dec_ctr_7.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/pn_gen_8.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/alu16_9.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/look_up_table_10.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/pipeline_11.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/edge_detector_12.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/counter_13.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/counter_14.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/seven_seg_15.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/decoder_16.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/decimal_counter_17.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/decimal_counter_18.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/adder_19.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/boolean_20.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/shift_21.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/compare_22.v" "C:/Users/ernes/Desktop/Test/Test/work/verilog/multiplier_23.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/ernes/Desktop/Test/Test/work/constraint/io.xdc" "C:/Users/ernes/Desktop/Test/Test/work/constraint/alchitry.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
