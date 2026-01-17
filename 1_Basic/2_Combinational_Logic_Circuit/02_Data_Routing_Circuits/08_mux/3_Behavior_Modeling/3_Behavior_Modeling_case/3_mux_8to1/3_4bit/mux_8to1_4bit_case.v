module mux_case #(
    parameter width = 4,
    parameter swidth = 3
)(
    input wire [width-1:0] i0,
    input wire [width-1:0] i1,
    input wire [width-1:0] i2,
    input wire [width-1:0] i3,
    input wire [width-1:0] i4,
    input wire [width-1:0] i5,
    input wire [width-1:0] i6,
    input wire [width-1:0] i7,
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
            default: o = 4'h0;
        endcase
    end

endmodule
