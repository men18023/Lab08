// memoria rom

module rom(
  input wire[11:0]L,
  output wire[7:0]D);

      reg[7:0] Memory[0:4095];

      initial begin
        $readmemb("memory.jmc", Memory);
      end

      assign data = Memory[L];
endmodule
