module comparator_2bit_d_tb;
    reg [1:0] a;
    reg [1:0] b;
    wire greater;
    wire less;
    wire equal;

    comparator_2bit_d DUT(
        .a(a),
        .b(b),
        .greater(greater),
        .less(less),
        .equal(equal)
    );

    initial begin
        a = 2'b00; b = 2'b00; #30; 
        a = 2'b10; b = 2'b00; #50;
        a = 2'b00; b = 2'b01; #50;
        a = 2'b11; b = 2'b10; #50;
        a = 2'b0; b = 2'b0; #30;
        $finish;
    end

endmodule
