module tb_dff_reset;

reg clk;
reg reset;
reg d;

wire q;

dff_reset uut(
.clk(clk),
.reset(reset),
.d(d),
.q(q)
);

always #5 clk = ~clk;

initial begin

$monitor("time=%0t clk=%b reset=%b d=%b q=%b",
$time, clk, reset, d, q);

clk = 0;

reset = 1;
d = 0;
#10;

reset = 0;
d = 1;
#10;

d = 0;
#10;

d = 1;
#10;

$finish;

end

endmodule