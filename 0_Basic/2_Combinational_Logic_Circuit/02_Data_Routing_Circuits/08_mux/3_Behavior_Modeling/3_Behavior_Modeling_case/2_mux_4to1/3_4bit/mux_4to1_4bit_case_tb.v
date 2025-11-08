module mux_case_tb;
    parameter width = 4;
    parameter swidth = 2;
    reg [width-1:0] i0;
    reg [width-1:0] i1;
    reg [width-1:0] i2;
    reg [width-1:0] i3;
    reg [swidth-1:0] sel;
    wire [width-1:0] o;
    
    mux_case #(
        .width(width),
        .swidth(swidth)
    )DUT(
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .sel(sel),
        .o(o)
    );

    initial begin
        i0 = 4'hA; i1 = 4'hB; i2 = 4'hC; i3 = 4'hD; sel = 2'b00; #30;
        i0 = 4'hB; i1 = 4'hC; i2 = 4'hD; i3 = 4'hE; sel = 2'b00; #30;

        i0 = 4'hC; i1 = 4'hD; i2 = 4'hE; i3 = 4'hF; sel = 2'b01; #30;
        i0 = 4'hD; i1 = 4'hE; i2 = 4'hF; i3 = 4'hA; sel = 2'b01; #30;
        
        i0 = 4'hE; i1 = 4'hF; i2 = 4'hA; i3 = 4'hB; sel = 2'b10; #30;
        i0 = 4'hF; i1 = 4'hA; i2 = 4'hB; i3 = 4'hC; sel = 2'b10; #30;
        
        i0 = 4'hA; i1 = 4'hB; i2 = 4'hC; i3 = 4'hD; sel = 2'b11; #30;
        i0 = 4'hB; i1 = 4'hC; i2 = 4'hD; i3 = 4'hE; sel = 2'b11; #30;
        $finish;
    end

endmodule
