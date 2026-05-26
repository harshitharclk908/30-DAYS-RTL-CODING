`timescale 1ns / 1ps

module tb_mux8_1;

    reg a, b, c, d, e, f, g, h;
    reg [2:0] sel;
    wire y;

    mux8_1 uut (
        .a(a), .b(b), .c(c), .d(d),
        .e(e), .f(f), .g(g), .h(h),
        .sel(sel),
        .y(y)
    );

    initial begin
        a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
        e = 1'b1; f = 1'b0; g = 1'b1; h = 1'b0;
        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;
        $finish;
    end

endmodule
