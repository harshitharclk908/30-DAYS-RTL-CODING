`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2026 09:33:10
// Design Name: 
// Module Name: two_state_fsm
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


module two_state_fsm(
input clk,
input rst,
output reg [1:0] state_reg
);
always @ (posedge clk) 
begin
if (rst)
begin
state_reg<=2'b00;
end
else
begin
case(state_reg)
2'b00:state_reg<=2'b01;
2'b01:state_reg<=2'b00;
 
endcase
end
end
endmodule
