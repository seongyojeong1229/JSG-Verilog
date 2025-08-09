module mux_case #(
    parameter width = 4,
    parameter swidth = 2
)(
    input wire [width-1:0] i0,
    input wire [width-1:0] i1,
    input wire [width-1:0] i2,
    input wire [width-1:0] i3,
    input wire [swidth-1:0] sel,
    output reg [width-1:0] o
);

    always @(*) begin
        case(sel)
            2'b00: o = i0;
            2'b01: o = i1;
            2'b10: o = i2;
            2'b11: o = i3;
            default: o = 4'h0;
        endcase
    end

endmodule
