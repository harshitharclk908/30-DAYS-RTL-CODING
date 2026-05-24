module t_ff(
input clk,
input t,
output reg q
);

initial
q = 0;

always @(posedge clk)
begin

if(t)
q <= ~q;

else
q <= q;

end

endmodule