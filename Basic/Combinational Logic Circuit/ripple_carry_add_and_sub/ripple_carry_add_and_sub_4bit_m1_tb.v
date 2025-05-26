module ripple_carry_add_and_sub_4bit_m1_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg c_in; 
    reg M;
    wire [3:0] sum;
    wire c_out;
    
    ripple_carry_add_and_sub_4bit_m1 UUT( 
        .a(a), 
        .b(b), 
        .c_in(c_in),
        .sum(sum), 
        .c_out(c_out), 
        .M(M)
    );
    
    initial begin
        a = 4'd0;  b = 4'd0; c_in = 1'b0; M = 1'b0; #30; 
        a = 4'd1;  b = 4'd3; c_in = 1'b0; M = 1'b0; #30; 
        a = 4'd4;  b = 4'd3; c_in = 1'b0; M = 1'b0; #30; 
        a = 4'd5;  b = 4'd7; c_in = 1'b0; M = 1'b0; #30;
        a = 4'd7;  b = 4'd1; c_in = 1'b1; M = 1'b1; #30; 
        a = 4'd13; b = 4'd7; c_in = 1'b1; M = 1'b1; #30;
        a = 4'd15; b = 4'd2; c_in = 1'b1; M = 1'b1; #30;
        a = 4'd6;  b = 4'd2; c_in = 1'b1; M = 1'b1; #30;
        $finish;
    end
endmodule
