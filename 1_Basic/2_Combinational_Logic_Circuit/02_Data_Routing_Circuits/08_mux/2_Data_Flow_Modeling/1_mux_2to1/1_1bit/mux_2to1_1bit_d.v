module mux_2to1_1bit_d(
    input wire a,
    input wire b,
    input wire sel,
    output c
);

    assign c = sel ? a : b;

endmodule

