module ex30_testbench;
  reg [3:0] a;
  wire by2;
  wire by3;
  wire by6;

  localparam period=20;

  divide_by divide(a, by2, by3, by6);

  initial begin
    $dumpfile("ex30.vcd");
    $dumpvars;
    
    $display("\n===========  Simulation output begins =====\n");
    $monitor(" MONITOR_1 At %0d ns A=4'b%b By2=1'b%b By3=1'b%b By6=1'b%b", $time, a[3:0], by2, by3, by6);
    
    a = 4'b0000;
    #period;

    a = 4'b0001;
    #period;

    a = 4'b0010;
    #period;
    
    a = 4'b0011;
    #period;
    
    $monitor(" MONITOR_2 At %0d ns A=4'b%b By2=1'b%b By3=1'b%b By6=1'b%b", $time, a[3:0], by2, by3, by6);

    a = 4'b0100;
    #period;

    a = 4'b0101;
    #period;

    a = 4'b0110;
    #period;

    a = 4'b0111;
    #period;

    $monitor(" MONITOR_3 At %0d ns A=4'b%b By2=1'b%b By3=1'b%b By6=1'b%b", $time, a[3:0], by2, by3, by6);

    a = 4'b1000;
    #period;

    a = 4'b1001;
    #period;

    a = 4'b1010;
    #period;

    a = 4'b1011;
    #period;

    $monitor(" MONITOR_4 At %0d ns A=4'b%b By2=1'b%b By3=1'b%b By6=1'b%b", $time, a[3:0], by2, by3, by6);

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