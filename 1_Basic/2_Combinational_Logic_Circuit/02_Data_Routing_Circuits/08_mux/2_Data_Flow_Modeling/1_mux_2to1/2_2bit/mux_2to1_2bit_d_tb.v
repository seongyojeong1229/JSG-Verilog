module mux_2to1_d_tb;
    parameter width = 2;
    reg [width-1:0] a;
    reg [width-1:0] b;
    reg sel;
    wire [width-1:0] c;
    
    mux_2to1_d #(
        .width(width)
    )DUT(
        .a(a),
        .b(b),
        .sel(sel),
        .c(c)
    );

    initial begin
        a = 2'b00; b = 2'b01; sel = 1'b0; #30;
        a = 2'b01; b = 2'b10; sel = 1'b0; #30;
        a = 2'b10; b = 2'b11; sel = 1'b0; #30;
        a = 2'b11; b = 2'b00; sel = 1'b0; #30;
        
	a = 2'b00; b = 2'b01; sel = 1'b1; #30;
        a = 2'b01; b = 2'b10; sel = 1'b1; #30;
        a = 2'b10; b = 2'b11; sel = 1'b1; #30;
        a = 2'b11; b = 2'b00; sel = 1'b1; #30;
        $finish;
    end

endmodule
