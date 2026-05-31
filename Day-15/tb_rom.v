module tb_rom;

reg [1:0] addr;

wire [7:0] data_out;

rom uut(

.addr(addr),
.data_out(data_out)

);

initial begin

addr = 2'b00;
#10;

addr = 2'b01;
#10;

addr = 2'b10;
#10;

addr = 2'b11;
#10;

end

initial begin

$monitor("addr=%b data_out=%h",
addr,data_out);

#50 $finish;

end

endmodule