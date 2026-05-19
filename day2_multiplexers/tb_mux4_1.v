`timescale 1ns / 1ps

module tb_mux4_1;

    reg a, b, c, d;
    reg [1:0] sel;
    wire y;

    mux4_1 uut (
        .a(a), .b(b), .c(c), .d(d),
        .sel(sel),
        .y(y)
    );

    initial begin
        a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        $finish;
    end

endmodule
