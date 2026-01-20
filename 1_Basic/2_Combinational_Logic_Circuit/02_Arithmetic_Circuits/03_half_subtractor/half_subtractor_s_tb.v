module half_subtractor_s_tb;
    reg a;
    reg b;
    wire d;
    wire borrow;
    
    half_subtractor_s DUT(
        .a(a),
        .b(b),
        .d(d),
        .borrow(borrow)
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
