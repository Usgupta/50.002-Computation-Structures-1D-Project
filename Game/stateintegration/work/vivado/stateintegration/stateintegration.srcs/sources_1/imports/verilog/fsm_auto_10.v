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
    input dec,
    input [15:0] rng16,
    input [207:0] data,
    input [15:0] first_col,
    output reg [5:0] alufn,
    output reg [1:0] asel,
    output reg [1:0] bsel,
    output reg [1:0] wdsel,
    output reg [3:0] wa,
    output reg [3:0] ra,
    output reg [3:0] rb,
    output reg we,
    output reg [3:0] main_timer_sel,
    output reg [7:0] main_timer_segs,
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
  wire [4-1:0] M_main_dctr_onedigit;
  reg [1-1:0] M_main_dctr_dec;
  multi_dec_ctr_20 main_dctr (
    .clk(clk),
    .rst(rst),
    .dec(M_main_dctr_dec),
    .digits(M_main_dctr_digits),
    .onedigit(M_main_dctr_onedigit)
  );
  wire [1-1:0] M_mini_dctr_5_ovf;
  wire [4-1:0] M_mini_dctr_5_value;
  reg [1-1:0] M_mini_dctr_5_dec;
  decimal_counter_5_21 mini_dctr_5 (
    .clk(clk),
    .rst(rst),
    .dec(M_mini_dctr_5_dec),
    .ovf(M_mini_dctr_5_ovf),
    .value(M_mini_dctr_5_value)
  );
  reg [3:0] M_mini_timer_5_d, M_mini_timer_5_q = 3'h5;
  reg [15:0] M_main_timer_d, M_main_timer_q = 1'h1;
  reg [15:0] M_p1_col1_d, M_p1_col1_q = 1'h0;
  reg [15:0] M_p1_col2_d, M_p1_col2_q = 1'h0;
  reg [15:0] M_p1_col3_d, M_p1_col3_q = 1'h0;
  reg [15:0] M_p1_col4_d, M_p1_col4_q = 1'h0;
  reg [15:0] M_p2_col1_d, M_p2_col1_q = 1'h0;
  reg [15:0] M_p2_col2_d, M_p2_col2_q = 1'h0;
  reg [15:0] M_p2_col3_d, M_p2_col3_q = 1'h0;
  reg [15:0] M_p2_col4_d, M_p2_col4_q = 1'h0;
  localparam IDLE_1_states = 6'd0;
  localparam START_states = 6'd1;
  localparam START_COUNTDOWN_states = 6'd2;
  localparam SET_MAIN_TIMER_60_states = 6'd3;
  localparam DECREASE_GAMETIMER_states = 6'd4;
  localparam MINITIMER_SET_5_states = 6'd5;
  localparam MINITIMER_SET_2_states = 6'd6;
  localparam DECREASE_MINITIMER_states = 6'd7;
  localparam INCREMENT_P1_SCORE_states = 6'd8;
  localparam INCREMENT_P2_SCORE_states = 6'd9;
  localparam GEN_LED_SEQUENCEP11_states = 6'd10;
  localparam GEN_LED_SEQUENCEP12_states = 6'd11;
  localparam GEN_LED_SEQUENCEP13_states = 6'd12;
  localparam GEN_LED_SEQUENCEP14_states = 6'd13;
  localparam IDLE_2_states = 6'd14;
  localparam SET_TIMER_states = 6'd15;
  localparam DEC_TIMER_states = 6'd16;
  localparam CHECK_TIMER_states = 6'd17;
  localparam SHR_P1_B1_states = 6'd18;
  localparam SHR_P1_B2_states = 6'd19;
  localparam SHR_P1_B3_states = 6'd20;
  localparam SHR_P1_B4_states = 6'd21;
  localparam SHR_P2_B1_states = 6'd22;
  localparam SHR_P2_B2_states = 6'd23;
  localparam SHR_P2_B3_states = 6'd24;
  localparam SHR_P2_B4_states = 6'd25;
  localparam INVALID1_states = 6'd26;
  localparam INVALID2_states = 6'd27;
  localparam INVALID3_states = 6'd28;
  localparam INVALID4_states = 6'd29;
  localparam PRINT_INV_states = 6'd30;
  localparam SET_P1_B1_0_states = 6'd31;
  localparam SET_P1_B2_0_states = 6'd32;
  localparam SET_P1_B3_0_states = 6'd33;
  localparam SET_P1_B4_0_states = 6'd34;
  localparam SET_P2_B1_0_states = 6'd35;
  localparam SET_P2_B2_0_states = 6'd36;
  localparam SET_P2_B3_0_states = 6'd37;
  localparam SET_P2_B4_0_states = 6'd38;
  localparam CHECK_WIN_P1_states = 6'd39;
  localparam LOSE_P1_states = 6'd40;
  localparam START_TIMER_states = 6'd41;
  localparam CHECK_WIN_P2_states = 6'd42;
  localparam BRANCH_TIMER_states = 6'd43;
  localparam LOSE_P2_states = 6'd44;
  localparam CHECK_WIN_states = 6'd45;
  
  reg [5:0] M_states_d, M_states_q = IDLE_1_states;
  
  wire [7-1:0] M_oneseg_segs;
  reg [4-1:0] M_oneseg_char;
  seven_seg_22 oneseg (
    .char(M_oneseg_char),
    .segs(M_oneseg_segs)
  );
  
  wire [7-1:0] M_debug_segs;
  reg [4-1:0] M_debug_char;
  seven_seg_22 debug (
    .char(M_debug_char),
    .segs(M_debug_segs)
  );
  
  always @* begin
    M_states_d = M_states_q;
    M_mini_timer_5_d = M_mini_timer_5_q;
    
    alufn = 1'h0;
    asel = 1'h0;
    bsel = 1'h0;
    wdsel = 1'h0;
    wa = 4'hf;
    ra = 4'h0;
    rb = 4'h0;
    we = 1'h0;
    M_main_dctr_dec = 1'h0;
    M_main_seg_values[4+3-:4] = 4'h0;
    M_main_seg_values[0+3-:4] = 4'h0;
    main_timer_sel = M_main_seg_sel;
    main_timer_segs = ~M_main_seg_seg;
    M_oneseg_char = 4'h0;
    mini_timer_5_segs = M_oneseg_segs;
    M_mini_dctr_5_dec = 1'h0;
    p1_led1 = data[48+15-:16];
    p1_led2 = data[64+15-:16];
    p1_led3 = data[80+15-:16];
    p1_led4 = data[96+15-:16];
    M_debug_char = data[0+15-:16];
    main_timer_segs = 1'h0;
    main_timer_sel = 1'h1;
    p2_led1 = M_p2_col1_q;
    p2_led2 = M_p2_col2_q;
    p2_led3 = M_p2_col3_q;
    p2_led4 = M_p2_col4_q;
    
    case (M_states_q)
      IDLE_1_states: begin
        if (start_button) begin
          M_states_d = START_TIMER_states;
        end
      end
      START_TIMER_states: begin
        alufn = 6'h1a;
        asel = 2'h1;
        we = 1'h1;
        wa = 4'hc;
        M_states_d = GEN_LED_SEQUENCEP11_states;
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
        M_states_d = IDLE_2_states;
      end
      DEC_TIMER_states: begin
        alufn = 6'h07;
        wa = 4'hc;
        asel = 1'h0;
        we = 1'h1;
        ra = 11'h44c;
        M_states_d = IDLE_2_states;
      end
      IDLE_2_states: begin
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
        if (dec) begin
          M_states_d = DEC_TIMER_states;
        end
        if (!(p1_button1 || p1_button2 || p1_button3 || p1_button4)) begin
          M_states_d = IDLE_2_states;
        end
        if (data[192+15-:16] == 1'h0) begin
          M_states_d = CHECK_WIN_states;
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
          M_states_d = INVALID1_states;
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
          M_states_d = INVALID1_states;
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
          M_states_d = INVALID1_states;
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
          M_states_d = INVALID1_states;
        end
      end
      CHECK_WIN_P1_states: begin
        if (data[48+15-:16] == 1'h0 && data[64+15-:16] == 1'h0 && data[80+15-:16] == 1'h0 && data[96+15-:16] == 1'h0) begin
          M_states_d = INCREMENT_P1_SCORE_states;
        end else begin
          M_states_d = IDLE_2_states;
        end
      end
      INCREMENT_P1_SCORE_states: begin
        alufn = 6'h03;
        wdsel = 1'h0;
        asel = 2'h0;
        we = 1'h1;
        ra = 4'h0;
        wa = 4'h0;
        M_states_d = GEN_LED_SEQUENCEP11_states;
      end
      INVALID1_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h3;
        we = 1'h1;
        M_states_d = INVALID2_states;
      end
      INVALID2_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h4;
        we = 1'h1;
        M_states_d = INVALID3_states;
      end
      INVALID3_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h5;
        we = 1'h1;
        M_states_d = INVALID4_states;
      end
      INVALID4_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h6;
        we = 1'h1;
        M_states_d = PRINT_INV_states;
      end
      PRINT_INV_states: begin
        M_mini_dctr_5_dec = dec;
        M_mini_timer_5_d = M_mini_dctr_5_value;
        M_oneseg_char = M_mini_timer_5_q;
        mini_timer_5_segs = M_oneseg_segs;
        M_mini_dctr_5_dec = dec;
        if (M_mini_timer_5_q == 1'h0) begin
          M_states_d = GEN_LED_SEQUENCEP11_states;
        end else begin
          if (dec) begin
            M_mini_timer_5_d = M_mini_timer_5_q - 1'h1;
            M_states_d = PRINT_INV_states;
          end
        end
        M_states_d = PRINT_INV_states;
      end
      CHECK_WIN_states: begin
        alufn = 6'h1a;
        asel = 2'h2;
        wa = 4'h3;
        we = 1'h1;
        M_states_d = CHECK_WIN_states;
      end
    endcase
  end
  
  always @(posedge clk) begin
    M_states_q <= M_states_d;
    
    if (rst == 1'b1) begin
      M_mini_timer_5_q <= 3'h5;
      M_main_timer_q <= 1'h1;
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
