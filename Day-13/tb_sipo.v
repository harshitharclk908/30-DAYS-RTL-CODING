module tb_sipo;

reg clk;
reg in;

wire [3:0] parallel_out;

sipo uut(

.clk(clk),
.in(in),
.parallel_out(parallel_out)

);

initial begin

clk = 0;

forever #5 clk = ~clk;

end

initial begin

in = 1;
#10;

in = 0;
#10;

in = 1;
#10;

in = 1;
#10;

end

initial begin

$monitor("clk=%b in=%b parallel_out=%b",
clk,in,parallel_out);

#50 $finish;

end

endmodule