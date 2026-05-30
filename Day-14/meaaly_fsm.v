module mealy_fsm(

input clk,
input rst,
input in,

output reg out

);

reg state;

always @(posedge clk or posedge rst)
begin

if(rst)
begin

state <= 0;
out <= 0;

end

else
begin

case(state)

1'b0:
begin

if(in)
begin
state <= 1'b1;
out <= 1'b1;
end

else
begin
state <= 1'b0;
out <= 1'b0;
end

end

1'b1:
begin

if(in)
begin
state <= 1'b1;
out <= 1'b1;
end

else
begin
state <= 1'b0;
out <= 1'b0;
end

end

endcase

end

end

endmodule