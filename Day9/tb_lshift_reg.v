module tb_lshift_reg;
reg clk;
//reg [3:0] d;
wire [3:0] q;
lshift_reg dut(
.clk(clk),
//.d(d),
.q(q)
);
initial begin
clk=0;
end
always #5 clk=~clk;

initial begin
$monitor ("clk=%b q=%b  ",clk,q);
#20 $finish;
end 
endmodule
