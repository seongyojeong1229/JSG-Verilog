module comparator_4bit_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire greater;
    wire less;
    wire equal;
    
    comparator_4bit UUT (
        .a(a),
        .b(b),
        .greater(greater),
        .less(less),
        .equal(equal)
    );
    
    initial begin
        a = 4'b0001; b = 4'b0010; #10;
        a = 4'b1010; b = 4'b0101; #10;
        a = 4'b0110; b = 4'b0110; #10;
        a = 4'b1111; b = 4'b0000; #10;
        a = 4'b0000; b = 4'b1111; #10;
        $finish;
    end
endmodule
