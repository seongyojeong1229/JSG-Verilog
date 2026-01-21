// 0. Define Timescale
`timescale 1ns / 1ps

module and_gate(
    // 1. Port Definitions
    input  a,    
    input  b,    
    output y     
    );

    // 2. Design Logic (Data-flow)
    assign y = a & b;
    
endmodule