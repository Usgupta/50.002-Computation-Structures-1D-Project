/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module beta_6 (
    input start_button,
    input clk,
    input rst,
    input rng16,
    input dec,
    output reg [7:0] main_timer_segs,
    output reg [3:0] main_timer_sel,
    output reg [7:0] mini_timer_5_segs,
    output reg [15:0] p1_led1,
    output reg [15:0] p1_led2,
    output reg [15:0] p1_led3,
    output reg [15:0] p1_led4,
    output reg [15:0] p2_led1,
    output reg [15:0] p2_led2,
    output reg [15:0] p2_led3,
    output reg [15:0] p2_led4
  );
  
  
  
  reg [15:0] inputAlu_a;
  
  reg [15:0] inputAlu_b;
  
  wire [16-1:0] M_game_alu_out;
  wire [1-1:0] M_game_alu_z;
  wire [1-1:0] M_game_alu_v;
  wire [1-1:0] M_game_alu_n;
  reg [16-1:0] M_game_alu_a;
  reg [16-1:0] M_game_alu_b;
  reg [6-1:0] M_game_alu_alufn;
  alu16_8 game_alu (
    .a(M_game_alu_a),
    .b(M_game_alu_b),
    .alufn(M_game_alu_alufn),
    .out(M_game_alu_out),
    .z(M_game_alu_z),
    .v(M_game_alu_v),
    .n(M_game_alu_n)
  );
  
  wire [1-1:0] M_edge_detector_variableCounter_out;
  reg [1-1:0] M_edge_detector_variableCounter_in;
  edge_detector_3 edge_detector_variableCounter (
    .clk(clk),
    .in(M_edge_detector_variableCounter_in),
    .out(M_edge_detector_variableCounter_out)
  );
  wire [1-1:0] M_game_timer_detector_out;
  reg [1-1:0] M_game_timer_detector_in;
  edge_detector_3 game_timer_detector (
    .clk(clk),
    .in(M_game_timer_detector_in),
    .out(M_game_timer_detector_out)
  );
  wire [6-1:0] M_game_controlunit_alufn;
  wire [3-1:0] M_game_controlunit_asel;
  wire [3-1:0] M_game_controlunit_bsel;
  wire [2-1:0] M_game_controlunit_wdsel;
  wire [4-1:0] M_game_controlunit_regfile_wa;
  wire [4-1:0] M_game_controlunit_regfile_ra;
  wire [4-1:0] M_game_controlunit_regfile_rb;
  wire [1-1:0] M_game_controlunit_we_regfile;
  wire [4-1:0] M_game_controlunit_main_timer_sel;
  wire [8-1:0] M_game_controlunit_main_timer_segs;
  wire [8-1:0] M_game_controlunit_mini_timer_segs;
  wire [16-1:0] M_game_controlunit_p1_led1;
  wire [16-1:0] M_game_controlunit_p1_led2;
  wire [16-1:0] M_game_controlunit_p1_led3;
  wire [16-1:0] M_game_controlunit_p1_led4;
  wire [16-1:0] M_game_controlunit_p2_led1;
  wire [16-1:0] M_game_controlunit_p2_led2;
  wire [16-1:0] M_game_controlunit_p2_led3;
  wire [16-1:0] M_game_controlunit_p2_led4;
  reg [1-1:0] M_game_controlunit_start_button;
  reg [1-1:0] M_game_controlunit_dec;
  reg [16-1:0] M_game_controlunit_rng16;
  fsm_auto_9 game_controlunit (
    .clk(clk),
    .rst(rst),
    .start_button(M_game_controlunit_start_button),
    .dec(M_game_controlunit_dec),
    .rng16(M_game_controlunit_rng16),
    .alufn(M_game_controlunit_alufn),
    .asel(M_game_controlunit_asel),
    .bsel(M_game_controlunit_bsel),
    .wdsel(M_game_controlunit_wdsel),
    .regfile_wa(M_game_controlunit_regfile_wa),
    .regfile_ra(M_game_controlunit_regfile_ra),
    .regfile_rb(M_game_controlunit_regfile_rb),
    .we_regfile(M_game_controlunit_we_regfile),
    .main_timer_sel(M_game_controlunit_main_timer_sel),
    .main_timer_segs(M_game_controlunit_main_timer_segs),
    .mini_timer_segs(M_game_controlunit_mini_timer_segs),
    .p1_led1(M_game_controlunit_p1_led1),
    .p1_led2(M_game_controlunit_p1_led2),
    .p1_led3(M_game_controlunit_p1_led3),
    .p1_led4(M_game_controlunit_p1_led4),
    .p2_led1(M_game_controlunit_p2_led1),
    .p2_led2(M_game_controlunit_p2_led2),
    .p2_led3(M_game_controlunit_p2_led3),
    .p2_led4(M_game_controlunit_p2_led4)
  );
  wire [16-1:0] M_players_out_a;
  wire [16-1:0] M_players_out_b;
  reg [4-1:0] M_players_write_address;
  reg [1-1:0] M_players_we;
  reg [16-1:0] M_players_data;
  reg [4-1:0] M_players_read_address_a;
  reg [4-1:0] M_players_read_address_b;
  reg_files_10 players (
    .clk(clk),
    .rst(rst),
    .write_address(M_players_write_address),
    .we(M_players_we),
    .data(M_players_data),
    .read_address_a(M_players_read_address_a),
    .read_address_b(M_players_read_address_b),
    .out_a(M_players_out_a),
    .out_b(M_players_out_b)
  );
  wire [1-1:0] M_vc_out;
  wire [16-1:0] M_vc_debug;
  variable_counter_11 vc (
    .clk(clk),
    .rst(rst),
    .out(M_vc_out),
    .debug(M_vc_debug)
  );
  wire [1-1:0] M_slow_timer_value;
  counter_12 slow_timer (
    .clk(clk),
    .rst(rst),
    .value(M_slow_timer_value)
  );
  
  always @* begin
    M_game_timer_detector_in = M_slow_timer_value;
    M_edge_detector_variableCounter_in = M_vc_out;
    M_game_controlunit_start_button = start_button;
    M_game_controlunit_rng16 = rng16;
    M_game_controlunit_dec = dec;
    M_players_we = M_game_controlunit_we_regfile;
    M_players_write_address = M_game_controlunit_regfile_wa;
    M_players_read_address_a = M_game_controlunit_regfile_ra;
    M_players_read_address_b = M_game_controlunit_regfile_rb;
    
    case (M_game_controlunit_asel)
      2'h0: begin
        inputAlu_a = M_players_out_a;
      end
      2'h1: begin
        inputAlu_a = 4'h5;
      end
      2'h2: begin
        inputAlu_a = 8'h3c;
      end
      default: begin
        inputAlu_a = 1'h0;
      end
    endcase
    
    case (M_game_controlunit_bsel)
      2'h0: begin
        inputAlu_b = M_players_out_b;
      end
      2'h1: begin
        inputAlu_b = 4'h0;
      end
      2'h3: begin
        inputAlu_b = 4'h1;
      end
      2'h2: begin
        inputAlu_b = 4'h2;
      end
      default: begin
        inputAlu_b = 1'h0;
      end
    endcase
    M_game_alu_a = inputAlu_a;
    M_game_alu_b = inputAlu_b;
    M_game_alu_alufn = M_game_controlunit_alufn;
    
    case (M_game_controlunit_wdsel)
      default: begin
        M_players_data = M_game_alu_out;
      end
    endcase
    main_timer_segs = M_game_controlunit_main_timer_segs;
    main_timer_sel = M_game_controlunit_main_timer_sel;
    mini_timer_5_segs = M_game_controlunit_mini_timer_segs;
    p1_led1 = M_game_controlunit_p1_led1;
    p1_led2 = M_game_controlunit_p1_led2;
    p1_led3 = M_game_controlunit_p1_led3;
    p1_led4 = M_game_controlunit_p1_led4;
    p2_led1 = M_game_controlunit_p2_led1;
    p2_led2 = M_game_controlunit_p2_led2;
    p2_led3 = M_game_controlunit_p2_led3;
    p2_led4 = M_game_controlunit_p2_led4;
  end
endmodule
