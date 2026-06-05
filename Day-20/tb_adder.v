module tb_adder;

reg [3:0] a;
reg [3:0] b;

wire [4:0] sum;

adder #(4) uut(

.a(a),
.b(b),
.sum(sum)

);

initial begin

a = 4'd3;
b = 4'd2;
#10;

a = 4'd5;
b = 4'd7;
#10;

a = 4'd8;
b = 4'd4;
#10;

end

initial begin

$monitor("a=%d b=%d sum=%d",
a,b,sum);

#40 $finish;

end

endmodule