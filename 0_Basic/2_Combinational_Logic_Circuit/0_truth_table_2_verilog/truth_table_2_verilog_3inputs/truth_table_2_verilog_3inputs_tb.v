module truth_table_2_verilog_3inputs_tb;
    reg a;
    reg b;
    reg c;
    wire Y;
 
    truth_table_2_verilog_3inputs DUT(
        .a(a), 
        .b(b), 
        .c(c), 
        .Y(Y)
    );
 
    initial begin
        a = 0; b = 0; c = 0; #100;
        a = 0; b = 0; c = 1; #100;
        a = 0; b = 1; c = 0; #100;
        a = 0; b = 1; c = 1; #100;
        a = 1; b = 0; c = 0; #100;
        a = 1; b = 0; c = 1; #100;
        a = 1; b = 1; c = 0; #100;
        a = 1; b = 1; c = 1; #100;
        $finish;
    end
endmodule

