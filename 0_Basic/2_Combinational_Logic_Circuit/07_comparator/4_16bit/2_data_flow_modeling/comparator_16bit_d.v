module comparator_16bit_d(
    input wire [15:0] a,
    input wire [15:0] b,
    output greater,
    output less,
    output equal
);

    assign greater = (a > b);
    assign less    = (a < b);
    assign equal  = (a == b);    

endmodule
