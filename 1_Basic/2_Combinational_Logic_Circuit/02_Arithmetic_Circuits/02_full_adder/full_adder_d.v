module full_adder_d(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
    assign sum = a ^ b ^ cin;
    assign cout = a & b | (a ^ b) & cin;
        
endmodule
