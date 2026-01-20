module demux_1to2_d_tb;
    parameter width = 2;
    reg [width-1:0] i;
    reg sel;
    wire [width-1:0] o0;
    wire [width-1:0] o1;
    
    demux_1to2_d #(
        .width(width)
    )DUT(
        .i(i),
        .sel(sel),
        .o0(o0),
        .o1(o1)
    );

    initial begin
        i = 2'b00; sel = 0; #30;
        i = 2'b01; sel = 0; #30;
        i = 2'b10; sel = 0; #30;
        i = 2'b11; sel = 0; #30;

        i = 2'b00; sel = 1; #30;
        i = 2'b01; sel = 1; #30;
        i = 2'b10; sel = 1; #30;
        i = 2'b11; sel = 1; #30;
        $finish;
    end

endmodule
