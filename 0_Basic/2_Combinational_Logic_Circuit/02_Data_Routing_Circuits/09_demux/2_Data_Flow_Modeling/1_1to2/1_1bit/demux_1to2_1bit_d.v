module demux_1to2_1bit_d(
    input wire i,
    input wire sel,
    output o0,
    output o1
);

    assign o0 = (sel == 1'b0) ? i : 1'b0;
    assign o1 = (sel == 1'b1) ? i : 1'b0;

endmodule

