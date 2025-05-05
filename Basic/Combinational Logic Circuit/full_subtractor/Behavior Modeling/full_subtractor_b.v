module full_subtractor_b(
    input a,
    input b,
    input borrow_in,
    output reg d,
    output reg borrow_out
    );
    
    always @ (a, b, borrow_in) begin
        d = a ^ b ^ borrow_in;
        borrow_out = ~a&b | ~(a^b) & borrow_in;
    end
        
endmodule
