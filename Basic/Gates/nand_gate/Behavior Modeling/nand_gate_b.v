module nand_gate_b(
    input a,
    input b,
    output reg y
    );

    always @ (a, b) begin
        y = ~(a & b);
    end

endmodule
