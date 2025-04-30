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
