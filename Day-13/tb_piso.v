module tb_piso;

reg clk;
reg load;

reg [3:0] parallel_in;

wire serial_out;

piso uut(

.clk(clk),
.load(load),
.parallel_in(parallel_in),
.serial_out(serial_out)

);

initial begin

clk = 0;

forever #5 clk = ~clk;

end

initial begin

load = 1;

parallel_in = 4'b1011;

#10;

load = 0;

#40;

end

initial begin

$monitor("clk=%b load=%b parallel_in=%b serial_out=%b",
clk,load,parallel_in,serial_out);

#60 $finish;

end

endmodule