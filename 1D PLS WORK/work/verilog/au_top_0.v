/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input usb_rx,
    output reg usb_tx,
    output reg [23:0] io_led,
    output reg [7:0] io_ledone,
    output reg [3:0] io_sel,
    output reg [3:0] io_sel2,
    output reg [3:0] io_sel3,
    output reg [7:0] io_seg,
    output reg [7:0] io_seg2,
    output reg [7:0] io_seg3,
    output reg [7:0] io_seg4,
    input [4:0] io_button,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_start_button_out;
  reg [1-1:0] M_start_button_in;
  button_conditioner_2 start_button (
    .clk(clk),
    .in(M_start_button_in),
    .out(M_start_button_out)
  );
  wire [1-1:0] M_edge_start_button_out;
  reg [1-1:0] M_edge_start_button_in;
  edge_detector_3 edge_start_button (
    .clk(clk),
    .in(M_edge_start_button_in),
    .out(M_edge_start_button_out)
  );
  wire [1-1:0] M_p1_button1_out;
  reg [1-1:0] M_p1_button1_in;
  button_conditioner_2 p1_button1 (
    .clk(clk),
    .in(M_p1_button1_in),
    .out(M_p1_button1_out)
  );
  wire [1-1:0] M_edge_p1_button1_out;
  reg [1-1:0] M_edge_p1_button1_in;
  edge_detector_3 edge_p1_button1 (
    .clk(clk),
    .in(M_edge_p1_button1_in),
    .out(M_edge_p1_button1_out)
  );
  wire [1-1:0] M_p1_button2_out;
  reg [1-1:0] M_p1_button2_in;
  button_conditioner_2 p1_button2 (
    .clk(clk),
    .in(M_p1_button2_in),
    .out(M_p1_button2_out)
  );
  wire [1-1:0] M_edge_p1_button2_out;
  reg [1-1:0] M_edge_p1_button2_in;
  edge_detector_3 edge_p1_button2 (
    .clk(clk),
    .in(M_edge_p1_button2_in),
    .out(M_edge_p1_button2_out)
  );
  wire [1-1:0] M_p1_button3_out;
  reg [1-1:0] M_p1_button3_in;
  button_conditioner_2 p1_button3 (
    .clk(clk),
    .in(M_p1_button3_in),
    .out(M_p1_button3_out)
  );
  wire [1-1:0] M_edge_p1_button3_out;
  reg [1-1:0] M_edge_p1_button3_in;
  edge_detector_3 edge_p1_button3 (
    .clk(clk),
    .in(M_edge_p1_button3_in),
    .out(M_edge_p1_button3_out)
  );
  wire [1-1:0] M_p1_button4_out;
  reg [1-1:0] M_p1_button4_in;
  button_conditioner_2 p1_button4 (
    .clk(clk),
    .in(M_p1_button4_in),
    .out(M_p1_button4_out)
  );
  wire [1-1:0] M_edge_p1_button4_out;
  reg [1-1:0] M_edge_p1_button4_in;
  edge_detector_3 edge_p1_button4 (
    .clk(clk),
    .in(M_edge_p1_button4_in),
    .out(M_edge_p1_button4_out)
  );
  wire [1-1:0] M_p2_button1_out;
  reg [1-1:0] M_p2_button1_in;
  button_conditioner_2 p2_button1 (
    .clk(clk),
    .in(M_p2_button1_in),
    .out(M_p2_button1_out)
  );
  wire [1-1:0] M_edge_p2_button1_out;
  reg [1-1:0] M_edge_p2_button1_in;
  edge_detector_3 edge_p2_button1 (
    .clk(clk),
    .in(M_edge_p2_button1_in),
    .out(M_edge_p2_button1_out)
  );
  wire [1-1:0] M_p2_button2_out;
  reg [1-1:0] M_p2_button2_in;
  button_conditioner_2 p2_button2 (
    .clk(clk),
    .in(M_p2_button2_in),
    .out(M_p2_button2_out)
  );
  wire [1-1:0] M_edge_p2_button2_out;
  reg [1-1:0] M_edge_p2_button2_in;
  edge_detector_3 edge_p2_button2 (
    .clk(clk),
    .in(M_edge_p2_button2_in),
    .out(M_edge_p2_button2_out)
  );
  wire [1-1:0] M_p2_button3_out;
  reg [1-1:0] M_p2_button3_in;
  button_conditioner_2 p2_button3 (
    .clk(clk),
    .in(M_p2_button3_in),
    .out(M_p2_button3_out)
  );
  wire [1-1:0] M_edge_p2_button3_out;
  reg [1-1:0] M_edge_p2_button3_in;
  edge_detector_3 edge_p2_button3 (
    .clk(clk),
    .in(M_edge_p2_button3_in),
    .out(M_edge_p2_button3_out)
  );
  wire [1-1:0] M_p2_button4_out;
  reg [1-1:0] M_p2_button4_in;
  button_conditioner_2 p2_button4 (
    .clk(clk),
    .in(M_p2_button4_in),
    .out(M_p2_button4_out)
  );
  wire [1-1:0] M_edge_p2_button4_out;
  reg [1-1:0] M_edge_p2_button4_in;
  edge_detector_3 edge_p2_button4 (
    .clk(clk),
    .in(M_edge_p2_button4_in),
    .out(M_edge_p2_button4_out)
  );
  wire [1-1:0] M_edge_detector_slow_timer_out;
  reg [1-1:0] M_edge_detector_slow_timer_in;
  edge_detector_3 edge_detector_slow_timer (
    .clk(clk),
    .in(M_edge_detector_slow_timer_in),
    .out(M_edge_detector_slow_timer_out)
  );
  wire [1-1:0] M_slow_timer_value;
  counter_4 slow_timer (
    .clk(clk),
    .rst(rst),
    .value(M_slow_timer_value)
  );
  wire [32-1:0] M_random_num;
  reg [1-1:0] M_random_next;
  reg [32-1:0] M_random_seed;
  pn_gen_5 random (
    .clk(clk),
    .rst(rst),
    .next(M_random_next),
    .seed(M_random_seed),
    .num(M_random_num)
  );
  wire [8-1:0] M_game_beta_main_timer_segs;
  wire [4-1:0] M_game_beta_main_timer_sel;
  wire [8-1:0] M_game_beta_mini_timer_5_segs;
  wire [8-1:0] M_game_beta_scorep1_segs;
  wire [4-1:0] M_game_beta_scorep1_sel;
  wire [8-1:0] M_game_beta_scorep2_segs;
  wire [4-1:0] M_game_beta_scorep2_sel;
  wire [16-1:0] M_game_beta_p1_led1;
  wire [16-1:0] M_game_beta_p1_led2;
  wire [16-1:0] M_game_beta_p1_led3;
  wire [16-1:0] M_game_beta_p1_led4;
  wire [16-1:0] M_game_beta_p2_led1;
  wire [16-1:0] M_game_beta_p2_led2;
  wire [16-1:0] M_game_beta_p2_led3;
  wire [16-1:0] M_game_beta_p2_led4;
  reg [1-1:0] M_game_beta_start_button;
  reg [1-1:0] M_game_beta_p1_button1;
  reg [1-1:0] M_game_beta_p1_button2;
  reg [1-1:0] M_game_beta_p1_button3;
  reg [1-1:0] M_game_beta_p1_button4;
  reg [1-1:0] M_game_beta_p2_button1;
  reg [1-1:0] M_game_beta_p2_button2;
  reg [1-1:0] M_game_beta_p2_button3;
  reg [1-1:0] M_game_beta_p2_button4;
  reg [16-1:0] M_game_beta_rng16;
  reg [1-1:0] M_game_beta_dec;
  beta_6 game_beta (
    .clk(clk),
    .rst(rst),
    .start_button(M_game_beta_start_button),
    .p1_button1(M_game_beta_p1_button1),
    .p1_button2(M_game_beta_p1_button2),
    .p1_button3(M_game_beta_p1_button3),
    .p1_button4(M_game_beta_p1_button4),
    .p2_button1(M_game_beta_p2_button1),
    .p2_button2(M_game_beta_p2_button2),
    .p2_button3(M_game_beta_p2_button3),
    .p2_button4(M_game_beta_p2_button4),
    .rng16(M_game_beta_rng16),
    .dec(M_game_beta_dec),
    .main_timer_segs(M_game_beta_main_timer_segs),
    .main_timer_sel(M_game_beta_main_timer_sel),
    .mini_timer_5_segs(M_game_beta_mini_timer_5_segs),
    .scorep1_segs(M_game_beta_scorep1_segs),
    .scorep1_sel(M_game_beta_scorep1_sel),
    .scorep2_segs(M_game_beta_scorep2_segs),
    .scorep2_sel(M_game_beta_scorep2_sel),
    .p1_led1(M_game_beta_p1_led1),
    .p1_led2(M_game_beta_p1_led2),
    .p1_led3(M_game_beta_p1_led3),
    .p1_led4(M_game_beta_p1_led4),
    .p2_led1(M_game_beta_p2_led1),
    .p2_led2(M_game_beta_p2_led2),
    .p2_led3(M_game_beta_p2_led3),
    .p2_led4(M_game_beta_p2_led4)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    usb_tx = usb_rx;
    io_sel = 1'h0;
    io_seg = 1'h0;
    io_led = 24'h000000;
    io_ledone = 8'h00;
    M_random_seed = 128'h843233523a613966423b622562592c62;
    M_random_next = 1'h1;
    M_edge_detector_slow_timer_in = M_slow_timer_value;
    M_game_beta_dec = M_edge_detector_slow_timer_out;
    M_game_beta_rng16 = M_random_num[0+15-:16];
    io_led[0+0+0-:1] = M_game_beta_p1_led1[0+0-:1];
    io_led[0+1+0-:1] = M_game_beta_p1_led1[1+0-:1];
    io_led[0+2+0-:1] = M_game_beta_p1_led1[2+0-:1];
    io_led[0+3+0-:1] = M_game_beta_p1_led1[3+0-:1];
    io_led[0+4+0-:1] = M_game_beta_p1_led2[0+0-:1];
    io_led[0+5+0-:1] = M_game_beta_p1_led2[1+0-:1];
    io_led[0+6+0-:1] = M_game_beta_p1_led2[2+0-:1];
    io_led[0+7+0-:1] = M_game_beta_p1_led2[3+0-:1];
    io_led[8+0+0-:1] = M_game_beta_p1_led3[0+0-:1];
    io_led[8+1+0-:1] = M_game_beta_p1_led3[1+0-:1];
    io_led[8+2+0-:1] = M_game_beta_p1_led3[2+0-:1];
    io_led[8+3+0-:1] = M_game_beta_p1_led3[3+0-:1];
    io_led[8+4+0-:1] = M_game_beta_p1_led4[0+0-:1];
    io_led[8+5+0-:1] = M_game_beta_p1_led4[1+0-:1];
    io_led[8+6+0-:1] = M_game_beta_p1_led4[2+0-:1];
    io_led[8+7+0-:1] = M_game_beta_p1_led4[3+0-:1];
    io_led[16+0+0-:1] = M_game_beta_p2_led1[0+0-:1];
    io_led[16+1+0-:1] = M_game_beta_p2_led1[1+0-:1];
    io_led[16+2+0-:1] = M_game_beta_p2_led1[2+0-:1];
    io_led[16+3+0-:1] = M_game_beta_p2_led1[3+0-:1];
    io_led[16+4+0-:1] = M_game_beta_p2_led2[0+0-:1];
    io_led[16+5+0-:1] = M_game_beta_p2_led2[1+0-:1];
    io_led[16+6+0-:1] = M_game_beta_p2_led2[2+0-:1];
    io_led[16+7+0-:1] = M_game_beta_p2_led2[3+0-:1];
    io_ledone[0+0+0-:1] = M_game_beta_p2_led3[0+0-:1];
    io_ledone[0+1+0-:1] = M_game_beta_p2_led3[1+0-:1];
    io_ledone[0+2+0-:1] = M_game_beta_p2_led3[2+0-:1];
    io_ledone[0+3+0-:1] = M_game_beta_p2_led3[3+0-:1];
    io_ledone[0+4+0-:1] = M_game_beta_p2_led4[0+0-:1];
    io_ledone[0+5+0-:1] = M_game_beta_p2_led4[1+0-:1];
    io_ledone[0+6+0-:1] = M_game_beta_p2_led4[2+0-:1];
    io_ledone[0+7+0-:1] = M_game_beta_p2_led4[3+0-:1];
    M_start_button_in = ~io_dip[8+0+0-:1];
    M_edge_start_button_in = M_start_button_out;
    M_game_beta_start_button = M_edge_start_button_out;
    M_p1_button1_in = ~io_dip[0+0+0-:1];
    M_p1_button2_in = ~io_dip[0+1+0-:1];
    M_p1_button3_in = ~io_dip[0+2+0-:1];
    M_p1_button4_in = ~io_dip[0+3+0-:1];
    M_edge_p1_button1_in = M_p1_button1_out;
    M_edge_p1_button2_in = M_p1_button2_out;
    M_edge_p1_button3_in = M_p1_button3_out;
    M_edge_p1_button4_in = M_p1_button4_out;
    M_game_beta_p1_button1 = M_edge_p1_button1_out;
    M_game_beta_p1_button2 = M_edge_p1_button2_out;
    M_game_beta_p1_button3 = M_edge_p1_button3_out;
    M_game_beta_p1_button4 = M_edge_p1_button4_out;
    M_p2_button1_in = ~io_dip[0+4+0-:1];
    M_p2_button2_in = ~io_dip[0+5+0-:1];
    M_p2_button3_in = ~io_dip[0+6+0-:1];
    M_p2_button4_in = ~io_dip[0+7+0-:1];
    M_edge_p2_button1_in = M_p2_button1_out;
    M_edge_p2_button2_in = M_p2_button2_out;
    M_edge_p2_button3_in = M_p2_button3_out;
    M_edge_p2_button4_in = M_p2_button4_out;
    M_game_beta_p2_button1 = M_edge_p2_button1_out;
    M_game_beta_p2_button2 = M_edge_p2_button2_out;
    M_game_beta_p2_button3 = M_edge_p2_button3_out;
    M_game_beta_p2_button4 = M_edge_p2_button4_out;
    io_seg = ~M_game_beta_scorep1_segs;
    io_sel = ~M_game_beta_scorep1_sel;
    io_seg2 = ~M_game_beta_main_timer_segs;
    io_sel2 = ~M_game_beta_main_timer_sel;
    io_seg3 = ~M_game_beta_scorep2_segs;
    io_sel3 = ~M_game_beta_scorep2_sel;
    io_seg4 = M_game_beta_mini_timer_5_segs;
  end
endmodule
