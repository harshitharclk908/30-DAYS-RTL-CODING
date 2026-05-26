`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 15:33:45
// Design Name: 
// Module Name: tb_upcounter
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
module tb_upcounter;

reg clk;

wire [3:0] count;

upcounter dut(
.clk(clk),
.count(count)
);
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
$monitor("clk=%b count=%b",
clk,count);

#30 $finish;
end
endmodule
