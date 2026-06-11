`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 22:44:18
// Design Name: 
// Module Name: tb_instruction_memory
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

module tb_instruction_memory;

reg [31:0] address;

wire [31:0] instruction;

instruction_memory uut(

.address(address),
.instruction(instruction)

);

initial begin

address = 32'd0;
#10;

address = 32'd4;
#10;

address = 32'd8;
#10;

address = 32'd12;
#10;

address = 32'd16;
#10;

$finish;

end

initial begin

$monitor("time=%0t address=%d instruction=%h",
$time,
address,
instruction);

end

endmodule
