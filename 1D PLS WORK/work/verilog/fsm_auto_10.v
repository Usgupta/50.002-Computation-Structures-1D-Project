/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module fsm_auto_10 (
    input clk,
    input rst,
    input start_button,
    input p1_button1,
    input p1_button2,
    input p1_button3,
    input p1_button4,
    input p2_button1,
    input p2_button2,
    input p2_button3,
    input p2_button4,
    input dec,
    input [15:0] rng16,
    input [239:0] data,
    input [15:0] first_col,
    output reg [5:0] alufn,
    output reg [1:0] asel,
    output reg [1:0] bsel,
    output reg [1:0] wdsel,
    output reg [3:0] wa,
    output reg [3:0] ra,
    output reg [3:0] rb,
    output reg we,
    output reg [1:0] main_timer_sel,
    output reg [7:0] main_timer_segs,
    output reg [7:0] mini_timer_5_segs,
    output reg [1:0] scorep1_sel,
    output reg [7:0] scorep1_segs,
    output reg [1:0] scorep2_sel,
    output reg [7:0] scorep2_segs,
    output reg [15:0] p1_led1,
    output reg [15:0] p1_led2,
    output reg [15:0] p1_led3,
    output reg [15:0] p1_led4,
    output reg [15:0] p2_led1,
    output reg [15:0] p2_led2,
    output reg [15:0] p2_led3,
    output reg [15:0] p2_led4
  );
  
  
  
  wire [1-1:0] M_vc_out;
  wire [16-1:0] M_vc_debug;
  variable_counter_12 vc (
    .clk(clk),
    .rst(rst),
    .out(M_vc_out),
    .debug(M_vc_debug)
  );
  wire [7-1:0] M_main_seg_seg;
  wire [2-1:0] M_main_seg_sel;
  reg [8-1:0] M_main_seg_values;
  multi_seven_seg_19 main_seg (
    .clk(clk),
    .rst(rst),
    .values(M_main_seg_values),
    .seg(M_main_seg_seg),
    .sel(M_main_seg_sel)
  );
  wire [8-1:0] M_main_dctr_digits;
  reg [1-1:0] M_main_dctr_dec;
  reg [1-1:0] M_main_dctr_reset0;
  reg [1-1:0] M_main_dctr_reset6;
  multi_dec_ctr_20 main_dctr (
    .clk(clk),
    .rst(rst),
    .dec(M_main_dctr_dec),
    .reset0(M_main_dctr_reset0),
    .reset6(M_main_dctr_reset6),
    .digits(M_main_dctr_digits)
  );
  wire [1-1:0] M_mini_dctr_5_ovf;
  wire [4-1:0] M_mini_dctr_5_value;
  reg [1-1:0] M_mini_dctr_5_dec;
  reg [1-1:0] M_mini_dctr_5_reset2;
  reg [1-1:0] M_mini_dctr_5_reset5;
  decimal_counter_5_21 mini_dctr_5 (
    .clk(clk),
    .rst(rst),
    .dec(M_mini_dctr_5_dec),
    .reset2(M_mini_dctr_5_reset2),
    .reset5(M_mini_dctr_5_reset5),
    .ovf(M_mini_dctr_5_ovf),
    .value(M_mini_dctr_5_value)
  );
  wire [1-1:0] M_mini_dctr_2_ovf;
  wire [4-1:0] M_mini_dctr_2_value;
  reg [1-1:0] M_mini_dctr_2_dec;
  reg [1-1:0] M_mini_dctr_2_reset2;
  reg [1-1:0] M_mini_dctr_2_reset5;
  decimal_counter_5_22 mini_dctr_2 (
    .clk(clk),
    .rst(rst),
    .dec(M_mini_dctr_2_dec),
    .reset2(M_mini_dctr_2_reset2),
    .reset5(M_mini_dctr_2_reset5),
    .ovf(M_mini_dctr_2_ovf),
    .value(M_mini_dctr_2_value)
  );
  wire [7-1:0] M_scorep1_seg_seg;
  wire [2-1:0] M_scorep1_seg_sel;
  reg [8-1:0] M_scorep1_seg_values;
  multi_seven_seg_19 scorep1_seg (
    .clk(clk),
    .rst(rst),
    .values(M_scorep1_seg_values),
    .seg(M_scorep1_seg_seg),
    .sel(M_scorep1_seg_sel)
  );
  wire [7-1:0] M_scorep2_seg_seg;
  wire [2-1:0] M_scorep2_seg_sel;
  reg [8-1:0] M_scorep2_seg_values;
  multi_seven_seg_19 scorep2_seg (
    .clk(clk),
    .rst(rst),
    .values(M_scorep2_seg_values),
    .seg(M_scorep2_seg_seg),
    .sel(M_scorep2_seg_sel)
  );
  reg [3:0] M_mini_timer_5_d, M_mini_timer_5_q = 3'h5;
  reg [3:0] M_mini_timer_2_d, M_mini_timer_2_q = 2'h2;
  reg [3:0] M_main_timer_d, M_main_timer_q = 1'h0;
  reg [15:0] M_p1_col1_d, M_p1_col1_q = 1'h0;
  reg [15:0] M_p1_col2_d, M_p1_col2_q = 1'h0;
  reg [15:0] M_p1_col3_d, M_p1_col3_q = 1'h0;
  reg [15:0] M_p1_col4_d, M_p1_col4_q = 1'h0;
  reg [15:0] M_p2_col1_d, M_p2_col1_q = 1'h0;
  reg [15:0] M_p2_col2_d, M_p2_col2_q = 1'h0;
  reg [15:0] M_p2_col3_d, M_p2_col3_q = 1'h0;
  reg [15:0] M_p2_col4_d, M_p2_col4_q = 1'h0;
  localparam IDLE_1_states = 7'd0;
  localparam START_states = 7'd1;
  localparam START_COUNTDOWN_states = 7'd2;
  localparam SET_MAIN_TIMER_60_states = 7'd3;
  localparam DECREASE_GAMETIMER_states = 7'd4;
  localparam MINITIMER_SET_5_states = 7'd5;
  localparam CHECK_MINI_TIMER_states = 7'd6;
  localparam MINITIMER_SET_2_states = 7'd7;
  localparam DECREASE_MINITIMER_states = 7'd8;
  localparam INCREMENT_P1_SCORE_states = 7'd9;
  localparam INCREMENT_P2_SCORE_states = 7'd10;
  localparam GEN_LED_SEQUENCEP11_states = 7'd11;
  localparam GEN_LED_SEQUENCEP12_states = 7'd12;
  localparam GEN_LED_SEQUENCEP13_states = 7'd13;
  localparam GEN_LED_SEQUENCEP14_states = 7'd14;
  localparam GEN_LED_SEQUENCEP21_states = 7'd15;
  localparam GEN_LED_SEQUENCEP22_states = 7'd16;
  localparam GEN_LED_SEQUENCEP23_states = 7'd17;
  localparam GEN_LED_SEQUENCEP24_states = 7'd18;
  localparam IDLE_2_states = 7'd19;
  localparam SHR_P1_B1_states = 7'd20;
  localparam SHR_P1_B2_states = 7'd21;
  localparam SHR_P1_B3_states = 7'd22;
  localparam SHR_P1_B4_states = 7'd23;
  localparam SHR_P2_B1_states = 7'd24;
  localparam SHR_P2_B2_states = 7'd25;
  localparam SHR_P2_B3_states = 7'd26;
  localparam SHR_P2_B4_states = 7'd27;
  localparam SHR_P1_B1_IDLE_states = 7'd28;
  localparam SHR_P1_B2_IDLE_states = 7'd29;
  localparam SHR_P1_B3_IDLE_states = 7'd30;
  localparam SHR_P1_B4_IDLE_states = 7'd31;
  localparam SHR_P2_B1_IDLE_states = 7'd32;
  localparam SHR_P2_B2_IDLE_states = 7'd33;
  localparam SHR_P2_B3_IDLE_states = 7'd34;
  localparam SHR_P2_B4_IDLE_states = 7'd35;
  localparam IDLE_P1_states = 7'd36;
  localparam IDLE_P2_states = 7'd37;
  localparam SET_P1_B1_0_states = 7'd38;
  localparam SET_P1_B2_0_states = 7'd39;
  localparam SET_P1_B3_0_states = 7'd40;
  localparam SET_P1_B4_0_states = 7'd41;
  localparam SET_P2_B1_0_states = 7'd42;
  localparam SET_P2_B2_0_states = 7'd43;
  localparam SET_P2_B3_0_states = 7'd44;
  localparam SET_P2_B4_0_states = 7'd45;
  localparam CHECK_WIN_P1_states = 7'd46;
  localparam CHECK_WIN_P1_IDLE_states = 7'd47;
  localparam CHECK_WIN_P2_states = 7'd48;
  localparam CHECK_WIN_P2_IDLE_states = 7'd49;
  localparam VALID_P11_states = 7'd50;
  localparam VALID_P12_states = 7'd51;
  localparam VALID_P13_states = 7'd52;
  localparam VALID_P14_states = 7'd53;
  localparam VALID_P21_states = 7'd54;
  localparam VALID_P22_states = 7'd55;
  localparam VALID_P23_states = 7'd56;
  localparam VALID_P24_states = 7'd57;
  localparam WAIT_states = 7'd58;
  localparam RESET_TIMER_states = 7'd59;
  localparam INVALID1_states = 7'd60;
  localparam INVALID2_states = 7'd61;
  localparam INVALID3_states = 7'd62;
  localparam INVALID4_states = 7'd63;
  localparam INVALID5_states = 7'd64;
  localparam INVALID6_states = 7'd65;
  localparam INVALID7_states = 7'd66;
  localparam INVALID8_states = 7'd67;
  localparam CHECK_WIN_states = 7'd68;
  localparam DRAW_states = 7'd69;
  localparam WIN1P1_states = 7'd70;
  localparam WIN2P1_states = 7'd71;
  localparam WIN3P1_states = 7'd72;
  localparam WIN4P1_states = 7'd73;
  localparam WIN1P2_states = 7'd74;
  localparam WIN2P2_states = 7'd75;
  localparam WIN3P2_states = 7'd76;
  localparam WIN4P2_states = 7'd77;
  localparam LOSE1P1_states = 7'd78;
  localparam LOSE2P1_states = 7'd79;
  localparam LOSE3P1_states = 7'd80;
  localparam LOSE4P1_states = 7'd81;
  localparam LOSE1P2_states = 7'd82;
  localparam LOSE2P2_states = 7'd83;
  localparam LOSE3P2_states = 7'd84;
  localparam LOSE4P2_states = 7'd85;
  localparam DRAW1_states = 7'd86;
  localparam DRAW2_states = 7'd87;
  localparam DRAW3_states = 7'd88;
  localparam DRAW4_states = 7'd89;
  localparam DRAW5_states = 7'd90;
  localparam DRAW6_states = 7'd91;
  localparam DRAW7_states = 7'd92;
  localparam DRAW8_states = 7'd93;
  localparam RESTART_states = 7'd94;
  
  reg [6:0] M_states_d, M_states_q = IDLE_1_states;
  
  wire [7-1:0] M_oneseg_segs;
  reg [4-1:0] M_oneseg_char;
  seven_seg_23 oneseg (
    .char(M_oneseg_char),
    .segs(M_oneseg_segs)
  );
  
  always @* begin
    M_states_d = M_states_q;
    M_main_timer_d = M_main_timer_q;
    M_mini_timer_5_d = M_mini_timer_5_q;
    M_mini_timer_2_d = M_mini_timer_2_q;
    
    alufn = 1'h0;
    asel = 1'h0;
    bsel = 1'h0;
    wdsel = 1'h0;
    wa = 4'hf;
    ra = 4'h0;
    rb = 4'h0;
    we = 1'h0;
    M_main_dctr_dec = dec;
    M_main_timer_d = M_main_dctr_digits[4+3-:4];
    M_main_seg_values[4+3-:4] = 4'h0;
    M_main_seg_values[0+3-:4] = 4'h0;
    main_timer_sel = M_main_seg_sel;
    main_timer_segs = ~M_main_seg_seg;
    M_main_dctr_reset6 = 1'h0;
    M_main_dctr_reset0 = 1'h0;
    M_oneseg_char = 4'h0;
    mini_timer_5_segs = M_oneseg_segs;
    M_mini_dctr_5_dec = dec;
    M_mini_timer_5_d = M_mini_dctr_5_value;
    M_mini_dctr_5_reset5 = 1'h0;
    M_mini_dctr_5_reset2 = 1'h0;
    M_mini_timer_2_d = M_mini_dctr_2_value;
    M_mini_dctr_2_dec = 1'h0;
    M_mini_dctr_2_reset2 = 1'h0;
    M_mini_dctr_2_reset5 = 1'h0;
    M_scorep1_seg_values[4+3-:4] = 4'h0;
    M_scorep1_seg_values[0+3-:4] = data[0+15-:16];
    M_scorep2_seg_values[4+3-:4] = 4'h0;
    M_scorep2_seg_values[0+3-:4] = data[16+15-:16];
    scorep1_sel = M_scorep1_seg_sel;
    scorep1_segs = M_scorep1_seg_seg;
    scorep2_sel = M_scorep2_seg_sel;
    scorep2_segs = M_scorep2_seg_seg;
    p1_led1 = data[48+15-:16];
    p1_led2 = data[64+15-:16];
    p1_led3 = data[80+15-:16];
    p1_led4 = data[96+15-:16];
    main_timer_sel = 1'h1;
    p2_led1 = data[112+15-:16];
    p2_led2 = data[128+15-:16];
    p2_led3 = data[144+15-:16];
    p2_led4 = data[160+15-:16];
    
    case (M_states_q)
      IDLE_1_states: begin
        if (start_button) begin
          M_states_d = START_states;
        end else begin
          M_states_d = IDLE_1_states;
        end
      end
      START_states: begin
        M_oneseg_char = M_mini_timer_5_q;
        mini_timer_5_segs = M_oneseg_segs;
        if (M_mini_timer_5_q == 1'h0) begin
          M_main_seg_values = M_main_dctr_digits;
          main_timer_segs = ~M_main_seg_seg;
          main_timer_sel = M_main_seg_sel;
          M_mini_dctr_5_reset5 = 1'h1;
          M_states_d = GEN_LED_SEQUENCEP11_states;
        end
      end
      GEN_LED_SEQUENCEP11_states: begin
        alufn = 6'h1a;
        asel = 2'h3;
        wa = 4'h3;
        we = 1'h1;
        M_states_d = GEN_LED_SEQUENCEP12_states;
      end
      GEN_LED_SEQUENCEP12_states: begin
        alufn = 6'h1a;
        asel = 2'h3;
        wa = 4'h4;
        we = 1'h1;
        M_states_d = GEN_LED_SEQUENCEP13_states;
      end
      GEN_LED_SEQUENCEP13_states: begin
        alufn = 6'h1a;
        asel = 2'h3;
        wa = 4'h5;
        we = 1'h1;
        M_states_d = GEN_LED_SEQUENCEP14_states;
      end
      GEN_LED_SEQUENCEP14_states: begin
        alufn = 6'h1a;
        asel = 2'h3;
        wa = 4'h6;
        we = 1'h1;
        M_states_d = GEN_LED_SEQUENCEP21_states;
      end
      GEN_LED_SEQUENCEP21_states: begin
        alufn = 6'h1a;
        asel = 2'h3;
        wa = 4'h7;
        we = 1'h1;
        M_states_d = GEN_LED_SEQUENCEP22_states;
      end
      GEN_LED_SEQUENCEP22_states: begin
        alufn = 6'h1a;
        asel = 2'h3;
        wa = 4'h8;
        we = 1'h1;
        M_states_d = GEN_LED_SEQUENCEP23_states;
      end
      GEN_LED_SEQUENCEP23_states: begin
        alufn = 6'h1a;
        asel = 2'h3;
        wa = 4'h9;
        we = 1'h1;
        M_states_d = GEN_LED_SEQUENCEP24_states;
      end
      GEN_LED_SEQUENCEP24_states: begin
        alufn = 6'h1a;
        asel = 2'h3;
        wa = 4'ha;
        we = 1'h1;
        M_states_d = IDLE_2_states;
      end
      IDLE_2_states: begin
        M_mini_dctr_2_reset2 = 1'h1;
        if (M_main_timer_q == 1'h0) begin
          M_states_d = CHECK_WIN_states;
        end
        if (M_mini_timer_5_q == 1'h0) begin
          M_states_d = INVALID1_states;
        end
        if (p1_button1) begin
          M_states_d = SHR_P1_B1_states;
        end
        if (p1_button2) begin
          M_states_d = SHR_P1_B2_states;
        end
        if (p1_button3) begin
          M_states_d = SHR_P1_B3_states;
        end
        if (p1_button4) begin
          M_states_d = SHR_P1_B4_states;
        end
        if (p2_button1) begin
          M_states_d = SHR_P2_B1_states;
        end
        if (p2_button2) begin
          M_states_d = SHR_P2_B2_states;
        end
        if (p2_button3) begin
          M_states_d = SHR_P2_B3_states;
        end
        if (p2_button4) begin
          M_states_d = SHR_P2_B4_states;
        end
      end
      SHR_P1_B1_states: begin
        if (data[48+15-:16] != 1'h0) begin
          alufn = 6'h21;
          bsel = 2'h3;
          asel = 2'h0;
          wdsel = 1'h0;
          wa = 4'h3;
          ra = 4'h3;
          we = 1'h1;
          M_states_d = CHECK_WIN_P1_states;
        end else begin
          M_states_d = IDLE_P1_states;
        end
      end
      SHR_P1_B2_states: begin
        if (data[64+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'h4;
          ra = 4'h4;
          rb = 1'h0;
          we = 1'h1;
          M_states_d = CHECK_WIN_P1_states;
        end else begin
          M_states_d = IDLE_P1_states;
        end
      end
      SHR_P1_B3_states: begin
        if (data[80+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'h5;
          ra = 4'h5;
          rb = 1'h0;
          we = 1'h1;
          M_states_d = CHECK_WIN_P1_states;
        end else begin
          M_states_d = IDLE_P1_states;
        end
      end
      SHR_P1_B4_states: begin
        if (data[96+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'h6;
          ra = 4'h6;
          rb = 1'h0;
          we = 1'h1;
          M_states_d = CHECK_WIN_P1_states;
        end else begin
          M_states_d = IDLE_P1_states;
        end
      end
      SHR_P2_B1_states: begin
        if (data[112+15-:16] != 1'h0) begin
          alufn = 6'h21;
          bsel = 2'h3;
          asel = 2'h0;
          wdsel = 1'h0;
          wa = 4'h7;
          ra = 4'h7;
          we = 1'h1;
          M_states_d = CHECK_WIN_P2_states;
        end else begin
          M_states_d = IDLE_P2_states;
        end
      end
      SHR_P2_B2_states: begin
        if (data[128+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'h8;
          ra = 4'h8;
          we = 1'h1;
          M_states_d = CHECK_WIN_P2_states;
        end else begin
          M_states_d = IDLE_P2_states;
        end
      end
      SHR_P2_B3_states: begin
        if (data[144+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'h9;
          ra = 4'h9;
          we = 1'h1;
          M_states_d = CHECK_WIN_P2_states;
        end else begin
          M_states_d = IDLE_P2_states;
        end
      end
      SHR_P2_B4_states: begin
        if (data[160+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'ha;
          ra = 4'ha;
          we = 1'h1;
          M_states_d = CHECK_WIN_P2_states;
        end else begin
          M_states_d = IDLE_P2_states;
        end
      end
      IDLE_P1_states: begin
        M_mini_dctr_2_reset2 = 1'h1;
        if (M_mini_timer_5_q == 1'h0) begin
          M_states_d = INVALID1_states;
        end
        if (p2_button1) begin
          M_states_d = SHR_P2_B1_IDLE_states;
        end
        if (p2_button2) begin
          M_states_d = SHR_P2_B2_IDLE_states;
        end
        if (p2_button3) begin
          M_states_d = SHR_P2_B3_IDLE_states;
        end
        if (p2_button4) begin
          M_states_d = SHR_P2_B4_IDLE_states;
        end
      end
      IDLE_P2_states: begin
        M_mini_dctr_2_reset2 = 1'h1;
        if (M_mini_timer_5_q == 1'h0) begin
          M_states_d = INVALID1_states;
        end
        if (p1_button1) begin
          M_states_d = SHR_P1_B1_IDLE_states;
        end
        if (p1_button2) begin
          M_states_d = SHR_P1_B2_IDLE_states;
        end
        if (p1_button3) begin
          M_states_d = SHR_P1_B3_IDLE_states;
        end
        if (p1_button4) begin
          M_states_d = SHR_P1_B4_IDLE_states;
        end
        if (!(p1_button1 || p1_button2 || p1_button3 || p1_button4)) begin
          M_states_d = IDLE_P2_states;
        end
      end
      SHR_P1_B1_IDLE_states: begin
        if (data[48+15-:16] != 1'h0) begin
          alufn = 6'h21;
          bsel = 2'h3;
          asel = 2'h0;
          wdsel = 1'h0;
          wa = 4'h3;
          ra = 4'h3;
          we = 1'h1;
          M_states_d = CHECK_WIN_P1_IDLE_states;
        end else begin
          M_states_d = INVALID1_states;
        end
      end
      SHR_P1_B2_IDLE_states: begin
        if (data[64+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'h4;
          ra = 4'h4;
          rb = 1'h0;
          we = 1'h1;
          M_states_d = CHECK_WIN_P1_IDLE_states;
        end else begin
          M_states_d = INVALID1_states;
        end
      end
      SHR_P1_B3_IDLE_states: begin
        if (data[80+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'h5;
          ra = 4'h5;
          rb = 1'h0;
          we = 1'h1;
          M_states_d = CHECK_WIN_P1_IDLE_states;
        end else begin
          M_states_d = INVALID1_states;
        end
      end
      SHR_P1_B4_IDLE_states: begin
        if (data[96+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'h6;
          ra = 4'h6;
          rb = 1'h0;
          we = 1'h1;
          M_states_d = CHECK_WIN_P1_IDLE_states;
        end else begin
          M_states_d = INVALID1_states;
        end
      end
      SHR_P2_B1_IDLE_states: begin
        if (data[112+15-:16] != 1'h0) begin
          alufn = 6'h21;
          bsel = 2'h3;
          asel = 2'h0;
          wdsel = 1'h0;
          wa = 4'h7;
          ra = 4'h7;
          we = 1'h1;
          M_states_d = CHECK_WIN_P2_IDLE_states;
        end else begin
          M_states_d = INVALID1_states;
        end
      end
      SHR_P2_B2_IDLE_states: begin
        if (data[128+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'h8;
          ra = 4'h8;
          we = 1'h1;
          M_states_d = CHECK_WIN_P2_IDLE_states;
        end else begin
          M_states_d = INVALID1_states;
        end
      end
      SHR_P2_B3_IDLE_states: begin
        if (data[144+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'h9;
          ra = 4'h9;
          we = 1'h1;
          M_states_d = CHECK_WIN_P2_IDLE_states;
        end else begin
          M_states_d = INVALID1_states;
        end
      end
      SHR_P2_B4_IDLE_states: begin
        if (data[160+15-:16] != 1'h0) begin
          alufn = 6'h21;
          asel = 2'h0;
          bsel = 2'h3;
          wdsel = 1'h0;
          wa = 4'ha;
          ra = 4'ha;
          we = 1'h1;
          M_states_d = CHECK_WIN_P2_IDLE_states;
        end else begin
          M_states_d = INVALID1_states;
        end
      end
      CHECK_WIN_P1_states: begin
        if ((data[48+15-:16] == 1'h0 && data[64+15-:16] == 1'h0 && data[80+15-:16] == 1'h0 && data[96+15-:16] == 1'h0)) begin
          M_states_d = INCREMENT_P1_SCORE_states;
        end else begin
          M_states_d = IDLE_2_states;
        end
      end
      CHECK_WIN_P2_states: begin
        if ((data[112+15-:16] == 1'h0 && data[128+15-:16] == 1'h0 && data[144+15-:16] == 1'h0 && data[160+15-:16] == 1'h0)) begin
          M_states_d = INCREMENT_P2_SCORE_states;
        end else begin
          M_states_d = IDLE_2_states;
        end
      end
      CHECK_WIN_P1_IDLE_states: begin
        if ((data[48+15-:16] == 1'h0 && data[64+15-:16] == 1'h0 && data[80+15-:16] == 1'h0 && data[96+15-:16] == 1'h0)) begin
          M_states_d = INCREMENT_P1_SCORE_states;
        end else begin
          M_states_d = IDLE_P2_states;
        end
      end
      CHECK_WIN_P2_IDLE_states: begin
        if ((data[112+15-:16] == 1'h0 && data[128+15-:16] == 1'h0 && data[144+15-:16] == 1'h0 && data[160+15-:16] == 1'h0)) begin
          M_states_d = INCREMENT_P2_SCORE_states;
        end else begin
          M_states_d = IDLE_P1_states;
        end
      end
      INCREMENT_P1_SCORE_states: begin
        alufn = 6'h03;
        wdsel = 1'h0;
        asel = 2'h0;
        we = 1'h1;
        ra = 4'h0;
        wa = 4'h0;
        M_states_d = VALID_P11_states;
      end
      INCREMENT_P2_SCORE_states: begin
        alufn = 6'h03;
        wdsel = 1'h0;
        asel = 2'h0;
        we = 1'h1;
        ra = 4'h1;
        wa = 4'h1;
        M_states_d = VALID_P21_states;
      end
      VALID_P11_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'h3;
        we = 1'h1;
        M_states_d = VALID_P12_states;
      end
      VALID_P12_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h4;
        we = 1'h1;
        M_states_d = VALID_P13_states;
      end
      VALID_P13_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h5;
        we = 1'h1;
        M_states_d = VALID_P14_states;
      end
      VALID_P14_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'h6;
        we = 1'h1;
        M_states_d = WAIT_states;
      end
      VALID_P21_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'h7;
        we = 1'h1;
        M_states_d = VALID_P22_states;
      end
      VALID_P22_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h8;
        we = 1'h1;
        M_states_d = VALID_P23_states;
      end
      VALID_P23_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h9;
        we = 1'h1;
        M_states_d = VALID_P24_states;
      end
      VALID_P24_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'ha;
        we = 1'h1;
        M_states_d = WAIT_states;
      end
      WAIT_states: begin
        M_mini_dctr_2_dec = dec;
        if (M_mini_timer_2_q == 1'h0) begin
          M_states_d = GEN_LED_SEQUENCEP11_states;
        end else begin
          M_mini_dctr_5_reset5 = 1'h1;
          M_states_d = WAIT_states;
        end
      end
      INVALID1_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h3;
        we = 1'h1;
        M_states_d = INVALID2_states;
      end
      INVALID2_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h4;
        we = 1'h1;
        M_states_d = INVALID3_states;
      end
      INVALID3_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h5;
        we = 1'h1;
        M_states_d = INVALID4_states;
      end
      INVALID4_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h6;
        we = 1'h1;
        M_states_d = INVALID5_states;
      end
      INVALID5_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h7;
        we = 1'h1;
        M_states_d = INVALID6_states;
      end
      INVALID6_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h8;
        we = 1'h1;
        M_states_d = INVALID7_states;
      end
      INVALID7_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h9;
        we = 1'h1;
        M_states_d = INVALID8_states;
      end
      INVALID8_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'ha;
        we = 1'h1;
        M_states_d = WAIT_states;
      end
      CHECK_WIN_states: begin
        M_mini_dctr_5_reset5 = 1'h1;
        if (data[0+15-:16] == data[16+15-:16]) begin
          M_states_d = DRAW_states;
        end
        if (data[0+15-:16] > data[16+15-:16]) begin
          M_states_d = WIN1P1_states;
        end else begin
          M_states_d = WIN1P2_states;
        end
      end
      WIN1P1_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'h3;
        we = 1'h1;
        M_states_d = WIN2P1_states;
      end
      WIN2P1_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h4;
        we = 1'h1;
        M_states_d = WIN3P1_states;
      end
      WIN3P1_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h5;
        we = 1'h1;
        M_states_d = WIN4P1_states;
      end
      WIN4P1_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'h6;
        we = 1'h1;
        M_states_d = LOSE1P2_states;
      end
      WIN1P2_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'h7;
        we = 1'h1;
        M_states_d = WIN2P2_states;
      end
      WIN2P2_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h8;
        we = 1'h1;
        M_states_d = WIN3P2_states;
      end
      WIN3P2_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h9;
        we = 1'h1;
        M_states_d = WIN4P2_states;
      end
      WIN4P2_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'ha;
        we = 1'h1;
        M_states_d = LOSE1P1_states;
      end
      LOSE1P1_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h3;
        we = 1'h1;
        M_states_d = LOSE2P1_states;
      end
      LOSE2P1_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h4;
        we = 1'h1;
        M_states_d = LOSE3P1_states;
      end
      LOSE3P1_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h5;
        we = 1'h1;
        M_states_d = LOSE4P1_states;
      end
      LOSE4P1_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h6;
        we = 1'h1;
        M_states_d = RESTART_states;
      end
      LOSE1P2_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h7;
        we = 1'h1;
        M_states_d = LOSE2P2_states;
      end
      LOSE2P2_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h8;
        we = 1'h1;
        M_states_d = LOSE3P2_states;
      end
      LOSE3P2_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'h9;
        we = 1'h1;
        M_states_d = LOSE4P2_states;
      end
      LOSE4P2_states: begin
        alufn = 6'h1f;
        bsel = 2'h2;
        wa = 4'ha;
        we = 1'h1;
        M_states_d = RESTART_states;
      end
      DRAW1_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'h3;
        we = 1'h1;
        M_states_d = DRAW2_states;
      end
      DRAW2_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h4;
        we = 1'h1;
        M_states_d = DRAW3_states;
      end
      DRAW3_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h5;
        we = 1'h1;
        M_states_d = DRAW4_states;
      end
      DRAW4_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'h6;
        we = 1'h1;
        M_states_d = DRAW5_states;
      end
      DRAW5_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'h7;
        we = 1'h1;
        M_states_d = DRAW6_states;
      end
      DRAW6_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h8;
        we = 1'h1;
        M_states_d = DRAW7_states;
      end
      DRAW7_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h9;
        we = 1'h1;
        M_states_d = DRAW8_states;
      end
      DRAW8_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        wa = 4'ha;
        we = 1'h1;
        M_states_d = RESTART_states;
      end
      RESTART_states: begin
        if (M_mini_timer_5_q == 1'h0) begin
          M_states_d = IDLE_1_states;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    M_states_q <= M_states_d;
    
    if (rst == 1'b1) begin
      M_mini_timer_5_q <= 3'h5;
      M_mini_timer_2_q <= 2'h2;
      M_main_timer_q <= 1'h0;
      M_p1_col1_q <= 1'h0;
      M_p1_col2_q <= 1'h0;
      M_p1_col3_q <= 1'h0;
      M_p1_col4_q <= 1'h0;
      M_p2_col1_q <= 1'h0;
      M_p2_col2_q <= 1'h0;
      M_p2_col3_q <= 1'h0;
      M_p2_col4_q <= 1'h0;
    end else begin
      M_mini_timer_5_q <= M_mini_timer_5_d;
      M_mini_timer_2_q <= M_mini_timer_2_d;
      M_main_timer_q <= M_main_timer_d;
      M_p1_col1_q <= M_p1_col1_d;
      M_p1_col2_q <= M_p1_col2_d;
      M_p1_col3_q <= M_p1_col3_d;
      M_p1_col4_q <= M_p1_col4_d;
      M_p2_col1_q <= M_p2_col1_d;
      M_p2_col2_q <= M_p2_col2_d;
      M_p2_col3_q <= M_p2_col3_d;
      M_p2_col4_q <= M_p2_col4_d;
    end
  end
  
endmodule
