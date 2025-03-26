module test_D_Flip_Flop;
  
  logic data_in, clk = 0;
  logic rst;
  logic data_out, not_data_out;
  
  D_Flip_Flop DUT(.*);
  
  always #10 clk = ~clk;
  
  logic data_out_test;
  
  always @(*) begin
    if   (clk == 1) data_out_test = data_in;
    else data_out_test = data_out_test;
  end
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0, test_D_Flip_Flop);
    
    
    
    for (int i = 0; i < 20; i++) begin
      data_in = $random;
      #2.5;
      //assert (data_out == data_out_test);
      $display("time=%0t,  data_in=%b,  data_out=%b,  not_data_out=%b,  clk=%b",
               $time, data_in, data_out, not_data_out, clk);
    end
    $finish;
    
  end
  
endmodule
  
