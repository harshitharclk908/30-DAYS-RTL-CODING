`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 21:20:01
// Design Name: 
// Module Name: tb_ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module tb_ALU;

reg [31:0] a;
reg [31:0] b;

reg [2:0] alu_sel;

wire [31:0] result;

ALU uut(

.a(a),
.b(b),
.alu_sel(alu_sel),
.result(result)

);

initial begin

a = 20;
b = 10;

alu_sel = 3'b000;
#10;

alu_sel = 3'b001;
#10;

alu_sel = 3'b010;
#10;

alu_sel = 3'b011;
#10;

alu_sel = 3'b100;
#10;

$finish;

end

initial begin

$monitor("a=%d b=%d alu_sel=%b result=%d",
a,b,alu_sel,result);

end

endmodule
