module tb_fifo;

reg clk;
reg rst;

reg wr_en;
reg rd_en;

reg [7:0] data_in;

wire [7:0] data_out;

fifo uut(

.clk(clk),
.rst(rst),
.wr_en(wr_en),
.rd_en(rd_en),
.data_in(data_in),
.data_out(data_out)

);

initial begin

clk = 0;

forever #5 clk = ~clk;

end

initial begin

rst = 1;
wr_en = 0;
rd_en = 0;

#10 rst = 0;

wr_en = 1;
data_in = 8'hAA;
#10;

data_in = 8'h55;
#10;

wr_en = 0;

rd_en = 1;
#10;

#10;

rd_en = 0;

end

initial begin

$monitor("wr_en=%b rd_en=%b data_in=%h data_out=%h",
wr_en,rd_en,data_in,data_out);

#60 $finish;

end

endmodule