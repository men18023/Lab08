// ALU

module alu(
  input wire[3:0]A,
  input wire[3:0]B,
  input wire[2:0]Com,
  output reg[3:0]Res);

      always @ (A or B or Com) begin

          case(Com)
              3'b000: Res = A & B;
              3'b001: Res = A | B;
              3'b010: Res = A + B;
              3'b100: Res = A & ~B;
              3'b101: Res = A | ~B;
              3'b110: Res = A - B;
              3'b111: Res = (A & B) ? 1:0;
              default: Res = 3'b000;
          endcase
      end
endmodule
