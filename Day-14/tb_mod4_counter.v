module tb_mod4_counter;

reg clk;
reg rst;

wire [1:0] count;

mod4_counter uut(

.clk(clk),
.rst(rst),
.count(count)

);

initial begin

clk = 0;

forever #5 clk = ~clk;

end

initial begin

rst = 1;

#10 rst = 0;

end

initial begin

$monitor("clk=%b rst=%b count=%b",
clk,rst,count);

#50 $finish;

end

endmodule