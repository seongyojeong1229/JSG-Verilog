module mux_2to1_d_tb;
    parameter width = 32;
    reg [width-1:0] a;
    reg [width-1:0] b;
    reg sel;
    wire [width-1:0] c;
    
    mux_2to1_d #(
        .width(width)
    )DUT(
        .a(a),
        .b(b),
        .sel(sel),
        .c(c)
    );

    initial begin
        a = {4'hA, {(width-4){1'b0}}}; b = {4'hB, {(width-4){1'b0}}}; sel = 1'b0; #30;
        a = {4'hB, {(width-4){1'b0}}}; b = {4'hC, {(width-4){1'b0}}}; sel = 1'b0; #30;
        a = {4'hC, {(width-4){1'b0}}}; b = {4'hD, {(width-4){1'b0}}}; sel = 1'b0; #30;
        a = {4'hD, {(width-4){1'b0}}}; b = {4'hE, {(width-4){1'b0}}}; sel = 1'b0; #30;
        a = {4'hE, {(width-4){1'b0}}}; b = {4'hF, {(width-4){1'b0}}}; sel = 1'b0; #30;

        a = {4'hA, {(width-4){1'b0}}}; b = {4'hB, {(width-4){1'b0}}}; sel = 1'b1; #30;
        a = {4'hB, {(width-4){1'b0}}}; b = {4'hC, {(width-4){1'b0}}}; sel = 1'b1; #30;
        a = {4'hC, {(width-4){1'b0}}}; b = {4'hD, {(width-4){1'b0}}}; sel = 1'b1; #30;
        a = {4'hD, {(width-4){1'b0}}}; b = {4'hE, {(width-4){1'b0}}}; sel = 1'b1; #30;
        a = {4'hE, {(width-4){1'b0}}}; b = {4'hF, {(width-4){1'b0}}}; sel = 1'b1; #30;
        $finish;
    end

endmodule
