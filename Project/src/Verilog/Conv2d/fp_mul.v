module fp_mul (A,B,C,enable,clk);
input [31:0] A,B;
input enable,clk;

output reg [31:0] C;
 reg [47:0] C1;
 reg [23:0] manA,manB;
always @(posedge clk) begin
  if(!enable) begin

  end
 else  if(enable) begin
		if(A==32'd0 && B==32'd0) begin
		C=32'd0;
		end
		
		else begin
		C[31] = (A[31]-B[31]==0)?1'b0:1'b1;  //bit dau
		
		C[30:23] = A[30:23] + B[30:23] - 8'd127; //exponent
		
		
		manA= {1'd1,A[22:0]};				//mantassis
		manB={1'd1,B[22:0]};
		C1 = manA * manB;
	
					if (C1[47]==1'b1)begin		//normalize
						C[30:23]=C[30:23]+8'd1;
						C[22:0] =C1[46:24];
						end
					else if (C1[46]==1'b1) begin		
					C[22:0] = C1[45:23];
						end
			end
		end
end
endmodule 