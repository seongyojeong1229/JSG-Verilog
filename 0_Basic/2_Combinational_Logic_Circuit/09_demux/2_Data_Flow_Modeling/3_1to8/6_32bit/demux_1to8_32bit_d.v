module demux_d #(
    parameter width = 32,
    parameter snum = 3
)(
    input wire [width-1:0] i,
    input wire [snum-1:0] sel,
    output [width-1:0] o0,
    output [width-1:0] o1,
    output [width-1:0] o2,
    output [width-1:0] o3,
    output [width-1:0] o4,
    output [width-1:0] o5,
    output [width-1:0] o6,
    output [width-1:0] o7
);

    assign o0 = (sel == 3'b000) ? i : {width{1'b0}};
    assign o1 = (sel == 3'b001) ? i : {width{1'b0}};
    assign o2 = (sel == 3'b010) ? i : {width{1'b0}};
    assign o3 = (sel == 3'b011) ? i : {width{1'b0}};
    assign o4 = (sel == 3'b100) ? i : {width{1'b0}};
    assign o5 = (sel == 3'b101) ? i : {width{1'b0}};
    assign o6 = (sel == 3'b110) ? i : {width{1'b0}};
    assign o7 = (sel == 3'b111) ? i : {width{1'b0}};
    
endmodule

