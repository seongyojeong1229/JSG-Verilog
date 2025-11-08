`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 06:12:04 PM
// Design Name: 
// Module Name: and_gate_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module and_gate_tb;
reg a;
reg b;
wire c;

and_gate DUT(
.a(a),
.b(b),
.c(c)
);

initial begin
a = 0; b = 0; #30;
a = 0; b = 1; #15;
a = 1; b = 0; #15;
a = 1; b = 1; #15;
a = 0; b = 0; #50;
$finish;
end

endmodule
