//testbench
module ALU_32bit_tb;
  reg [31:0] A;
  reg [31:0] B;
  reg [2:0] ALU_sel;
  wire [31:0] ALU_output;
  
  //Device under test instantiation
  ALU_32bit uut (
    .A(A),
    .B(B),
    .ALU_sel(ALU_sel),
    .ALU_output(ALU_output));
  
  //initial block
  initial
    begin
      $dumpfile("info.vcd");
      $dumpvars(0,ALU_32bit_tb);
      
      A=32'h00000007;
      B=32'h00000001;
      
      ALU_sel=3'b000; #10;
      ALU_sel=3'b001; #10;
      ALU_sel=3'b010; #10;
      ALU_sel=3'b011; #10;
      ALU_sel=3'b100; #10;
      ALU_sel=3'b101; #10;
      ALU_sel=3'b110; #10;
      ALU_sel=3'b111; #10;
      $stop;
    end
endmodule