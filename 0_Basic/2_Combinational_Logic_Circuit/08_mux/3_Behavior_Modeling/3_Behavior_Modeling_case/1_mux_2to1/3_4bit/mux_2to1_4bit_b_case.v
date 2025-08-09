module mux_2to1_4bit_b_case(
    input [3:0] a,
    input [3:0] b,
    input sel,
    output reg [3:0] out
    );
    
    always @(a or b or sel) begin
        case(sel)
            1 : out = a;
            0 : out = b;
            default : out = b;
        endcase
    end
    
endmodule

