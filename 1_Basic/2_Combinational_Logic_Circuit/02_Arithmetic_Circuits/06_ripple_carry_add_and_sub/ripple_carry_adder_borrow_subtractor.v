`include "half_adder_s.v"
`include "full_adder_m.v"

module ripple_carry_adder_borrow_subtractor(
    input [3:0] a, 
    input [3:0] b,
    input mode,
    output [3:0] result,
    output carry_borrow
    );
    
    wire w1, w2, w3, w4;
    wire [3:0] b_xor;
    
    assign b_xor = b ^ {4{mode}};
 
    full_adder_m fa0(.a(a[0]), .b(b_xor[0]), .cin(mode), .sum(result[0]), .cout(w1));
    full_adder_m fa1(.a(a[1]), .b(b_xor[1]), .cin(w1),   .sum(result[1]), .cout(w2));
    full_adder_m fa2(.a(a[2]), .b(b_xor[2]), .cin(w2),   .sum(result[2]), .cout(w3));
    full_adder_m fa3(.a(a[3]), .b(b_xor[3]), .cin(w3),   .sum(result[3]), .cout(w4));
 
    assign carry_borrow = w4;

endmodule