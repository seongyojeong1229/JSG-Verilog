module ripple_carry_adder_borrow_subtractor_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg mode;
    wire [3:0] result;
    wire carry_borrow;
    
    ripple_carry_adder_borrow_subtractor DUT(
        .a(a),
        .b(b),
        .mode(mode),
        .result(result),
        .carry_borrow(carry_borrow)
    );

    initial begin
        a = 4'b0000; b = 4'b0000; mode = 0; #10;

        mode = 0;
        a = 4'b0000; b = 4'b0000; #10; 
        a = 4'b1111; b = 4'b0001; #10; 
        a = 4'b1111; b = 4'b1111; #10; 
        a = 4'b0111; b = 4'b0001; #10; 

        mode = 1;
        a = 4'b1010; b = 4'b1010; #10; 
        a = 4'b0000; b = 4'b0001; #10; 
        a = 4'b0000; b = 4'b1111; #10;

        $finish;
    end  
endmodule