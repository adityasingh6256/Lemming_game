
`timescale 1ns/1ps
module tb_lemming;
   reg clk,areset,bump_left,bump_right,ground,dig;
  wire walk_left,walk_right,aaah,digging;
  lemming dut(clk,areset,bump_left,bump_right,ground,dig,walk_left,walk_right,aaah,digging);
  initial begin
     clk=0;areset=1;bump_left=0;bump_right=0;ground=1;dig=0;
  end
  always #4 clk=~clk;
  initial begin
    #2 areset=0;
    #7 bump_left=1;bump_right=0;ground=1;dig=0;
   #6 bump_left=0;bump_right=1;ground=1;dig=0;
     #4 bump_left=1;bump_right=1;ground=1;dig=0;
     #7 bump_left=0;bump_right=1;ground=1;dig=1;
     #7 bump_left=0;bump_right=0;ground=1;dig=0;
     #10 bump_left=0;bump_right=0;ground=0;dig=1;
     #190 ground=1;
    #14 areset=1;
    #5 areset=0;bump_left=0;bump_right=0;ground=1;dig=1;
     #9 bump_left=0;bump_right=0;ground=0;dig=1;
     #70 bump_left=0;bump_right=0;ground=1;dig=0;
     #1 bump_left=0;bump_right=0;ground=1;dig=0; #7 bump_left=0;bump_right=0;ground=1;dig=1; #5 bump_left=0;bump_right=0;ground=1;dig=0;
  end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  initial begin
    #500  $finish(); end
endmodule