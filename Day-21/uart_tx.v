module uart_tx(

input clk,
input rst,
input tx_start,

input [7:0] data_in,

output reg tx

);

reg [3:0] count;
reg [9:0] shift_reg;

always @(posedge clk)
begin

if(rst)
begin

tx <= 1'b1;
count <= 0;

end

else if(tx_start)
begin

shift_reg <= {1'b1,data_in,1'b0};

count <= 10;

end

else if(count > 0)
begin

tx <= shift_reg[0];

shift_reg <= shift_reg >> 1;

count <= count - 1;

end

end

endmodule