module comparator_d_tb;
    parameter MSB = 128;
    reg [MSB-1:0] a;
    reg [MSB-1:0] b;
    wire greater;
    wire less;
    wire equal;

    comparator_d #(
        .MSB(MSB)
    )DUT(
        .a(a),
        .b(b),
        .greater(greater),
        .less(less),
        .equal(equal)
    );

    initial begin
        a = {MSB{1'b0}}; b = {MSB{1'b0}}; #30; 
        a = {4'hA, {(MSB-4){1'b0}}}; b = {4'hD, {(MSB-4){1'b0}}}; #50;
        a = {4'hE, {(MSB-4){1'b0}}}; b = {4'hC, {(MSB-4){1'b0}}}; #50;
        a = {4'hD, {(MSB-4){1'b0}}}; b = {4'hF, {(MSB-4){1'b0}}}; #50;
        a = {MSB{1'b0}}; b = {MSB{1'b0}}; #30; 
        $finish;
    end

endmodule

