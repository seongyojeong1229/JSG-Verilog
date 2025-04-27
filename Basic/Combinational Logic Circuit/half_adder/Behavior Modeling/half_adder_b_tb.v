module half_adder_b_tb;
    reg a;
    reg b;
    wire sum;
    wire cout;

    half_adder_b DUT(
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
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
