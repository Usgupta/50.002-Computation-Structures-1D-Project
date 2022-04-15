/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module reg_files_11 (
    input clk,
    input rst,
    input [3:0] write_address,
    input we,
    input [15:0] data,
    input [3:0] read_address_a,
    input [3:0] read_address_b,
    output reg [15:0] out_a,
    output reg [15:0] out_b,
    output reg [207:0] data_out
  );
  
  
  
  reg [15:0] M_p1_score_d, M_p1_score_q = 1'h0;
  reg [15:0] M_p2_score_d, M_p2_score_q = 1'h0;
  reg [15:0] M_light_up_d, M_light_up_q = 1'h0;
  reg [15:0] M_p1_col1_d, M_p1_col1_q = 1'h0;
  reg [15:0] M_p1_col2_d, M_p1_col2_q = 1'h0;
  reg [15:0] M_p1_col3_d, M_p1_col3_q = 1'h0;
  reg [15:0] M_p1_col4_d, M_p1_col4_q = 1'h0;
  reg [15:0] M_p2_col1_d, M_p2_col1_q = 1'h0;
  reg [15:0] M_p2_col2_d, M_p2_col2_q = 1'h0;
  reg [15:0] M_p2_col3_d, M_p2_col3_q = 1'h0;
  reg [15:0] M_p2_col4_d, M_p2_col4_q = 1'h0;
  reg [15:0] M_mini_timer_d, M_mini_timer_q = 1'h0;
  reg [15:0] M_main_timer_d, M_main_timer_q = 1'h0;
  reg [15:0] M_p1_buttonPress_d, M_p1_buttonPress_q = 1'h0;
  reg [15:0] M_p2_buttonPress_d, M_p2_buttonPress_q = 1'h0;
  
  always @* begin
    M_p1_score_d = M_p1_score_q;
    M_light_up_d = M_light_up_q;
    M_p2_col4_d = M_p2_col4_q;
    M_p2_col3_d = M_p2_col3_q;
    M_mini_timer_d = M_mini_timer_q;
    M_p2_score_d = M_p2_score_q;
    M_p1_col1_d = M_p1_col1_q;
    M_p1_col2_d = M_p1_col2_q;
    M_p1_col3_d = M_p1_col3_q;
    M_p1_col4_d = M_p1_col4_q;
    M_main_timer_d = M_main_timer_q;
    M_p2_col2_d = M_p2_col2_q;
    M_p2_col1_d = M_p2_col1_q;
    
    if (we) begin
      
      case (write_address)
        4'h0: begin
          M_p1_score_d = data;
        end
        4'h1: begin
          M_p2_score_d = data;
        end
        4'h2: begin
          M_light_up_d = data;
        end
        4'h3: begin
          M_p1_col1_d = data;
        end
        4'h4: begin
          M_p1_col2_d = data;
        end
        4'h5: begin
          M_p1_col3_d = data;
        end
        4'h6: begin
          M_p1_col4_d = data;
        end
        4'h7: begin
          M_p2_col1_d = data;
        end
        4'h8: begin
          M_p2_col2_d = data;
        end
        4'h9: begin
          M_p2_col3_d = data;
        end
        4'ha: begin
          M_p2_col4_d = data;
        end
        4'hb: begin
          M_mini_timer_d = data;
        end
        4'hc: begin
          M_main_timer_d = data;
        end
      endcase
    end
    
    case (read_address_a)
      4'h0: begin
        out_a = M_p1_score_q;
      end
      4'h1: begin
        out_a = M_p2_score_q;
      end
      4'h2: begin
        out_a = M_light_up_q;
      end
      4'h3: begin
        out_a = M_p1_col1_q;
      end
      4'h4: begin
        out_a = M_p1_col2_q;
      end
      4'h5: begin
        out_a = M_p1_col3_q;
      end
      4'h6: begin
        out_a = M_p1_col4_q;
      end
      4'h7: begin
        out_a = M_p2_col1_q;
      end
      4'h8: begin
        out_a = M_p2_col2_q;
      end
      4'h9: begin
        out_a = M_p2_col3_q;
      end
      4'ha: begin
        out_a = M_p2_col4_q;
      end
      4'hb: begin
        out_a = M_mini_timer_q;
      end
      4'hc: begin
        out_a = M_main_timer_q;
      end
      default: begin
        out_a = 1'h0;
      end
    endcase
    
    case (read_address_b)
      4'h0: begin
        out_b = M_p1_score_q;
      end
      4'h1: begin
        out_b = M_p2_score_q;
      end
      4'h2: begin
        out_b = M_light_up_q;
      end
      4'h3: begin
        out_b = M_p1_col1_q;
      end
      4'h4: begin
        out_b = M_p1_col2_q;
      end
      4'h5: begin
        out_b = M_p1_col3_q;
      end
      4'h6: begin
        out_b = M_p1_col4_q;
      end
      4'h7: begin
        out_b = M_p2_col1_q;
      end
      4'h8: begin
        out_b = M_p2_col2_q;
      end
      4'h9: begin
        out_b = M_p2_col3_q;
      end
      4'ha: begin
        out_b = M_p2_col4_q;
      end
      4'hb: begin
        out_b = M_mini_timer_q;
      end
      4'hc: begin
        out_b = M_main_timer_q;
      end
      default: begin
        out_b = 1'h0;
      end
    endcase
    data_out = {M_p1_score_q, M_p2_score_q, M_light_up_q, M_p1_col1_q, M_p1_col2_q, M_p1_col3_q, M_p1_col4_q, M_p2_col1_q, M_p2_col2_q, M_p2_col3_q, M_p2_col4_q, M_mini_timer_q, M_main_timer_q};
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_p1_score_q <= 1'h0;
      M_p2_score_q <= 1'h0;
      M_light_up_q <= 1'h0;
      M_p1_col1_q <= 1'h0;
      M_p1_col2_q <= 1'h0;
      M_p1_col3_q <= 1'h0;
      M_p1_col4_q <= 1'h0;
      M_p2_col1_q <= 1'h0;
      M_p2_col2_q <= 1'h0;
      M_p2_col3_q <= 1'h0;
      M_p2_col4_q <= 1'h0;
      M_mini_timer_q <= 1'h0;
      M_main_timer_q <= 1'h0;
      M_p1_buttonPress_q <= 1'h0;
      M_p2_buttonPress_q <= 1'h0;
    end else begin
      M_p1_score_q <= M_p1_score_d;
      M_p2_score_q <= M_p2_score_d;
      M_light_up_q <= M_light_up_d;
      M_p1_col1_q <= M_p1_col1_d;
      M_p1_col2_q <= M_p1_col2_d;
      M_p1_col3_q <= M_p1_col3_d;
      M_p1_col4_q <= M_p1_col4_d;
      M_p2_col1_q <= M_p2_col1_d;
      M_p2_col2_q <= M_p2_col2_d;
      M_p2_col3_q <= M_p2_col3_d;
      M_p2_col4_q <= M_p2_col4_d;
      M_mini_timer_q <= M_mini_timer_d;
      M_main_timer_q <= M_main_timer_d;
      M_p1_buttonPress_q <= M_p1_buttonPress_d;
      M_p2_buttonPress_q <= M_p2_buttonPress_d;
    end
  end
  
endmodule
