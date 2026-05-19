`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2026 16:11:56
// Design Name: 
// Module Name: tb_not_gate
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


module tb_not_gate;
reg a;
wire y;
not_gate uut(
.a(a),
.y(y));
initial begin
a=0;
#10;
a=1;
#10;
end
    
endmodule
