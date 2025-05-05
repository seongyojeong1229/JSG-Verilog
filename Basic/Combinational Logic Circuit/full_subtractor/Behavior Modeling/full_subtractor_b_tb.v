module full_subtractor_b_tb;
    reg a;
    reg b;
    reg borrow_in;
    wire d;
    wire borrow_out;
    
    full_subtractor_b DUT(
        .a(a),
        .b(b),
        .borrow_in(borrow_in),
        .d(d),
        .borrow_out(borrow_out)
    );
    
    initial begin
        a = 1'b0; b = 1'b0; borrow_in = 1'b0; #20; 
        a = 1'b0; b = 1'b0; borrow_in = 1'b1; #20;      
        a = 1'b0; b = 1'b1; borrow_in = 1'b0; #20;    
        a = 1'b0; b = 1'b1; borrow_in = 1'b1; #20;   
        a = 1'b1; b = 1'b0; borrow_in = 1'b0; #20;   
        a = 1'b1; b = 1'b0; borrow_in = 1'b1; #20;   
        a = 1'b1; b = 1'b1; borrow_in = 1'b0; #20;    
        a = 1'b1; b = 1'b1; borrow_in = 1'b1; #20;
        $finish;
    end
endmodule
