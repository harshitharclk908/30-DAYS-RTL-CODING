`timescale 1ns / 1ps

module tb_mux2_1;

    reg a;
    reg b;
    reg sel;
    wire y;

    mux2_1 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        sel = 1'b0; a = 1'b0; b = 1'b1; #10;
        sel = 1'b0; a = 1'b1; b = 1'b0; #10;
        sel = 1'b1; a = 1'b1; b = 1'b0; #10;
        sel = 1'b1; a = 1'b0; b = 1'b1; #10;
        $finish;
    end

endmodule
