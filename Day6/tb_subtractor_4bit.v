module tb_subtractor_4bit;

reg [3:0] a, b;
wire [3:0] diff;

subtractor_4bit uut(
.a(a),
.b(b),
.diff(diff)
);

initial begin

$monitor("a=%b b=%b diff=%b", a, b, diff);

a = 4'b0101; b = 4'b0011; #5;
a = 4'b1000; b = 4'b0001; #5;
a = 4'b0011; b = 4'b0101; #5;
a = 4'b1111; b = 4'b0111; #5;

$finish;

end

endmodule