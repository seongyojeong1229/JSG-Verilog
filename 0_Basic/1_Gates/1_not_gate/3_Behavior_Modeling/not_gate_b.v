module not_gate_b(
    input a,
    output reg b
    );
    
    always @(a)
        b = ~a;

endmodule

