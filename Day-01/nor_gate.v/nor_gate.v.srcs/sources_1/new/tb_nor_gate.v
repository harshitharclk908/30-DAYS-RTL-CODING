`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2026 16:29:15
// Design Name: 
// Module Name: tb_nor_gate
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


module tb_nor_gate;
reg a,b;
wire y;
nor_gate uut(
.a(a),
.b(b),
.y(y)

    );
    initial begin 
    a=0;b=0;
    #5
    a=0;b=1;
    #5;
    a=1;b=0;
    #5;
    a=1;b=1;
    #5;
    end
endmodule
