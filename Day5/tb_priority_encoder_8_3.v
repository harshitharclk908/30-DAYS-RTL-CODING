module tb_priority_encoder_8_3;

reg [7:0] i;
wire [2:0] y;

priority_encoder_8_3 uut(
.i(i),
.y(y)
);

initial begin

i = 8'b00000001; #10;
i = 8'b00000110; #10;
i = 8'b00110000; #10;
i = 8'b11000000; #10;

end

endmodule