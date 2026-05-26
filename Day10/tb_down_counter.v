`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 15:49:01
// Design Name: 
// Module Name: tb_down_counter
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


module tb_down_counter;
reg clk;
wire [3:0] count;
down_counter dut(
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


