// 0. Define Timescale
`timescale 1ns / 1ps

module not_gate_tb;
    // 1. Testbench Signals
    reg a;
    wire y;

    // 2. Design Under Test (DUT) Instance
    not_gate DUT(
        .a(a),
        .y(y)
    );

    // 3. Stimulus Generation
    initial begin
        // Debug results
        $timeformat(-9, 2, " ns", 10);
        $monitor("At time %t: a=%b => y=%b", $time, a, y);

        // Stimulus based on Truth Table
        a = 1'b0; #50;
        a = 1'b1; #50;
        a = 1'b0; #50;
        a = 1'b1; #50;
        
        // Finishing Simulation
        $display("Simulation Finished!");
        $finish;
    end

    // Not Xilinx Vivado
    initial begin
        $dumpfile("not_gate_tb.vcd");
        $dumpvars(0, not_gate_tb);
    end
endmodule