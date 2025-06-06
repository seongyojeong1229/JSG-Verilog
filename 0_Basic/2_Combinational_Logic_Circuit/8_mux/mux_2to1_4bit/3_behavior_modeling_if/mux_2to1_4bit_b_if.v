module mux_2to1_4bit_b_if(
    input [3:0] a,
    input [3:0] b,
    input sel,
    output reg [3:0] out
    );
    
    always @(a or b or sel) begin
        if(sel) 
            out = a;
        else    
            out = b;
    end
    
endmodule
