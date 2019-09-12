module add2_bits(ABCD, XYZ);
  input [3:0] ABCD;
  output [2:0] XYZ;

  assign XYZ = ABCD[3:2] + ABCD[1:0];

endmodule