module half_adder_b(
    input a,
    input b,
    output reg sum,
    output reg cout
    );

    always @ (a, b) begin
        sum = a ^ b;
        cout = a & b;
    end

endmodule
