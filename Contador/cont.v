// Contador de 12 bits

module counter(
  input wire clk, reset, enable, bitcar,
  input wire [11:0]L ,
  output reg [11:0]C);

    always @ (posedge enable or posedge reset or posedge bitcar) begin
      if (reset == 1 )
          C <= 12'b000000000000;
      else if (bitcar == 1)
          C <= L;
      else if (enable == 1)
          C <= C + 1;

      end
endmodule
