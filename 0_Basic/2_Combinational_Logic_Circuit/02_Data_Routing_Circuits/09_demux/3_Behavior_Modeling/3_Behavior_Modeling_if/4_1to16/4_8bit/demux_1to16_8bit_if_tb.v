module demux_if_tb;
    parameter width = 8;
    parameter snum = 4;
    reg [width-1:0] i;
    reg [snum-1:0] sel;
    wire [width-1:0] o0;
    wire [width-1:0] o1;
    wire [width-1:0] o2;
    wire [width-1:0] o3;
    wire [width-1:0] o4;
    wire [width-1:0] o5;
    wire [width-1:0] o6;
    wire [width-1:0] o7;
    wire [width-1:0] o8;
    wire [width-1:0] o9;
    wire [width-1:0] o10;
    wire [width-1:0] o11;
    wire [width-1:0] o12;
    wire [width-1:0] o13;
    wire [width-1:0] o14;
    wire [width-1:0] o15;

    demux_if #(
        .width(width),
        .snum(snum)
    )DUT(
        .i(i),
        .sel(sel),
        .o0(o0),
        .o1(o1),
        .o2(o2),
        .o3(o3),
        .o4(o4),
        .o5(o5),
        .o6(o6),
        .o7(o7),
        .o8(o8),
        .o9(o9),
        .o10(o10),
        .o11(o11),
        .o12(o12),
        .o13(o13),
        .o14(o14),
        .o15(o15)
    );

    initial begin
        i = {4'hA,{(width-4){1'b0}}}; sel = 4'b0000; #30;
        i = {4'hB,{(width-4){1'b0}}}; sel = 4'b0001; #30;
        i = {4'hC,{(width-4){1'b0}}}; sel = 4'b0010; #30;
        i = {4'hD,{(width-4){1'b0}}}; sel = 4'b0011; #30;
        i = {4'hE,{(width-4){1'b0}}}; sel = 4'b0100; #30;
        i = {4'hF,{(width-4){1'b0}}}; sel = 4'b0101; #30;
        i = {4'hA,{(width-4){1'b0}}}; sel = 4'b0110; #30;
        i = {4'hB,{(width-4){1'b0}}}; sel = 4'b0111; #30;
        i = {4'hA,{(width-4){1'b0}}}; sel = 4'b1000; #30;
        i = {4'hB,{(width-4){1'b0}}}; sel = 4'b1001; #30;
        i = {4'hC,{(width-4){1'b0}}}; sel = 4'b1010; #30;
        i = {4'hD,{(width-4){1'b0}}}; sel = 4'b1011; #30;
        i = {4'hE,{(width-4){1'b0}}}; sel = 4'b1100; #30;
        i = {4'hF,{(width-4){1'b0}}}; sel = 4'b1101; #30;
        i = {4'hA,{(width-4){1'b0}}}; sel = 4'b1110; #30;
        i = {4'hB,{(width-4){1'b0}}}; sel = 4'b1111; #30;
        $finish;
    end

endmodule
