module mux4_1 (A[3:0], sel[1:0], Z);
	input [3:0] A;
	input [1:0] sel;
	
	output reg Z;
	
	always @(sel)
		begin
			case({sel})
				2'b00: Z <= A[0];
				2'b01: Z <= A[1];
				2'b10: Z <= A[2];
				2'b11: Z <= A[3];
			endcase
		end
endmodule