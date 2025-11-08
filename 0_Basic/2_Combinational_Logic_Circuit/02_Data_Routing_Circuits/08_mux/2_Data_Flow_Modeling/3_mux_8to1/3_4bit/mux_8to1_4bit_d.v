module mux_d #(
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
    output [width-1:0] o
);

    assign o = (sel == 3'b000) ? i0 :
               (sel == 3'b001) ? i1 :
               (sel == 3'b010) ? i2 :
               (sel == 3'b011) ? i3 :
               (sel == 3'b100) ? i4 :
               (sel == 3'b101) ? i5 :
               (sel == 3'b110) ? i6 : i7;

endmodule 
