module comparator_1bit_d_tb;
    reg a;
    reg b;
    wire greater;
    wire less;
    wire equal;

    comparator_1bit_d DUT(
        .a(a),
        .b(b),
        .greater(greater),
        .less(less),
        .equal(equal)
    );

    initial begin
        a = 0; b = 0; #30; 
        a = 1; b = 0; #50;
        a = 0; b = 1; #50;
        a = 1; b = 1; #50;
        a = 0; b = 0; #30;
        $finish;
    end

endmodule
