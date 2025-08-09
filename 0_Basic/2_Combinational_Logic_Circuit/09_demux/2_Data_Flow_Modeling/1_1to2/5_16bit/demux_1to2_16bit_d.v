module demux_1to2_d #(parameter width = 16)(
    input wire [width-1:0] i,
    input wire sel,
    output [width-1:0] o0,
    output [width-1:0] o1
);

    assign o0 = (sel == 1'b0) ? i : {width{1'b0}};
    assign o1 = (sel == 1'b1) ? i : {width{1'b0}};

endmodule
