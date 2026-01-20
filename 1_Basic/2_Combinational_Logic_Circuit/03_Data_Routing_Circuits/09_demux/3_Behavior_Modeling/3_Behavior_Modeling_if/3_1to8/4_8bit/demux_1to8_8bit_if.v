module demux_if #(
    parameter width = 8,
    parameter snum = 3
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
    output reg [width-1:0] o7
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

        if(sel == 3'b000)
            o0 = i;
        else if(sel == 3'b001)
            o1 = i;
        else if(sel == 3'b010)
            o2 = i;
        else if(sel == 3'b011)
            o3 = i;
        else if(sel == 3'b100)
            o4 = i;
        else if(sel == 3'b101)
            o5 = i;
        else if(sel == 3'b110)
            o6 = i;
        else if(sel == 3'b111)
            o7 = i;
    end

endmodule
