module ALU(
input [3:0] a,
input [3:0] b,
input [2:0] op,
output reg [3:0] alu_out
);

always @(*) begin
    case(op)
        3'b000: alu_out = a + b;
        3'b001: alu_out = a - b;
        3'b010: alu_out = a * b;
        3'b011: alu_out = a & b;
        3'b100: alu_out = a | b;

        default: alu_out = 4'b0000;
    endcase
end

endmodule