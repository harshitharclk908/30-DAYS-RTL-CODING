`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 21:49:11
// Design Name: 
// Module Name: tb_counter
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


`timescale 1ns / 1ps

module tb_counter;

reg clk;
reg rst;

wire [3:0] count;

counter uut(

.clk(clk),
.rst(rst),
.count(count)

);

initial begin

clk = 0;

forever #5 clk = ~clk;

end

initial begin

rst = 1;

#10 rst = 0;

#100 $finish;

end

initial begin

$dumpfile("counter.vcd");

$dumpvars(0,tb_counter);

end

initial begin

$monitor("time=%0t rst=%b count=%d",
$time,rst,count);

end

endmodule
