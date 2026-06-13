`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2026 18:51:08
// Design Name: 
// Module Name: tb_traffic_light
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

module tb_traffic_light;

reg clk;
reg rst;

wire red;
wire yellow;
wire green;

traffic_light uut(

.clk(clk),
.rst(rst),

.red(red),
.yellow(yellow),
.green(green)

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

$monitor("time=%0t red=%b yellow=%b green=%b",
$time,red,yellow,green);

end

endmodule