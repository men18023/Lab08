

module testbench();

reg[3:0]A;
reg[3:0]B;
reg[2:0]Com;
wire[3:0]Res;

alu test(A, B, Com, Res);

initial begin
    #1
    $display("---------------------------------");
    $display("| A | B | Com | Result |");
    $display("---------------------------------");
    $monitor(" %b | %b | %b | %b ", A, B, Com, Res);
        A = 4'b0000; B = 4'b0000; Com = 3'b000;
    #1 A = 4'b0001; B = 4'b0001; Com = 3'b000;
    #1 A = 4'b0001; B = 4'b0000; Com = 3'b000;
    #1 A = 4'b0100; B = 4'b0110; Com = 3'b000;
    #1 A = 4'b0001; B = 4'b0001; Com = 3'b001;
    #1 A = 4'b0001; B = 4'b0000; Com = 3'b001;
    #1 A = 4'b0000; B = 4'b0000; Com = 3'b001;
    #1 A = 4'b0001; B = 4'b0001; Com = 3'b010;
    #1 A = 4'b0010; B = 4'b0010; Com = 3'b010;
end

initial
    #21 $finish;

initial begin
    $dumpfile("alu_tb.vcd");
    $dumpvars(0, testbench);
end

endmodule
