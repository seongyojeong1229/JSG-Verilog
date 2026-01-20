module full_adder_b_case_tb;
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;
    
    full_adder_b_case DUT(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    initial begin
        a = 1'b0; b = 1'b0; cin = 1'b0;
        #20;
        
        a = 1'b0; b = 1'b0; cin = 1'b1;
        #20;
        
        a = 1'b0; b = 1'b1; cin = 1'b0;
        #20;
        
        a = 1'b0; b = 1'b1; cin = 1'b1;
        #20;
        
        a = 1'b1; b = 1'b0; cin = 1'b0;
        #20;
        
        a = 1'b1; b = 1'b0; cin = 1'b1;
        #20;
        
        a = 1'b1; b = 1'b1; cin = 1'b0;
        #20;
        
        a = 1'b1; b = 1'b1; cin = 1'b1;
        #20;
        
        $finish;
    end
endmodule
