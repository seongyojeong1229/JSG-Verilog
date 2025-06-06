module mux_4to1_2bit_b_enable(
    input [1:0] a,
    input [1:0] b,
    input [1:0] c,
    input [1:0] d,
    input [1:0] sel,
    input enable,
    output reg [1:0] out
    );
    
    always @(a or b or c or d or sel or enable) begin
        if(!enable) begin
            case(sel)
                2'b00 : out = a;
                2'b01 : out = b;
                2'b10 : out = c;
                2'b11 : out = d;
                default : out = a;
            endcase
        end
        else
            out = 2'b00;
    end
    
endmodule

