module full_adder_s(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
    wire s1, c1, c2;
    
    xor x1(s1,a,b);
    and a1(c1,a,b);
    xor x2(sum,s1,cin);
    and a2(c2,s1,cin);
    or(cout,c1,c2);
    
endmodule
