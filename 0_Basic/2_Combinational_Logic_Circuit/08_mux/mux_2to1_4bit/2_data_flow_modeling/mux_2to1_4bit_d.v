module mux_2to1_4bit_d(
    input [3:0] a,
    input [3:0] b,
    input sel,
    output [3:0] out
    );
    
    assign out = (sel ? a : b);

endmodule

