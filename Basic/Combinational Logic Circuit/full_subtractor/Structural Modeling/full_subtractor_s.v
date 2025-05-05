module full_subtractor_s(
    input a,
    input b,
    input borrow_in,
    output d,
    output borrow_out
    );
    
    wire s1, c1, c2;
    
    xor x1(s1,a,b);
    and a1(c1,a,~b);
    xor x2(d,s1,borrow_in);
    and a2(c2,~s1,borrow_in);
    or(borrow_out,c1,c2);
    
endmodule
