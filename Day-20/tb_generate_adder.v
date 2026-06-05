module tb_generate_adder;

reg [3:0] a;
reg [3:0] b;

wire [3:0] sum;

generate_adder uut(

.a(a),
.b(b),
.sum(sum)

);

initial begin

a = 4'b0000;
b = 4'b0000;
#10;

a = 4'b1010;
b = 4'b0101;
#10;

a = 4'b1100;
b = 4'b0011;
#10;

a = 4'b1111;
b = 4'b1111;
#10;

end

initial begin

$monitor("a=%b b=%b sum=%b",
a,b,sum);

#50 $finish;

end

endmodule