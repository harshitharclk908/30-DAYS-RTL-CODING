`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2026 21:09:26
// Design Name: 
// Module Name: tb_d_ff
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

module tb_d_ff;

reg clk;
reg d;

wire q;

d_ff uut(
.clk(clk),
.d(d),
.q(q)
);

always #5 clk = ~clk;

initial begin

$monitor("time=%0t clk=%b d=%b q=%b",
$time, clk, d, q);

clk = 0;

d = 0; #10;

d = 1; #10;

d = 0; #10;

d = 1; #10;

$finish;

end

endmodule

