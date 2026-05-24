module tb_t_ff;

reg clk;
reg t;

wire q;

t_ff uut(
.clk(clk),
.t(t),
.q(q)
);

always #5 clk = ~clk;

initial begin

$monitor("time=%0t clk=%b t=%b q=%b",
$time, clk, t, q);

clk = 0;

t = 0; #10;

t = 1; #10;

t = 1; #10;

t = 0; #10;

t = 1; #10;

$finish;

end

endmodule