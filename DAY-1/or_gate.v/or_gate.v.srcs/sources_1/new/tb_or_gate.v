`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2026 16:00:03
// Design Name: 
// Module Name: tb_or_gate
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


module tb_or_gate;
reg a,b;
wire y;
    or_gate uut(
    .a(a),
    .b(b),
    .y(y)
  );
  initial begin
  a=0;b=0;
  #10;
  a=0;b=1;
  #10;
  a=1;b=0;
  #10;
  a=1; b=1;
  #10;
  end
endmodule
