module siso(

input clk,
input in,

output serial_out

);

reg [3:0] q;

initial begin

q = 4'b0000;

end

always @(posedge clk)
begin

q <= {q[2:0], in};

end

assign serial_out = q[3];

endmodule