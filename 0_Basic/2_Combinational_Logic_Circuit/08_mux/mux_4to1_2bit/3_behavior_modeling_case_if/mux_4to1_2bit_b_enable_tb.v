module mux_4to1_2bit_b_enable_tb;
    reg [1:0] a;
    reg [1:0] b;
    reg [1:0] c;
    reg [1:0] d;
    reg [1:0] sel;
    reg enable;
    wire [1:0] out;
    
    mux_4to1_2bit_b_enable DUT(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .enable(enable),
        .out(out)
    );
    
    initial begin
        a = 2'b00; b = 2'b01; c = 2'b10; d = 2'b11;
        sel = 2'b00; enable = 1;
        
        #10 sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;
        
        #10 enable = 0;
        #10 sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;
        
        #10 enable = 1;
        #10 sel = 2'b00;
        #10 $finish;
    end
endmodule

