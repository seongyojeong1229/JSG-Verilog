module comparator_1bit_d(
    input wire a,
    input wire b,
    output greater,
    output less,
    output equal
);

    assign greater = (a > b);
    assign less    = (a < b);
    assign equal  = (a == b);    

endmodule

