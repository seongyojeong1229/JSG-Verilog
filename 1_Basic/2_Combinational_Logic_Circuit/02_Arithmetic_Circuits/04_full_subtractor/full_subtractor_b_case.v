module full_subtractor_b_case(
    input a,
    input b,
    input borrow_in,
    output reg d,
    output reg borrow_out
    );
    
    always @(a, b, borrow_in) begin
        case ({a, b, borrow_in})
            3'b000 : begin
                d = 1'b0;
                borrow_out = 1'b0;
            end
            3'b001 : begin
                d = 1'b1;
                borrow_out = 1'b1;
            end
            3'b010 : begin
                d = 1'b1;
                borrow_out = 1'b1;
            end
            3'b011 : begin
                d = 1'b0;
                borrow_out = 1'b1;
            end
            3'b100 : begin
                d = 1'b1;
                borrow_out = 1'b0;
            end
            3'b101 : begin
                d = 1'b0;
                borrow_out = 1'b1;
            end
            3'b110 : begin
                d = 1'b0;
                borrow_out = 1'b0;
            end
            3'b111 : begin
                d = 1'b1;
                borrow_out = 1'b1;
            end
            default: begin
                d = 1'b0;
                borrow_out = 1'b0;
            end
        endcase
    end  
endmodule
