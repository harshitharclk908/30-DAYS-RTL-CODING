module rom(

input [1:0] addr,

output reg [7:0] data_out

);

always @(*)
begin

case(addr)

2'b00: data_out = 8'h11;
2'b01: data_out = 8'h22;
2'b10: data_out = 8'h33;
2'b11: data_out = 8'h44;

default: data_out = 8'h00;

endcase

end

endmodule