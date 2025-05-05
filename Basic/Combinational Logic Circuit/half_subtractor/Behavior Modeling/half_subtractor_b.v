module half_subtractor_b(
    input a,
    input b,
    output reg d,
    output reg borrow
    );
    
    always @ (a, b) begin
        d = a ^ b;
        borrow = ~a & b;
    end
    
endmodule
