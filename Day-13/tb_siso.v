module tb_siso;

reg clk;
reg in;

wire serial_out;

siso uut(

.clk(clk),
.in(in),
.serial_out(serial_out)

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

$monitor("clk=%b in=%b serial_out=%b",
clk,in,serial_out);

#50 $finish;

end

endmodule