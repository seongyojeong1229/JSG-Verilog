module comparator_32bit_d(
    input wire [31:0] a,
    input wire [31:0] b,
    output greater,
    output less,
    output equal
);

    assign greater = (a > b);
    assign less    = (a < b);
    assign equal  = (a == b);    

endmodule

