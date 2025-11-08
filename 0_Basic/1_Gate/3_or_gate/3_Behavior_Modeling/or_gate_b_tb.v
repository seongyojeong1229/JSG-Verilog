module or_gate_b_tb;
    reg a;
    reg b;
    wire y;

    or_gate_b DUT(
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        a = 1'b0; b = 1'b0;
        #50;
        
        a = 1'b0; b = 1'b1;
        #50;
        
        a = 1'b1; b = 1'b0;
        #50;
        
        a = 1'b1; b = 1'b1;
        #50;
        
        $finish;
    end
endmodule
