module spi_master(

input clk,
input rst,
input start,

input [7:0] data_in,

output reg mosi,
output reg sclk,
output reg cs

);

reg [7:0] shift_reg;
reg [3:0] count;

always @(posedge clk)
begin

if(rst)
begin

mosi <= 0;
sclk <= 0;
cs <= 1;

count <= 0;

end

else if(start)
begin

cs <= 0;

shift_reg <= data_in;

count <= 8;

end

else if(count > 0)
begin

sclk <= ~sclk;

mosi <= shift_reg[7];

shift_reg <= shift_reg << 1;

count <= count - 1;

end

else
begin

cs <= 1;

end

end

endmodule