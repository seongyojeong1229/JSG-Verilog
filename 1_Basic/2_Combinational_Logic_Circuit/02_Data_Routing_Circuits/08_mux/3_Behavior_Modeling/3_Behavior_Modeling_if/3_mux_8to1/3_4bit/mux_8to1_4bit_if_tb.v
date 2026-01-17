module mux_if_tb;
    parameter width = 4;
    parameter swidth = 3;
    reg [width-1:0] i0;
    reg [width-1:0] i1;
    reg [width-1:0] i2;
    reg [width-1:0] i3;
    reg [width-1:0] i4;
    reg [width-1:0] i5;
    reg [width-1:0] i6;
    reg [width-1:0] i7;
    reg [swidth-1:0] sel;
    wire [width-1:0] o;
    
    mux_if #(
        .width(width),
        .swidth(swidth)
    )DUT(
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .i4(i4),
        .i5(i5),
        .i6(i6),
        .i7(i7),
        .sel(sel),
        .o(o)
    );

    initial begin
        i0 = 4'hA; i1 = 4'hB; i2 = 4'hC; i3 = 4'hD;
        i4 = 4'hA; i5 = 4'hB; i6 = 4'hC; i7 = 4'hD; sel = 3'b000; #30;

        i0 = 4'hB; i1 = 4'hC; i2 = 4'hD; i3 = 4'hE;
        i4 = 4'hB; i5 = 4'hC; i6 = 4'hD; i7 = 4'hE; sel = 3'b001; #30;

        i0 = 4'hC; i1 = 4'hD; i2 = 4'hE; i3 = 4'hF;
        i4 = 4'hC; i5 = 4'hD; i6 = 4'hE; i7 = 4'hF; sel = 3'b010; #30;

        i0 = 4'hD; i1 = 4'hE; i2 = 4'hF; i3 = 4'hA;
        i4 = 4'hD; i5 = 4'hE; i6 = 4'hF; i7 = 4'hA; sel = 3'b011; #30;

        i0 = 4'hE; i1 = 4'hF; i2 = 4'hA; i3 = 4'hB;
        i4 = 4'hE; i5 = 4'hF; i6 = 4'hA; i7 = 4'hB; sel = 3'b100; #30;

        i0 = 4'hF; i1 = 4'hA; i2 = 4'hB; i3 = 4'hC;
        i4 = 4'hF; i5 = 4'hA; i6 = 4'hB; i7 = 4'hC; sel = 3'b101; #30;

        i0 = 4'hA; i1 = 4'hB; i2 = 4'hC; i3 = 4'hD;
        i4 = 4'hA; i5 = 4'hB; i6 = 4'hC; i7 = 4'hD; sel = 3'b110; #30;

        i0 = 4'hB; i1 = 4'hC; i2 = 4'hD; i3 = 4'hE;
        i4 = 4'hB; i5 = 4'hC; i6 = 4'hD; i7 = 4'hE; sel = 3'b111; #30;
        $finish;
    end

endmodule
