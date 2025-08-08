module comparator_32bit_d_tb;
    reg [31:0] a;
    reg [31:0] b;
    wire greater;
    wire less;
    wire equal;

    comparator_32bit_d DUT(
        .a(a),
        .b(b),
        .greater(greater),
        .less(less),
        .equal(equal)
    );

    initial begin
        a = 32'h0000_0000; b = 32'h0000_0000; #30;
        a = 32'hA82C_77E1; b = 32'hC1B3_AA91; #50;
        a = 32'hF9FD_9A93; b = 32'hC91A_FAF2; #50;
        a = 32'hDDC2_9912; b = 32'hDDFC_AA9F; #50;
        a = 32'h0000_0000; b = 32'h0000_0000; #30;
        $finish;
    end

endmodule

