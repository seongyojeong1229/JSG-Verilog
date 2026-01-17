module full_adder_b_if(
    input a,
    input b,
    input cin,
    output reg sum,
    output reg cout
    );
    
    always @ (a, b, cin) begin
        if(a==b)
            sum = cin;
        else
            sum = ~cin;
        
        if(a==1)
            cout = b | cin;
        else
            cout = b & cin;        
    end
        
endmodule
