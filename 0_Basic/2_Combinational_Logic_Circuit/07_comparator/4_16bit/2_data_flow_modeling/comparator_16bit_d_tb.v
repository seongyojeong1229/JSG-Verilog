module comparator_16bit_d_tb;
    reg [15:0] a;
    reg [15:0] b;
    wire greater;
    wire less;
    wire equal;

    comparator_16bit_d DUT(
        .a(a),
        .b(b),
        .greater(greater),
        .less(less),
        .equal(equal)
    );

    initial begin
        a = 16'h0000; b = 16'h0000; #30; 
        a = 16'hF81A; b = 16'hC28F; #50;
        a = 16'hAA9C; b = 16'hD7A0; #50;
        a = 16'h7C98; b = 16'h7C28; #50;
        a = 16'h0000; b = 16'h0000; #30;
        $finish;
    end

endmodule

