module demux_d_tb;
    parameter width = 32;
    parameter snum = 3;
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

    demux_d #(
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
        .o7(o7)
    );

    initial begin
        i = {4'hA,{(width-4){1'b0}}}; sel = 3'b000; #30;
        i = {4'hB,{(width-4){1'b0}}}; sel = 3'b001; #30;
        i = {4'hC,{(width-4){1'b0}}}; sel = 3'b010; #30;
        i = {4'hD,{(width-4){1'b0}}}; sel = 3'b011; #30;
        i = {4'hE,{(width-4){1'b0}}}; sel = 3'b100; #30;
        i = {4'hF,{(width-4){1'b0}}}; sel = 3'b101; #30;
        i = {4'hA,{(width-4){1'b0}}}; sel = 3'b110; #30;
        i = {4'hB,{(width-4){1'b0}}}; sel = 3'b111; #30;
        $finish;
    end

endmodule
