module tb_priority_encoder;

reg i0, i1, i2, i3;
wire [1:0] y;

priority_encoder uut(
.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.y(y)
);

initial begin
  i3=0;i2=0;i1=0;i0=0; #10;
  i3=0;i2=0;i1=0;i0=1; #10;
  i3=0;i2=0;i1=1;i0=0; #10;
  i3=0;i2=1;i1=0;i0=0; #10;
  i3=1;i2=0;i1=0;i0=0; #10;
end

endmodule