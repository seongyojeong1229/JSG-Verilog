module demux_1to4_d_tb;
    parameter width = 4;
    reg [width-1:0] i;
    reg [1:0] sel;
    wire [width-1:0] o0;
    wire [width-1:0] o1;
    wire [width-1:0] o2;
    wire [width-1:0] o3;

    demux_1to4_d #(
        .width(width)
    )DUT(
        .i(i),
        .sel(sel),
        .o0(o0),
        .o1(o1),
        .o2(o2),
        .o3(o3)
    );

    initial begin
        i = 4'hA; sel = 2'b00; #30;
        i = 4'hB; sel = 2'b01; #30;
        i = 4'hC; sel = 2'b10; #30;
        i = 4'hD; sel = 2'b11; #30;
        $finish;
    end

endmodule
