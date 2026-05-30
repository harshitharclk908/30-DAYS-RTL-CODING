module tb_mealy_fsm;

reg clk;
reg rst;
reg in;

wire out;

mealy_fsm uut(

.clk(clk),
.rst(rst),
.in(in),
.out(out)

);

initial begin

clk = 0;

forever #5 clk = ~clk;

end

initial begin

rst = 1;
in = 0;

#10 rst = 0;

#10 in = 1;
#10 in = 0;
#10 in = 1;
#10 in = 1;

end

initial begin

$monitor("clk=%b rst=%b in=%b out=%b",
clk,rst,in,out);

#60 $finish;

end

endmodule