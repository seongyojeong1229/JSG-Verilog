module ripple_carry_adder_4bit_m1_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] sum;
    wire cout;
    
    ripple_carry_adder_4bit_m1 UUT( 
        .a(a), 
        .b(b), 
        .sum(sum), 
        .cout(cout) 
    );
    
    initial begin
        a = 4'b0000; b = 4'b0000; #10;
        a = 4'b0001; b = 4'b0001; #10;
        a = 4'b0110; b = 4'b0011; #10;
        a = 4'b1111; b = 4'b0001; #10;
        a = 4'b1001; b = 4'b0110; #10;        
        $finish;
    end
endmodule
