module nor_gate_s_tb;
    reg a;
    reg b;
    wire y;

    nor_gate_s DUT(
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
