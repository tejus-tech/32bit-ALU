// Design
module ALU_32bit(
  input [31:0] A,
  input [31:0] B,
  input [2:0] ALU_sel,
  output reg [31:0] ALU_output);
  
  //always block
  always@(*)begin
    case(ALU_sel)
      3'b000:ALU_output=~A;
      3'b001:ALU_output=A&B;
      3'b010:ALU_output=A|B;
      3'b011:ALU_output=-A;
      3'b100:ALU_output=A+B;
      3'b101:ALU_output=A-B;
      3'b110:ALU_output=A*B;
      3'b111:ALU_output=A/B;
      default:ALU_output=32'b0;
      endcase
        end
        endmodule