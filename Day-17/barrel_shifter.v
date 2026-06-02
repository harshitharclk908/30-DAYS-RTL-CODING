`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 06:32:13
// Design Name: 
// Module Name: barrel_shifter
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


module barrel_shifter(

input [3:0] data_in,
input [1:0] shift,

output reg [3:0] left_shift,
output reg [3:0] right_shift

);

always @(*)
begin

left_shift  = data_in << shift;
right_shift = data_in >> shift;

end

endmodule
