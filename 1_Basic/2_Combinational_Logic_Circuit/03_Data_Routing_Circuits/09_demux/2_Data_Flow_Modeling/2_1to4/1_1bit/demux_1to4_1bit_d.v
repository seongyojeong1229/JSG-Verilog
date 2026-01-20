module demux_1to4_1bit_d(
    input wire i,
    input wire [1:0] sel,
    output o0,
    output o1,
    output o2,
    output o3
);

    assign o0 = (sel == 2'b00) ? i : 1'b0;
    assign o1 = (sel == 2'b01) ? i : 1'b0;
    assign o2 = (sel == 2'b10) ? i : 1'b0;
    assign o3 = (sel == 2'b11) ? i : 1'b0;

endmodule
