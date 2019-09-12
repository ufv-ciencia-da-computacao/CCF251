module ex26_testbench;
  reg [3:0] a;
  wire [2:0] s;

  localparam period=20;

  add2_bits adder(a, s);

  initial begin
    $dumpfile("ex26.vcd");
    $dumpvars;
    
    $display("\n===========  Simulation output begins =====\n");
    $monitor(" MONITOR_1 At %0d ns A=2'b%b A=2'b%b S=3'b%b ", $time, a[3:2], a[1:0], s);
    
    a = 4'b0000;
    #period;

    a = 4'b0001;
    #period;

    a = 4'b0010;
    #period;
    
    a = 4'b0011;
    #period;
    
    $monitor(" MONITOR_2 At %0d ns A=2'b%b A=2'b%b S=3'b%b ", $time, a[3:2], a[1:0], s);

    a = 4'b0100;
    #period;

    a = 4'b0101;
    #period;

    a = 4'b0110;
    #period;

    a = 4'b0111;
    #period;

    $monitor(" MONITOR_3 At %0d ns A=2'b%b A=2'b%b S=3'b%b ", $time, a[3:2], a[1:0], s);

    a = 4'b1000;
    #period;

    a = 4'b1001;
    #period;

    a = 4'b1010;
    #period;

    a = 4'b1011;
    #period;

    $monitor(" MONITOR_4 At %0d ns A=2'b%b A=2'b%b S=3'b%b ", $time, a[3:2], a[1:0], s);

    a = 4'b1100;
    #period;

    a = 4'b1101;
    #period;

    a = 4'b1110;
    #period;

    a = 4'b1111;
    #period;

    $display("\n===========  Simulation output ends     =====\n");
	  $finish;
  
  end

endmodule