module demux_case #(
    parameter width = 8,
    parameter snum = 2
)(
    input wire [width-1:0] i,
    input wire [snum-1:0] sel,
    output reg [width-1:0] o0, 
    output reg [width-1:0] o1,
    output reg [width-1:0] o2,
    output reg [width-1:0] o3
);

    always @(*) begin
        o0 = {width{1'b0}};
        o1 = {width{1'b0}};
        o2 = {width{1'b0}};
        o3 = {width{1'b0}};

        case(sel)
            2'b00: o0 = i;
            2'b01: o1 = i;
            2'b10: o2 = i;
            2'b11: o3 = i;
            default:     ;
        endcase 
    end

endmodule
