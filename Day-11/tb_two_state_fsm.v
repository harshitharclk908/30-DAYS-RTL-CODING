`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2026 09:45:08
// Design Name: 
// Module Name: tb_two_state_fsm
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


module tb_two_state_fsm();
reg clk;
reg rst;
wire [1:0] state_reg;
two_state_fsm uut(
.clk(clk),
.rst(rst),
.state_reg(state_reg)
);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
#10 rst=0;
#10 rst=1;
#10 rst=0;
$monitor ("clk=%b rst=%b state_reg=%b", clk,rst,state_reg);
#50 $finish;
end
endmodule
