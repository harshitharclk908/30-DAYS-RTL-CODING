module tb_pipo;

reg clk;

reg [3:0] in;

wire [3:0] out;

pipo uut(

.clk(clk),
.in(in),
.out(out)

);

initial begin

clk = 0;

forever #5 clk = ~clk;

end

initial begin

in = 4'b0001;
#10;

in = 4'b1010;
#10;

in = 4'b1111;
#10;

in = 4'b0101;
#10;

end

initial begin

$monitor("clk=%b in=%b out=%b",
clk,in,out);

#50 $finish;

end

endmodule