module full_subtractor_b_if(
    input a,
    input b,
    input borrow_in,
    output reg d,
    output reg borrow_out
    );
    
    always @ (a or b or borrow_in) begin
        if(a==1'b0 && b==1'b0 && borrow_in==1'b0) begin
            d=1'b0; borrow_out=1'b0;
        end
        else if(a==1'b0 && b==1'b0 && borrow_in==1'b1) begin
            d=1'b1; borrow_out=1'b1;
        end
        else if(a==1'b0 && b==1'b1 && borrow_in==1'b0) begin
            d=1'b1; borrow_out=1'b1;
        end
        else if(a==1'b0 && b==1'b1 && borrow_in==1'b1) begin
            d=1'b0; borrow_out=1'b1;
        end
        else if(a==1'b1 && b==1'b0 && borrow_in==1'b0) begin
            d=1'b1; borrow_out=1'b0;
        end
        else if(a==1'b1 && b==1'b0 && borrow_in==1'b1) begin
            d=1'b0; borrow_out=1'b0;
        end
        else if(a==1'b1 && b==1'b1 && borrow_in==1'b0) begin
            d=1'b0; borrow_out=1'b0;
        end
        else if(a==1'b1 && b==1'b1 && borrow_in==1'b1) begin
            d=1'b1; borrow_out=1'b1;
        end
    end
        
endmodule
