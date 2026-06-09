`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 19:12:56
// Design Name: 
// Module Name: tb_pc
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


module tb_pc;
reg clk;
reg rst;
wire[31:0] pc_out;
pc uut(
.clk(clk),
.rst(rst),
.pc_out(pc_out)
);
initial begin
clk=0;
forever #5 clk=~clk;
end 
initial begin 
rst=1;
#10 rst=0;
end
initial begin

$monitor("time=%0t pc=%d",
$time,pc_out);

#60 $finish;

end
endmodule
