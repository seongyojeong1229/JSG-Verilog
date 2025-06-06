module truth_table_2_verilog_3inputs(
    input a,
    input b,
    input c,
    output Y
    );
    
    assign Y = (~a & ~b) | (~a & ~c) | (~b & ~c);
    
endmodule


