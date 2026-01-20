module half_subtractor_s(
    input a,
    input b,
    output d,
    output borrow
    );
    
    xor(d, a, b);
    and(borrow, ~a, b);
    
endmodule
