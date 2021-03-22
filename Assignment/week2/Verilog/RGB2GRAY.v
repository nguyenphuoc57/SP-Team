module RGB2GRAY (R,G,B, Gray, clk,WE);
  input [31:0] R,G,B;
  output [31:0] Gray;
  input clk,WE;

wire [31:0] rGray;

//calculate
ALU ALU0(.R(R),
         .G(G),
         .B(B),
         .Gray(rGray)
         );    
 register Reg_ALU(.Da_In(rGray),
               .WS(WE),
               .Da_out(Gray),
               .clk(clk)
               );        
endmodule           