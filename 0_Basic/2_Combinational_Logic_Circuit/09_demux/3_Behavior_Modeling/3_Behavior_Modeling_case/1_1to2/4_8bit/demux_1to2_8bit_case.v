module demux_case #(
    parameter width = 8,
    parameter snum = 1
)(
    input wire [width-1:0] i,
    input wire [snum-1:0] sel,
    output reg [width-1:0] o0, 
    output reg [width-1:0] o1
);

    always @(*) begin
        o0 = {width{1'b0}};
        o1 = {width{1'b0}};

        case(sel)
            1'b0: o0 = i;
            1'b1: o1 = i;
            default:    ;
        endcase 
    end

endmodule

