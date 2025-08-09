module demux_1to4_1bit_d_tb;
    reg i;
    reg [1:0] sel;
    wire o0;
    wire o1;
    wire o2;
    wire o3;

    demux_1to4_1bit_d DUT(
        .i(i),
        .sel(sel),
        .o0(o0),
        .o1(o1),
        .o2(o2),
        .o3(o3)
    );

    initial begin
        i = 1; sel = 2'b00; #30;
        i = 1; sel = 2'b01; #30;
        i = 1; sel = 2'b10; #30;
        i = 1; sel = 2'b11; #30;
        $finish;
    end

endmodule
