module dff_define (Q, clk, D,rstn);
  parameter WIDTH=32;

   output reg [WIDTH-1:0] Q;
   input  clk;
   input [WIDTH-1:0]  D;
	input rstn;
	
	always @(negedge clk or negedge rstn) begin

	if(~rstn ==1'b1) begin 
		Q<=0;
		end
	else Q<=D;

end


endmodule