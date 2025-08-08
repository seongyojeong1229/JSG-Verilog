module comparator_64bit_d_tb;
    reg [63:0] a;
    reg [63:0] b;
    wire greater;
    wire less;
    wire equal;

    comparator_64bit_d DUT(
        .a(a),
        .b(b),
        .greater(greater),
        .less(less),
        .equal(equal)
    );

    initial begin
        a = 64'h0000_0000_0000_0000; b = 64'h0000_0000_0000_0000; #30;
        a = 64'hBBAB_173D_F27A_C81E; b = 64'hFE7D_2BA2_32A8_82AA; #50;
        a = 64'hDDFE_D8D9_992D_A8C2; b = 64'hCC72_DF99_B7B1_BBAC; #50;
        a = 64'hCA7A_CC92_BA92_A22B; b = 64'hFEE8_223D_AEB2_383B; #50;
        a = 64'h0000_0000_0000_0000; b = 64'h0000_0000_0000_0000; #30;
        $finish;
    end

endmodule
