module nor_gate_b_tb;
    reg a;
    reg b;
    wire y;

    nor_gate_b DUT(
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
