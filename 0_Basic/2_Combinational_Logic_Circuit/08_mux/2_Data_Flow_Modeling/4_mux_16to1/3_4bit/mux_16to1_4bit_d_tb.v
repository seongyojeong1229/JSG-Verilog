module mux_d_tb;
    parameter width = 4;
    parameter swidth = 4;
    reg [width-1:0] i0;
    reg [width-1:0] i1;
    reg [width-1:0] i2;
    reg [width-1:0] i3;
    reg [width-1:0] i4;
    reg [width-1:0] i5;
    reg [width-1:0] i6;
    reg [width-1:0] i7;
    reg [width-1:0] i8;
    reg [width-1:0] i9;
    reg [width-1:0] i10;
    reg [width-1:0] i11;
    reg [width-1:0] i12;
    reg [width-1:0] i13;
    reg [width-1:0] i14;
    reg [width-1:0] i15;
    reg [swidth-1:0] sel;
    wire [width-1:0] o;
    
    mux_d #(
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
        .i8(i8),
        .i9(i9),
        .i10(i10),
        .i11(i11),
        .i12(i12),
        .i13(i13),
        .i14(i14),
        .i15(i15),
        .sel(sel),
        .o(o)
    );

    initial begin
        i0 = 4'hA; i1 = 4'hB; i2 = 4'hC; i3 = 4'hD;
        i4 = 4'hA; i5 = 4'hB; i6 = 4'hC; i7 = 4'hD;
        i8 = 4'hA; i9 = 4'hB; i10 = 4'hC; i11 = 4'hD;
        i12 = 4'hA; i13 = 4'hB; i14 = 4'hC; i15 = 4'hD; sel = 4'b0000; #30;

        i0 = 4'hB; i1 = 4'hC; i2 = 4'hD; i3 = 4'hE;
        i4 = 4'hB; i5 = 4'hC; i6 = 4'hD; i7 = 4'hE;
        i8 = 4'hB; i9 = 4'hC; i10 = 4'hD; i11 = 4'hE;
        i12 = 4'hB; i13 = 4'hC; i14 = 4'hD; i15 = 4'hE; sel = 4'b0001; #30;

        i0 = 4'hC; i1 = 4'hD; i2 = 4'hE; i3 = 4'hF;
        i4 = 4'hC; i5 = 4'hD; i6 = 4'hE; i7 = 4'hF;
        i8 = 4'hC; i9 = 4'hD; i10 = 4'hE; i11 = 4'hF;
        i12 = 4'hC; i13 = 4'hD; i14 = 4'hE; i15 = 4'hF; sel = 4'b0010; #30;

        i0 = 4'hD; i1 = 4'hE; i2 = 4'hF; i3 = 4'hA;
        i4 = 4'hD; i5 = 4'hE; i6 = 4'hF; i7 = 4'hA;
        i8 = 4'hD; i9 = 4'hE; i10 = 4'hF; i11 = 4'hA;
        i12 = 4'hD; i13 = 4'hE; i14 = 4'hF; i15 = 4'hA; sel = 4'b0011; #30;

        i0 = 4'hE; i1 = 4'hF; i2 = 4'hA; i3 = 4'hB;
        i4 = 4'hE; i5 = 4'hF; i6 = 4'hA; i7 = 4'hB;
        i8 = 4'hE; i9 = 4'hF; i10 = 4'hA; i11 = 4'hB;
        i12 = 4'hE; i13 = 4'hF; i14 = 4'hA; i15 = 4'hB; sel = 4'b0100; #30;

        i0 = 4'hF; i1 = 4'hA; i2 = 4'hB; i3 = 4'hC;
        i4 = 4'hF; i5 = 4'hA; i6 = 4'hB; i7 = 4'hC;
        i8 = 4'hF; i9 = 4'hA; i10 = 4'hB; i11 = 4'hC;
        i12 = 4'hF; i13 = 4'hA; i14 = 4'hB; i15 = 4'hC; sel = 4'b0101; #30;

        i0 = 4'hA; i1 = 4'hB; i2 = 4'hC; i3 = 4'hD;
        i4 = 4'hA; i5 = 4'hB; i6 = 4'hC; i7 = 4'hD;
        i8 = 4'hA; i9 = 4'hB; i10 = 4'hC; i11 = 4'hD;
        i12 = 4'hA; i13 = 4'hB; i14 = 4'hC; i15 = 4'hD; sel = 4'b0110; #30;

        i0 = 4'hB; i1 = 4'hC; i2 = 4'hD; i3 = 4'hE;
        i4 = 4'hB; i5 = 4'hC; i6 = 4'hD; i7 = 4'hE;
        i8 = 4'hB; i9 = 4'hC; i10 = 4'hD; i11 = 4'hE;
        i12 = 4'hB; i13 = 4'hC; i14 = 4'hD; i15 = 4'hE; sel = 4'b0111; #30;

        i0 = 4'hC; i1 = 4'hD; i2 = 4'hE; i3 = 4'hF;
        i4 = 4'hC; i5 = 4'hD; i6 = 4'hE; i7 = 4'hF;
        i8 = 4'hC; i9 = 4'hD; i10 = 4'hE; i11 = 4'hF;
        i12 = 4'hC; i13 = 4'hD; i14 = 4'hE; i15 = 4'hF; sel = 4'b1000; #30;

        i0 = 4'hD; i1 = 4'hE; i2 = 4'hF; i3 = 4'hA;
        i4 = 4'hD; i5 = 4'hE; i6 = 4'hF; i7 = 4'hA;
        i8 = 4'hD; i9 = 4'hE; i10 = 4'hF; i11 = 4'hA;
        i12 = 4'hD; i13 = 4'hE; i14 = 4'hF; i15 = 4'hA; sel = 4'b1001; #30;

        i0 = 4'hE; i1 = 4'hF; i2 = 4'hA; i3 = 4'hB;
        i4 = 4'hE; i5 = 4'hF; i6 = 4'hA; i7 = 4'hB;
        i8 = 4'hE; i9 = 4'hF; i10 = 4'hA; i11 = 4'hB;
        i12 = 4'hE; i13 = 4'hF; i14 = 4'hA; i15 = 4'hB; sel = 4'b1010; #30;

        i0 = 4'hF; i1 = 4'hA; i2 = 4'hB; i3 = 4'hC;
        i4 = 4'hF; i5 = 4'hA; i6 = 4'hB; i7 = 4'hC;
        i8 = 4'hF; i9 = 4'hA; i10 = 4'hB; i11 = 4'hC;
        i12 = 4'hF; i13 = 4'hA; i14 = 4'hB; i15 = 4'hC; sel = 4'b1011; #30;

        i0 = 4'hA; i1 = 4'hB; i2 = 4'hC; i3 = 4'hD;
        i4 = 4'hA; i5 = 4'hB; i6 = 4'hC; i7 = 4'hD;
        i8 = 4'hA; i9 = 4'hB; i10 = 4'hC; i11 = 4'hD;
        i12 = 4'hA; i13 = 4'hB; i14 = 4'hC; i15 = 4'hD; sel = 4'b1100; #30;

        i0 = 4'hB; i1 = 4'hC; i2 = 4'hD; i3 = 4'hE;
        i4 = 4'hB; i5 = 4'hC; i6 = 4'hD; i7 = 4'hE;
        i8 = 4'hB; i9 = 4'hC; i10 = 4'hD; i11 = 4'hE;
        i12 = 4'hB; i13 = 4'hC; i14 = 4'hD; i15 = 4'hE; sel = 4'b1101; #30;

        i0 = 4'hC; i1 = 4'hD; i2 = 4'hE; i3 = 4'hF;
        i4 = 4'hC; i5 = 4'hD; i6 = 4'hE; i7 = 4'hF;
        i8 = 4'hC; i9 = 4'hD; i10 = 4'hE; i11 = 4'hF;
        i12 = 4'hC; i13 = 4'hD; i14 = 4'hE; i15 = 4'hF; sel = 4'b1110; #30;

        i0 = 4'hD; i1 = 4'hE; i2 = 4'hF; i3 = 4'hA;
        i4 = 4'hD; i5 = 4'hE; i6 = 4'hF; i7 = 4'hA;
        i8 = 4'hD; i9 = 4'hE; i10 = 4'hF; i11 = 4'hA;
        i12 = 4'hD; i13 = 4'hE; i14 = 4'hF; i15 = 4'hA; sel = 4'b1111; #30;
        $finish;
    end

endmodule
