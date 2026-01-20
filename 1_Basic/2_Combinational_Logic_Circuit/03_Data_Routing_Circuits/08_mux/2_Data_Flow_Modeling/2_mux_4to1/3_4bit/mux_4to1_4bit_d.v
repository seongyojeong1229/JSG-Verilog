module mux_d #(
    parameter width = 4,
    parameter swidth = 2
)(
    input wire [width-1:0] i0,
    input wire [width-1:0] i1,
    input wire [width-1:0] i2,
    input wire [width-1:0] i3,
    input wire [swidth-1:0] sel,
    output [width-1:0] o
);

    assign o = (sel == 2'b00) ? i0 :
               (sel == 2'b01) ? i1 :
               (sel == 2'b10) ? i2 :
               (sel == 2'b11) ? i3 : i4;

endmodule
