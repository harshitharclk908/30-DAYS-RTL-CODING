`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 06:32:47
// Design Name: 
// Module Name: tb_barrel_shifter
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


module tb_barrel_shifter;

reg [3:0] data_in;
reg [1:0] shift;

wire [3:0] left_shift;
wire [3:0] right_shift;

barrel_shifter uut(

.data_in(data_in),
.shift(shift),
.left_shift(left_shift),
.right_shift(right_shift)

);

initial begin

data_in = 4'b1010;

shift = 2'b00;
#10;

shift = 2'b01;
#10;

shift = 2'b10;
#10;

shift = 2'b11;
#10;

end

initial begin

$monitor("data_in=%b shift=%b left=%b right=%b",
data_in,shift,left_shift,right_shift);

#50 $finish;

end

endmodule