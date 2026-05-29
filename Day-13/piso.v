module piso(

input clk,
input load,

input [3:0] parallel_in,

output serial_out

);

reg [3:0] q;

initial begin

q = 4'b0000;

end

always @(posedge clk)
begin

if(load)

q <= parallel_in;

else

q <= q << 1;

end

assign serial_out = q[3];

endmodule