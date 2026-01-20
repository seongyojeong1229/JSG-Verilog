module mux_d #(
    parameter width = 4,
    parameter swidth = 4
)(
    input wire [width-1:0] i0,
    input wire [width-1:0] i1,
    input wire [width-1:0] i2,
    input wire [width-1:0] i3,
    input wire [width-1:0] i4,
    input wire [width-1:0] i5,
    input wire [width-1:0] i6,
    input wire [width-1:0] i7,
    input wire [width-1:0] i8,
    input wire [width-1:0] i9,
    input wire [width-1:0] i10,
    input wire [width-1:0] i11,
    input wire [width-1:0] i12,
    input wire [width-1:0] i13,
    input wire [width-1:0] i14,
    input wire [width-1:0] i15,
    input wire [swidth-1:0] sel,
    output [width-1:0] o
);

    assign o = (sel == 4'b0000) ? i0 :
               (sel == 4'b0001) ? i1 :
               (sel == 4'b0010) ? i2 :
               (sel == 4'b0011) ? i3 :
               (sel == 4'b0100) ? i4 :
               (sel == 4'b0101) ? i5 :
               (sel == 4'b0110) ? i6 : 
               (sel == 4'b0111) ? i7 :
               (sel == 4'b1000) ? i8 :
               (sel == 4'b1001) ? i9 :
               (sel == 4'b1010) ? i10 :
               (sel == 4'b1011) ? i11 :
               (sel == 4'b1100) ? i12 :
               (sel == 4'b1101) ? i13 :
               (sel == 4'b1110) ? i14 : i15;
endmodule
