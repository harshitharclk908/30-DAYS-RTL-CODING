`timescale 1ns / 1ps

module tb_ALU;

reg [3:0] a;
reg [3:0] b;
reg [2:0] op;

wire [3:0] alu_out;

ALU uut (
    .a(a),
    .b(b),
    .op(op),
    .alu_out(alu_out)
);

initial begin

    $monitor("a=%d b=%d op=%b alu_out=%d",
              a, b, op, alu_out);

    // ADD
    a = 4'd5; b = 4'd3; op = 3'b000;
    #10;

    // SUB
    a = 4'd8; b = 4'd2; op = 3'b001;
    #10;

    // MUL
    a = 4'd3; b = 4'd2; op = 3'b010;
    #10;

    // AND
    a = 4'b1100; b = 4'b1010; op = 3'b011;
    #10;

    // OR
    a = 4'b1100; b = 4'b1010; op = 3'b100;
    #10;

    $finish;
end

endmodule