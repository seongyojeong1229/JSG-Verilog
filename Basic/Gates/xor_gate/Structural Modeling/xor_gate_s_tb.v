module xor_gate_s_tb;
    reg a;
    reg b;
    wire y;

    xor_gate_s DUT(
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        a = 0; b = 0;
        #50;
        
        a = 0; b = 1;
        #50;
        
        a = 1; b = 0;
        #50;
        
        a = 1; b = 1;
        #50;
        
        $finish;
    end
endmodule
