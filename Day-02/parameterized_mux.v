`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 21:59:04
// Design Name: 
// Module Name: parameterized_mux
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


module parameterized_mux#(

    parameter WIDTH = 8,      
    parameter CHANNELS = 4,   
    parameter SEL_W = 2       
)(
    input [CHANNELS*WIDTH-1:0] in_bus, 
    input [SEL_W-1:0] sel,             
    output reg [WIDTH-1:0] y          
);

    always @(*) begin
        y = in_bus[sel * WIDTH +: WIDTH]; 
    end

endmodule
