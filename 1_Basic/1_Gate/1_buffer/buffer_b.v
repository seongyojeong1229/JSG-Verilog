module buffer_b(
    input a,
    output reg b
    );
    
    always @(a) begin
        b <= a;
    end
    
endmodule
    
