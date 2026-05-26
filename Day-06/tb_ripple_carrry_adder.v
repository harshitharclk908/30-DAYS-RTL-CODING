module tb_ripple_carry_adder;

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire carry;

ripple_carry_adder uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.carry(carry)
);

initial begin

$monitor("a=%b b=%b cin=%b sum=%b carry=%b",
a, b, cin, sum, carry);

a = 4'b0001; b = 4'b0010; cin = 0; #5;
a = 4'b0101; b = 4'b0011; cin = 0; #5;
a = 4'b1111; b = 4'b0001; cin = 0; #5;
a = 4'b1010; b = 4'b0101; cin = 1; #5;

$finish;

end

endmodule