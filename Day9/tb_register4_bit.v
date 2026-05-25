module tb_register4_bit;
reg clk;
reg [3:0] d;
wire [3:0] q;
register4_bit dut(
.clk(clk),
.d(d),
.q(q)
);
initial begin
clk=0;
forever #5 clk=~clk;
clk=0;
forever #5 clk=~clk;
end

initial begin
d=4'b0000;
#10;
d=4'b0001;
#10;
d=4'b0010;
#10;
d=4'b0011;
#10;
end
initial begin
$monitor ("clk=%b q=%b d=%b",clk,q,d);
#50 $finish;
end 
endmodule
