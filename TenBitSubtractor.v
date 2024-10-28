module SubtractOne(
	input wire [9:0] A,
	output wire [9:0] C
);

	assign C = A - 10'b0000000001;

endmodule