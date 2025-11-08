module decoder (
	input wire [2:0] i,
	input wire en,
	output reg [7:0] o
);

	always @ (*) begin
		if(en) begin
			case (i)
				3'b000: o = 8'b0000_0001;
				3'b001: o = 8'b0000_0010;
				3'b010: o = 8'b0000_0100;
				3'b011: o = 8'b0000_1000;
				3'b100: o = 8'b0001_0000;
				3'b101: o = 8'b0010_0000;
				3'b110: o = 8'b0100_0000;
				3'b111: o = 8'b1000_0000;
				default: o = 8'b0000_0000;
			endcase
		end
		else begin
			o = 8'b0000_0000;
		end
	end
endmodule
