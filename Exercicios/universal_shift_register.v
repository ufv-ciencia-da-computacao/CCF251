module universal_shift_register(
	left_in, 
	left_shift, 
	right_shift,
	right_in,
	inputs,
	out,
	S1, S0, clear, clk);
	input inputs, left_in, right_in, S1, S0, clear, clk;
	output left_shift, out, right_shift;
	
	reg q;
	
	always @(posedge clk)
		begin
			if (clear == 1'b0)
				begin
					q <= 1'b0;
				end
			else 
				begin
					case ({S0, S1})
						2'b00:
							q <= q;
						2'b01:
							q <= right_in;
						2'b10:
							q <= left_in;
						2'b11:
							q <= inputs;
							
					endcase
				end
		end
		
	assign out = q;
	assign left_shift = q;
	assign right_shift = q;
	
endmodule