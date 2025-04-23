module and_gate_d_tb;
    reg a;
    reg b;
    wire y;
    
    and_gate_d DUT(
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
