module full_adder_b(
    input a,
    input b,
    input cin,
    output reg sum,
    output reg cout
    );
    
    always @ (a, b, cin) begin
        sum = a ^ b ^ cin;
        cout = a&b | (a^b) & cin;
    end
        
endmodule
