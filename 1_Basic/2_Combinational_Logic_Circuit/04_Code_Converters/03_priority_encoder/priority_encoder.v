module priority_encoder (
	input wire [7:0] i,
	input wire en,
	output reg [2:0] o,
	output reg v
);

	always @ (*) begin
		if (en) begin
			casex (i)
				8'b1XXX_XXXX: begin
					o = 3'b111;
					v = 1;
				end
				8'b01XX_XXXX: begin
					o = 3'b110;
					v = 1;
				end
				8'b001X_XXXX: begin
					o = 3'b101;
					v = 1;
				end
				8'b0001_XXXX: begin
					o = 3'b100;
					v = 1;
				end
				8'b0000_1XXX: begin
					o = 3'b011;
					v = 1;
				end
				8'b0000_01XX: begin
					o = 3'b010;
					v = 1;
				end
				8'b0000_001X: begin
					o = 3'b001;
					v = 1;
				end
				8'b0000_0001: begin
					o = 3'b000;
					v = 1;
				end
				default: begin
					o = 3'b000;
					v = 0;
				end
			endcase
		end
		else begin
			o = 3'b000;
			v = 0;
		end
	end
endmodule
