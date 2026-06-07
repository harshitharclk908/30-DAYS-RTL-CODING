module tb_spi_master;

reg clk;
reg rst;
reg start;

reg [7:0] data_in;

wire mosi;
wire sclk;
wire cs;

spi_master uut(

.clk(clk),
.rst(rst),
.start(start),
.data_in(data_in),

.mosi(mosi),
.sclk(sclk),
.cs(cs)

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

$monitor("time=%0t cs=%b sclk=%b mosi=%b count=%d",
$time,cs,sclk,mosi,uut.count);

#150 $finish;

end

endmodule