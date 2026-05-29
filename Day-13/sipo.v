module sipo(

input clk,
input in,

output [3:0] parallel_out

);

reg [3:0] q;

initial begin

q = 4'b0000;

end

always @(posedge clk)
begin

q <= {q[2:0], in};

end

assign parallel_out = q;

endmodule