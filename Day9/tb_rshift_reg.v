module tb_rshift_reg;
reg clk;
 
wire [3:0] q;
rshift_reg dut(
.clk(clk),
 
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

