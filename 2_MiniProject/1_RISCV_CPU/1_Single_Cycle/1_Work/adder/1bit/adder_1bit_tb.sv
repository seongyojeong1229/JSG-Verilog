module adder_1bit_tb;
    logic a;
    logic b;
    logic cin;
    logic sum;
    logic cout;

    adder_1bit DUT(.*);

    initial begin
        a = 0; b = 0; cin = 0; #20;
        a = 0; b = 1; cin = 0; #20;
        a = 1; b = 0; cin = 0; #20;
        a = 1; b = 1; cin = 0; #20;

        a = 0; b = 0; cin = 1; #20;
        a = 0; b = 1; cin = 1; #20;
        a = 1; b = 0; cin = 1; #20;
        a = 1; b = 1; cin = 1; #20;

        a = 0; b = 0; cin = 0; #20;
    end

    initial begin
        $display("Time ns: a + b + cin");
        while($time != 200) begin
            $display("%t ns: %d + %d + %d | sum: %d c_out: %d", $time, a, b, cin, sum, cout);
        end
        $finish;
    end

    initial begin
        $dumpfile("adder_1bit.vcd");
        $dumpvars(0, adder_1bit_tb);
    end
endmodule