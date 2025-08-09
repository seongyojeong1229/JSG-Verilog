module demux_1to4_d #(parameter width = 8)(
    input wire [width-1:0] i,
    input wire [1:0] sel,
    output [width-1:0] o0,
    output [width-1:0] o1,
    output [width-1:0] o2,
    output [width-1:0] o3
);

    assign o0 = (sel == 2'b00) ? i : 1'b0;
    assign o1 = (sel == 2'b01) ? i : 1'b0;
    assign o2 = (sel == 2'b10) ? i : 1'b0;
    assign o3 = (sel == 2'b11) ? i : 1'b0;

endmodule
