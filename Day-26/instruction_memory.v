`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 22:43:01
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(

input [31:0] address,

output [31:0] instruction

);

reg [31:0] mem [0:15];

initial begin

mem[0] = 32'h00000013;
mem[1] = 32'h00100093;
mem[2] = 32'h00200113;

end

assign instruction = mem[address[5:2]];

endmodule