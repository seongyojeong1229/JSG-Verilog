module mux_case #(
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
    output reg [width-1:0] o
);

    always @(*) begin
        case(sel)
            4'b0000: o = i0;
            4'b0001: o = i1;
            4'b0010: o = i2;
            4'b0011: o = i3;
            4'b0100: o = i4;
            4'b0101: o = i5;
            4'b0110: o = i6;
            4'b0111: o = i7;
            4'b1000: o = i8;
            4'b1001: o = i9;
            4'b1010: o = i10;
            4'b1011: o = i11;
            4'b1100: o = i12;
            4'b1101: o = i13;
            4'b1110: o = i14;
            4'b1111: o = i15;
            default: o = 4'h0;
        endcase
    end

endmodule
