module tb_blocking_example;

reg clk;
reg [3:0] a;

wire [3:0] b;
wire [3:0] c;

blocking_example uut(

.clk(clk),
.a(a),
.b(b),
.c(c)

);

initial begin

clk = 0;
forever #5 clk = ~clk;

end

initial begin

a = 4'd2;
#10;

a = 4'd5;
#10;

a = 4'd8;
#10;

end

initial begin

$monitor("a=%d b=%d c=%d",
a,b,c);

#40 $finish;

end

endmodule