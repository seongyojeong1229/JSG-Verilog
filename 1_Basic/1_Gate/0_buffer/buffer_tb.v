// 0. Define Timescale
`timescale 1ns / 1ps

module buffer_d_tb;
    // 1. Testbench Signals
    reg a;
    wire b;
    
    // 2. Design Under Test (DUT) Instance
    buffer_m DUT(
        .a(a),
        .b(b)
    );
    
    // 3. Stimulus Generation
    initial begin
        // Debug results
        $timeformat(-9, 2, " ns", 10);
        $monitor("At time %t: a=%b => y=%b", $time, a, y);
        
        // Stimulus based on Truth Table
        a = 0; #20;
        a = 1; #20;
        a = 0; #20;
        a = 1; #20;
        
        // Finishing Simulation
        $display("Simulation Finished!");
        $finish;
    end
    
    // Not Xilinx Vivado
    initial begin
        $dumpfile("buffer_tb.vcd");
        $dumpvars(0, buffer_tb);
    end
endmodule