module tb_i2c_master;

reg clk;
reg rst;
reg start;

reg [7:0] data_in;

wire sda;
wire scl;

i2c_master uut(

.clk(clk),
.rst(rst),
.start(start),
.data_in(data_in),

.sda(sda),
.scl(scl)

);

initial begin

clk = 0;

forever #5 clk = ~clk;

end

initial begin

rst = 1;
start = 0;

#10 rst = 0;

data_in = 8'b10101010;

#10 start = 1;

#10 start = 0;

end

initial begin

$monitor("time=%0t sda=%b scl=%b count=%d",
$time,sda,scl,uut.count);

#150 $finish;

end

endmodule