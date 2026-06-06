module tb_uart_tx;

reg clk;
reg rst;
reg tx_start;

reg [7:0] data_in;

wire tx;

uart_tx uut(

.clk(clk),
.rst(rst),
.tx_start(tx_start),
.data_in(data_in),
.tx(tx)

);

initial begin

clk = 0;

forever #5 clk = ~clk;

end

initial begin

rst = 1;
tx_start = 0;

#10 rst = 0;

data_in = 8'b10101010;

#10 tx_start = 1;

#10 tx_start = 0;

end

initial begin

$monitor("time=%0t tx=%b count=%d",
$time,tx,uut.count);

#150 $finish;

end

endmodule