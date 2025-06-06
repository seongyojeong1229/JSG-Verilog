module xnor_gate_d(
    input a,
    input b,
    output y
    );

    assign y = ~(a ^ b);

endmodule
