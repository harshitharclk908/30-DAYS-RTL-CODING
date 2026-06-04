module nonblocking_example(

input clk,
input [3:0] a,

output reg [3:0] b,
output reg [3:0] c

);

always @(posedge clk)
begin

b <= a;
c <= b;

end

endmodule