module demux_if #(
    parameter width = 8,
    parameter snum = 4
)(
    input wire [width-1:0] i,
    input wire [snum-1:0] sel,
    output reg [width-1:0] o0, 
    output reg [width-1:0] o1,
    output reg [width-1:0] o2,
    output reg [width-1:0] o3,
    output reg [width-1:0] o4,
    output reg [width-1:0] o5,
    output reg [width-1:0] o6,
    output reg [width-1:0] o7,
    output reg [width-1:0] o8, 
    output reg [width-1:0] o9,
    output reg [width-1:0] o10,
    output reg [width-1:0] o11,
    output reg [width-1:0] o12,
    output reg [width-1:0] o13,
    output reg [width-1:0] o14,
    output reg [width-1:0] o15
);

    always @(*) begin
        o0 = {width{1'b0}};
        o1 = {width{1'b0}};
        o2 = {width{1'b0}};
        o3 = {width{1'b0}};
        o4 = {width{1'b0}};
        o5 = {width{1'b0}};
        o6 = {width{1'b0}};
        o7 = {width{1'b0}};
        o8 = {width{1'b0}};
        o9 = {width{1'b0}};
        o10 = {width{1'b0}};
        o11 = {width{1'b0}};
        o12 = {width{1'b0}};
        o13 = {width{1'b0}};
        o14 = {width{1'b0}};
        o15 = {width{1'b0}};

        if(sel == 4'b0000)
            o0 = i;
        else if(sel == 4'b0001)
            o1 = i;
        else if(sel == 4'b0010)
            o2 = i;
        else if(sel == 4'b0011)
            o3 = i;
        else if(sel == 4'b0100)
            o4 = i;
        else if(sel == 4'b0101)
            o5 = i;
        else if(sel == 4'b0110)
            o6 = i;
        else if(sel == 4'b0111)
            o7 = i;
        else if(sel == 4'b1000)
            o8 = i;
        else if(sel == 4'b1001)
            o9 = i;
        else if(sel == 4'b1010)
            o10 = i;
        else if(sel == 4'b1011)
            o11 = i;
        else if(sel == 4'b1100)
            o12 = i;
        else if(sel == 4'b1101)
            o13 = i;
        else if(sel == 4'b1110)
            o14 = i;
        else if(sel == 4'b1111)
            o15 = i;
    end

endmodule
