module comparator_4bit(
    input [3:0] a,
    input [3:0] b,
    output greater,
    output less,
    output equal
    );
    
    assign greater = (a > b);
    assign less    = (a < b);
    assign equal  = (a == b);
    
endmodule
