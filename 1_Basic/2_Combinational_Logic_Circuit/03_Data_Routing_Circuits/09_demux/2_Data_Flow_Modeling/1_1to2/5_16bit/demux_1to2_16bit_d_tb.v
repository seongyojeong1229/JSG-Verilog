`timescale 1ns / 1ps
module demux_1to2_d_tb;
    parameter width = 16;
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
        i = {4'hA,{(width-4){1'b0}}}; sel = 1'b0; #30;
        i = {4'hB,{(width-4){1'b0}}}; sel = 1'b0; #30;
        i = {4'hC,{(width-4){1'b0}}}; sel = 1'b0; #30;
        i = {4'hD,{(width-4){1'b0}}}; sel = 1'b0; #30;
        
        i = {4'hA,{(width-4){1'b0}}}; sel = 1'b1; #30;
        i = {4'hB,{(width-4){1'b0}}}; sel = 1'b1; #30;
        i = {4'hC,{(width-4){1'b0}}}; sel = 1'b1; #30;
        i = {4'hD,{(width-4){1'b0}}}; sel = 1'b1; #30;
        $finish;
    end

endmodule
