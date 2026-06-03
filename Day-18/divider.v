module divider(

input [3:0] a,
input [3:0] b,

output [3:0] quotient

);

assign quotient = a / b;

endmodule