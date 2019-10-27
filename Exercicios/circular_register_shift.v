module circular_register_shift (clk, Q1, Q2, Q3);
	input clk;
	
	output reg Q1, Q2, Q3;

	always @(posedge clk)
		begin
			Q1 <= Q3;
			Q2 <= Q1;
			Q3 <= Q2;
		end
	
endmodule