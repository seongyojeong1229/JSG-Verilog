module mux_if #(
    parameter width = 4,
    parameter swidth = 3
)(
    input wire [width-1:0] i0,
    input wire [width-1:0] i1,
    input wire [width-1:0] i2,
    input wire [width-1:0] i3,
    input wire [width-1:0] i4,
    input wire [width-1:0] i5,
    input wire [width-1:0] i6,
    input wire [width-1:0] i7,
    input wire [swidth-1:0] sel,
    output reg [width-1:0] o
);

    always @(*) begin
        if(sel == 3'b000)
            o = i0;
        else if(sel == 3'b001)
            o = i1;
        else if(sel == 3'b010)
            o = i2;
        else if(sel == 3'b011)
            o = i3;
        else if(sel == 3'b100)
            o = i4;
        else if(sel == 3'b101)
            o = i5;
        else if(sel == 3'b110)
            o = i6;
        else
            o = i7;
    end

endmodule
