module demux_case_tb;
    parameter width = 8;
    parameter snum = 1;
    reg [width-1:0] i;
    reg [snum-1:0] sel;
    wire [width-1:0] o0;
    wire [width-1:0] o1;

    demux_case #(
        .width(width),
        .snum(snum)
    )DUT(
        .i(i),
        .sel(sel),
        .o0(o0),
        .o1(o1)
    );

    initial begin
        i = {4'hA,{(width-4){1'b0}}}; sel = 1'b0; #30;
        i = {4'hB,{(width-4){1'b0}}}; sel = 1'b1; #30;
        $finish;
    end

endmodule
