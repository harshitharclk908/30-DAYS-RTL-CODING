module tb_multiplier;

reg [3:0] a;
reg [3:0] b;

wire [7:0] product;

multiplier uut(

.a(a),
.b(b),
.product(product)

);

initial begin

a = 4'd3;
b = 4'd2;
#10;

a = 4'd5;
b = 4'd3;
#10;

a = 4'd7;
b = 4'd4;
#10;

end

initial begin

$monitor("a=%d b=%d product=%d",
a,b,product);

#40 $finish;

end

endmodule