module mux_2to1_4bit_b_case_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg sel;
    wire [3:0] out;
    
    mux_2to1_4bit_b_case DUT(
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );
    
    initial begin  
        sel = 0;
        a = 4'h2; b = 4'h9; #20;
        a = 4'h3; b = 4'ha; #20;
        a = 4'h4; b = 4'hb; #20;
        a = 4'h5; b = 4'hc; #20;
        sel = 1;
        a = 4'h6; b = 4'hd; #20;
        a = 4'h7; b = 4'he; #20;
        a = 4'h8; b = 4'hf; #20;
        $finish;
    end
endmodule

