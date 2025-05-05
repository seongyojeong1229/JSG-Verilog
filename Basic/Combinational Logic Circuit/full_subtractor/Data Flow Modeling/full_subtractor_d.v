module full_subtractor_d(
    input a,
    input b,
    input borrow_in,
    output d,
    output borrow_out
    );
    
    assign d = a ^ b ^ borrow_in;
    assign borrow_out = ~a&b | ~(a^b) & borrow_in;
        
endmodule
