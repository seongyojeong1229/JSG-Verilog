module demux_1to2_1bit_d_tb;
    reg i;
    reg sel;
    wire o0;
    wire o1;
    
    demux_1to2_1bit_d DUT(
        .i(i),
        .sel(sel),
        .o0(o0),
        .o1(o1)
    );

    initial begin
        i = 0; sel = 0; #30;
        i = 1; sel = 0; #30;

        i = 0; sel = 1; #30;
        i = 1; sel = 1; #30;
        $finish;
    end

endmodule
