module tb_blocking_nonblocking;

reg clk;
reg [3:0] a;

wire [3:0] b1;
wire [3:0] c1;

wire [3:0] b2;
wire [3:0] c2;

blocking_nonblocking uut(

.clk(clk),
.a(a),

.b1(b1),
.c1(c1),

.b2(b2),
.c2(c2)

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

$monitor("a=%d b1=%d c1=%d b2=%d c2=%d",
a,b1,c1,b2,c2);

#40 $finish;

end

endmodule