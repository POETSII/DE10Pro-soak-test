module Pebbles
  (input wire clock,
   input wire reset,
   input wire [0:0] out_consume_en,
   input wire [0:0] in0_canPeek,
   input wire [7:0] in0_peek,
   output wire [0:0] in0_consume_en,
   output wire [0:0] out_canPeek,
   output wire [7:0] out_peek);
  // Declarations
  //////////////////////////////////////////////////////////////////////////////
  wire [0:0] v_0;
  wire [0:0] v_1;
  function [0:0] mux_1(input [0:0] sel);
    case (sel) 0: mux_1 = 1'h0; 1: mux_1 = 1'h1;
    endcase
  endfunction
  wire [0:0] v_2;
  wire [0:0] v_3;
  wire [0:0] v_4;
  function [0:0] mux_4(input [0:0] sel);
    case (sel) 0: mux_4 = 1'h0; 1: mux_4 = 1'h0;
    endcase
  endfunction
  wire [0:0] v_5;
  wire [0:0] v_7;
  function [0:0] mux_7(input [0:0] sel);
    case (sel) 0: mux_7 = 1'h0; 1: mux_7 = 1'h0;
    endcase
  endfunction
  wire [0:0] v_8;
  wire [0:0] vin0_consume_en_10;
  wire [0:0] vout_canPeek_10;
  wire [7:0] vout_peek_10;
  wire [0:0] v_12;
  wire [7:0] v_13;
  // Instances
  //////////////////////////////////////////////////////////////////////////////
  assign v_0 = v_1 | v_4;
  assign v_1 = mux_1(v_2);
  assign v_2 = v_3 & 1'h1;
  assign v_3 = out_consume_en;
  assign v_4 = mux_4(v_5);
  assign v_5 = ~v_2;
  assign in0_consume_en = v_7;
  assign v_7 = mux_7(v_8);
  assign v_8 = ~1'h0;
  assign out_canPeek = vout_canPeek_10;
  pebbles_core
    pebbles_core_10
      (.clock(clock),
       .reset(reset),
       .in0_canPeek(1'h0),
       .in0_peek(8'bxxxxxxxx),
       .out_consume_en(v_0),
       .in0_consume_en(vin0_consume_en_10),
       .out_canPeek(vout_canPeek_10),
       .out_peek(vout_peek_10));
  assign out_peek = vout_peek_10;
  assign v_12 = in0_canPeek;
  assign v_13 = in0_peek;
  // Always block
  //////////////////////////////////////////////////////////////////////////////
  always @(posedge clock) begin
    if (reset) begin
    end else begin
    end
  end
endmodule