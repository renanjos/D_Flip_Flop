module D_Flip_Flop(
  input  logic data_in,  clk,
  input  logic rst,
  output logic data_out, not_data_out
  );
  
  
  always_ff @(posedge clk) begin
    
    if (!rst) data_out <= 0;
    
    else begin
    
    data_out <= data_in;
    not_data_out <= ~data_in;
      
    end
    
  end
  
endmodule
