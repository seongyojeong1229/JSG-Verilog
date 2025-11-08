module not_gate_s_tb;
    reg a;
    wire b;

    not_gate_s DUT(
        .a(a),
        .b(b)
    );

    initial begin
        a = 0; #20;
        a = 1; #20;
        a = 0; #20;
        a = 1; #20;
        $finish;
    end
endmodule
