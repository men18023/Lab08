module testbench();

reg[11:0]L;
wire[7:0]D;

rom mem(L, D);

initial begin
    #1
    $display("--------------");
    $display("Loc | L");
    $display("--------------");
    $monitor(" %b | %b ", L, D);
        L = 12'b000000000000;
    #1  L = 12'b000000000001;
    #1  L = 12'b000000000010;
    #1  L = 12'b000000000011;
    #1  L = 12'b000000000100;
    #1  L = 12'b000000000101;
    #1  L = 12'b000000000110;
    #1  L = 12'b000000000111;
    #1  L = 12'b000000001000;
    #1  L = 12'b000000001001;

end
    initial
    #200 $finish;

initial begin
  $dumpfile("rom_tb.vcd");
  $dumpvars(0, testbench);
end

endmodule
