module tb_pipeline_reg;

reg clk;
reg rst;

reg [31:0] data_in;

wire [31:0] data_out;

pipeline_reg uut(

.clk(clk),
.rst(rst),

.data_in(data_in),
.data_out(data_out)

);

initial begin

clk = 0;

forever #5 clk = ~clk;

end

initial begin

rst = 1;
data_in = 0;

#10 rst = 0;

#10 data_in = 32'd10;
#10 data_in = 32'd20;
#10 data_in = 32'd30;
#10 data_in = 32'd40;

end

initial begin

$monitor("time=%0t data_in=%d data_out=%d",
$time,data_in,data_out);

#70 $finish;

end

endmodule