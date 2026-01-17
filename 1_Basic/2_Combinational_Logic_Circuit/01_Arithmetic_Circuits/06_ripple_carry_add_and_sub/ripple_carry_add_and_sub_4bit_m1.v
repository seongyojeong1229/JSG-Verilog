module ripple_carry_add_and_sub_4bit_m1(
    input [3:0] a, 
    input [3:0] b,
    input c_in, 
    input M,   
    output [3:0] sum,
    output c_out
    );
    
    wire c1,c2,c3;
    wire bb0,bb1,bb2,bb3;
    
    xor x1(bb0,b[0],M); 
    xor x2(bb1,b[1],M);
    xor x3(bb2,b[2],M);
    xor x4(bb3,b[3],M);
 
    full_adder_m  fa0(.a(a[0]), .b(bb0), .cin(c_in) , .sum(sum[0]), .cout(c1));
    full_adder_m  fa1(.a(a[1]), .b(bb1), .cin(c1),    .sum(sum[1]), .cout(c2));
    full_adder_m  fa2(.a(a[2]), .b(bb2), .cin(c2),    .sum(sum[2]), .cout(c3));
    full_adder_m  fa3(.a(a[3]), .b(bb3), .cin(c3),    .sum(sum[3]), .cout(c_out));
 
endmodule
 
