module half_subtractor_d(
    input a,
    input b,
    output d,
    output borrow
    );
    
    assign d = a ^ b;
    assign borrow = ~a & b;
    
endmodule
