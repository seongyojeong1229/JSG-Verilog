module priority_encoder_tb;
	reg [7:0] i;
	reg en;
	wire [2:0] o;
	wire v;

	priority_encoder DUT(
		.i(i),
		.en(en),
		.o(o),
		.v(v)
	);

	initial begin
		i = 8'b0000_0000; en = 0; #50;

		i = 8'b1000_0000; en = 1; #20;
		i = 8'b0100_0100; en = 1; #20;
		i = 8'b0011_0111; en = 1; #20;

		i = 8'b1000_0000; en = 0; #20;
		i = 8'b0100_0100; en = 0; #20;
		i = 8'b0011_0111; en = 0; #20;

		i = 8'b0000_0000; en = 0; #50;
		$finish;
	end
endmodule
