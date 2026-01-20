module ripple_carry_add_and_sub_4bit_d(
    input [3:0] a, 
    input [3:0] b,
    input c_in, 
    input M,
    output [3:0] sum,
    output c_out
    );
    
    assign {c_out, sum} = (M == 0) ? (a + b + c_in) : (a + (~b) + c_in);
    
endmodule
 
