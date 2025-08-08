module comparator_8bit_d(
    input wire [7:0] a,
    input wire [7:0] b,
    output greater,
    output less,
    output equal
);

    assign greater = (a > b);
    assign less    = (a < b);
    assign equal  = (a == b);    

endmodule

