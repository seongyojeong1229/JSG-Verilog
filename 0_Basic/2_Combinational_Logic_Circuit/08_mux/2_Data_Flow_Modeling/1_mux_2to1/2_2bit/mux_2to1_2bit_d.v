module mux_2to1_d #(parameter width = 2)(
    input wire [width-1:0] a,
    input wire [width-1:0] b,
    input wire sel,
    output [width-1:0] c
);

    assign c = sel ? a : b;

endmodule
