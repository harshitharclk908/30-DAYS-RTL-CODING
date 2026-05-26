`timescale 1ns / 1ps

module tb_parameterized_mux;

    parameter WIDTH = 8;
    parameter CHANNELS = 4;
    parameter SEL_W = 2;

    reg [CHANNELS*WIDTH-1:0] in_bus;
    reg [SEL_W-1:0] sel;
    wire [WIDTH-1:0] y;

    parameterized_mux #(
        .WIDTH(WIDTH),
        .CHANNELS(CHANNELS),
        .SEL_W(SEL_W)
    ) uut (
        .in_bus(in_bus),
        .sel(sel),
        .y(y)
    );

    initial begin
        in_bus = {8'hDD, 8'hCC, 8'hBB, 8'hAA};
        sel = 2'b00; #10; 
        sel = 2'b01; #10; 
        sel = 2'b10; #10; 
        sel = 2'b11; #10; 
        $finish;
    end

endmodule
