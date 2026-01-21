// 0. Define Timescale
`timescale 1ns / 1ps

module and_gate_tb;
    // 1. Testbench Signals
    reg a;
    reg b;
    wire y;
    
    // 2. Design Under Test (DUT) Instance
    and_gate DUT(
        .a(a),
        .b(b),
        .y(y)
    );

    // 3. Stimulus Generation
    initial begin
        // Debug results
        $timeformat(-9, 2, " ns", 10);
        $monitor("At time %t: a=%b, b=%b => y=%b", $time, a, b, y);
        
        // Stimulus based on Truth Table
        a = 1'b0; b = 1'b0; #50;
        a = 1'b0; b = 1'b1; #50;
        a = 1'b1; b = 1'b0; #50;
        a = 1'b1; b = 1'b1; #50;
        
        // Finishing Simulation
        $display("Simulation Finished!");
        $finish;
    end

    // Not Xilinx Vivado
    initial begin
        $dumpfile("and_gate_tb.vcd");
        $dumpvars(0, and_gate_tb);
    end
endmodule
