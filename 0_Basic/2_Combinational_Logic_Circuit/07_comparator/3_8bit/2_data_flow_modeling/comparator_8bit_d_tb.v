module comparator_8bit_d_tb;
    reg [7:0] a;
    reg [7:0] b;
    wire greater;
    wire less;
    wire equal;

    comparator_8bit_d DUT(
        .a(a),
        .b(b),
        .greater(greater),
        .less(less),
        .equal(equal)
    );

    initial begin
        a = 8'b0000_0000; b = 8'b0000_0000; #30; 
        a = 8'b1000_0000; b = 8'b0000_0001; #50;
        a = 8'b0000_1111; b = 8'b0111_0000; #50;
        a = 8'b1111_1100; b = 8'b1010_0000; #50;
        a = 8'b0000_0000; b = 8'b0000_0000; #30;
        $finish;
    end

endmodule

