// 0. Define Timescale
`timescale 1ns / 1ps

module not_gate(
    // 1. Port Definitions
    input  a,    
    output y     
    );

    // 2. Design Logic (Data-flow)
    assign y = ~a;
    
endmodule