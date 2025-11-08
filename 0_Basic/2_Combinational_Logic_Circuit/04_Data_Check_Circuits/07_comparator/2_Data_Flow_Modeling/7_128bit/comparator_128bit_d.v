module comparator_d #(parameter MSB = 128)(
    input wire [MSB-1:0] a,
    input wire [MSB-1:0] b,
    output greater,
    output less,
    output equal
);

    assign greater = (a > b);
    assign less    = (a < b);
    assign equal  = (a == b);    

endmodule

