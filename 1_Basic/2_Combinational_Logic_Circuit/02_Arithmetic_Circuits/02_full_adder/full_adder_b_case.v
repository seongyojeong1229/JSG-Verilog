module full_adder_b_case(
    input a,
    input b,
    input cin,
    output reg sum,
    output reg cout
    );
    
    always @(a, b, cin) begin
        case ({a, b, cin})
            3'b000 : begin
                sum = 1'b0;
                cout = 1'b0;
            end
            3'b001 : begin
                sum = 1'b1;
                cout = 1'b0;
            end
            3'b010 : begin
                sum = 1'b1;
                cout = 1'b0;
            end
            3'b011 : begin
                sum = 1'b0;
                cout = 1'b1;
            end
            3'b100 : begin
                sum = 1'b1;
                cout = 1'b0;
            end
            3'b101 : begin
                sum = 1'b0;
                cout = 1'b1;
            end
            3'b110 : begin
                sum = 1'b0;
                cout = 1'b1;
            end
            3'b111 : begin
                sum = 1'b1;
                cout = 1'b1;
            end
            default: begin
                sum = 1'b0;
                cout = 1'b0;
            end
        endcase
    end  
endmodule
