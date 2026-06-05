module generate_adder(

input [3:0] a,
input [3:0] b,

output [3:0] sum

);

genvar i;

generate

for(i=0;i<4;i=i+1)
begin

assign sum[i] = a[i] ^ b[i];

end

endgenerate

endmodule