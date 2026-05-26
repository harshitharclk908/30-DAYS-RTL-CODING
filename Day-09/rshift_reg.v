module rshift_reg(
input clk,
output reg [3:0] q
);
initial 
q=4'b0100;
always@(posedge clk) begin
q<=q>>1;
end 
endmodule