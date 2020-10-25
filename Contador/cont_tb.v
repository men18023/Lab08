
module testbench();

reg clk, reset, enable, bitcar;
reg[11:0]L;
wire[11:0]C;
counter C00(clk, reset, enable, bitcar, L, C);

always
  #1 clk = ~clk;

initial begin
  #1
  $display("----------------------------------------");
  $display("| CLK | RST | ENA | BITCAR | L | C |");
  $display("----------------------------------------");
  $monitor("%b %b %b %b %b || %b", clk, reset, enable, bitcar, L, C);
  clk = 0; reset = 0; enable = 0; bitcar = 0; L= 12'b000000000000;
  #1 reset = 0;
  #1 reset = 0;
  #1 reset = 0;
  #1 reset = 0;
  #1 reset = 0;
  #1 reset = 1;
  #1 reset = 0;
  #1 bitcar = 1; L = 12'b000000010000;
  #1 bitcar = 1; L = 12'b000000010000;
  #1 bitcar = 1; enable = 1;
  #1 enable = 1;


end

initial
  #300 $finish;

initial begin
  $dumpfile("cont_tb.vcd");
  $dumpvars(0, testbench);
end

endmodule
