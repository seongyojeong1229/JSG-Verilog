`include "half_subtractor_s.v"

module full_subtractor_m(
    input a,
    input b,
    input borrow_in,
    output d,
    output borrow_out
    );

    wire w1, w2, w3;

    half_subtractor_s U1(.a(a), .b(b), .d(w1), .borrow(w2));
    half_subtractor_s U2(.a(w1), .b(borrow_in), .d(d), .borrow(w3));
    or U3(borrow_out, w2, w3);

endmodule