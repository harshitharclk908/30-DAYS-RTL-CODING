module blocking_nonblocking(

input clk,
input [3:0] a,

output reg [3:0] b1,
output reg [3:0] c1,

output reg [3:0] b2,
output reg [3:0] c2

);

always @(posedge clk)
begin

// Blocking

b1 = a;
c1 = b1;

// Non-blocking

b2 <= a;
c2 <= b2;

end

endmodule