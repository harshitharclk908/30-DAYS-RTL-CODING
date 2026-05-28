`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2026 09:51:41
// Design Name: 
// Module Name: tb_trafffic_light
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


module tb_trafffic_light;
reg  clk;
reg rst;
wire red;
wire yellow;
wire green;

traffic_light uut (
.clk(clk),
.rst(rst),
.yellow(yellow),
.red(red),
.green(green)
);
initial begin
clk=0;
forever #5 clk=~clk;
end 
initial begin
rst=0;

   
$monitor("clk=%b rst=%b green=%b yellow=%b red=%b", clk,rst,green,yellow,red);
#50 $finish;
end
endmodule
