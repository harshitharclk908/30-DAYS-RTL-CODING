module pipeline_reg(

input clk,
input rst,

input [31:0] data_in,

output reg [31:0] data_out

);

always @(posedge clk)
begin

if(rst)
data_out <= 32'd0;

else
data_out <= data_in;

end

endmodule