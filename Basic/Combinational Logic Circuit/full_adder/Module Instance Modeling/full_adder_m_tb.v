module full_adder_m_tb;
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;
    
    full_adder_m DUT(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    initial begin
        a = 0; b = 0; cin = 0;
        #20;
        
        a = 0; b = 0; cin = 1;
        #20;
        
        a = 0; b = 1; cin = 0;
        #20;
        
        a = 0; b = 1; cin = 1;
        #20;
        
        a = 1; b = 0; cin = 0;
        #20;
        
        a = 1; b = 0; cin = 1;
        #20;
        
        a = 1; b = 1; cin = 0;
        #20;
        
        a = 1; b = 1; cin = 1;
        #20;
        
        $finish;
    end
endmodule
