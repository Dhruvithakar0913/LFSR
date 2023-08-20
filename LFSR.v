module LFSR_SA (out, clk, rst);

  output reg [31:0] out;
  input clk, rst;

  wire feedback;

  assign feedback = ~(out[31] ^ out[30]);

always @(posedge clk, posedge rst)
  begin
    if (rst)
      out = 32'b0;
    else
      out = {out[30:0],feedback};
  end
endmodule
