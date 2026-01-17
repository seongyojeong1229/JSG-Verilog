module mux_2to1_1bit_d_tb;
    reg a;
    reg b;
    reg sel;
    wire c;
    
    mux_2to1_1bit_d DUT(
        .a(a),
        .b(b),
        .sel(sel),
        .c(c)
    );

    initial begin
        a = 0; b = 0; sel = 0; #30; 
        a = 0; b = 1; sel = 0; #30;
        a = 1; b = 0; sel = 0; #30; 
        a = 1; b = 1; sel = 0; #30;
        
        a = 0; b = 0; sel = 1; #30; 
        a = 0; b = 1; sel = 1; #30;
        a = 1; b = 0; sel = 1; #30; 
        a = 1; b = 1; sel = 1; #30;
        $finish;
    end

endmodule

