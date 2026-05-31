module tb_ram;

reg clk;
reg we;

reg [1:0] addr;
reg [7:0] data_in;

wire [7:0] data_out;

ram uut(

.clk(clk),
.we(we),
.addr(addr),
.data_in(data_in),
.data_out(data_out)

);

initial begin

clk = 0;
forever #5 clk = ~clk;

end

initial begin

we = 1;

addr = 2'b00;
data_in = 8'hAA;

#10;

addr = 2'b01;
data_in = 8'h55;

#10;

we = 0;

addr = 2'b00;

#10;

addr = 2'b01;

#10;

end

initial begin

$monitor("clk=%b we=%b addr=%b data_in=%h data_out=%h",
clk,we,addr,data_in,data_out);

#50 $finish;

end

endmodule