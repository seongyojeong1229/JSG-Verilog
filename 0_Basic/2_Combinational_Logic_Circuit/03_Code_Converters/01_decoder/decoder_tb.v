module decoder_tb;
	reg [2:0] i;
	reg en;
	wire [7:0] o;

	decoder DUT(
		.i(i),
		.en(en),
		.o(o)
	);

	initial begin
		i = 3'b000; en = 0; #50;

		i = 3'b001; en = 1; #20;
		i = 3'b010; en = 1; #20;
		i = 3'b100; en = 1; #20;
	
		i = 3'b001; en = 0; #15;
		i = 3'b010; en = 0; #15;
		i = 3'b100; en = 0; #15;

		i = 3'b000; en = 0; #50;
		$finish;
	end
endmodule
