module tb_divider;

reg [3:0] a;
reg [3:0] b;

wire [3:0] quotient;

divider uut(

.a(a),
.b(b),
.quotient(quotient)

);

initial begin

a = 8;
b = 2;
#10;

a = 9;
b = 3;
#10;

a = 12;
b = 4;
#10;

end

initial begin

$monitor("a=%d b=%d quotient=%d",
a,b,quotient);

#40 $finish;

end

endmodule