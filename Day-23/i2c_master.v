module i2c_master(

input clk,
input rst,
input start,

input [7:0] data_in,

output reg sda,
output reg scl

);

reg [7:0] shift_reg;
reg [3:0] count;

always @(posedge clk)
begin

if(rst)
begin

sda <= 1;
scl <= 1;

count <= 0;

end

else if(start)
begin

sda <= 0;

shift_reg <= data_in;

count <= 8;

end

else if(count > 0)
begin

scl <= ~scl;

sda <= shift_reg[7];

shift_reg <= shift_reg << 1;

count <= count - 1;

end

else
begin

sda <= 1;

end

end

endmodule