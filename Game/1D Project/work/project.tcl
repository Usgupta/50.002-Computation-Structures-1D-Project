set projDir "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/vivado"
set projName "1D Project Computation Structures"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/au_top_0.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/reset_conditioner_1.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/edge_detector_2.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/button_conditioner_3.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/counter_4.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/pn_gen_5.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/fsm_auto_6.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/pipeline_7.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/variable_counter_8.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/multi_seven_seg_9.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/multi_dec_ctr_10.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/decimal_counter_5_11.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/seven_seg_12.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/edge_detector_13.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/counter_14.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/counter_15.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/decoder_16.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/decimal_counter_17.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/decimal_counter_18.v" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/verilog/decimal_counter_19.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/constraint/io.xdc" "C:/Users/Lee\ Chang\ Zheng/Documents/Alchitry/1D\ Project\ Computation\ Structures/work/constraint/alchitry.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 12
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 12
wait_on_run impl_1
