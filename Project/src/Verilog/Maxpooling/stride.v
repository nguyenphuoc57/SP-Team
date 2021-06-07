module stride #(parameter stride=2'd2, parameter WIDTH=10'd32)(clk, reset,enable,valid);

input clk,reset;
input enable;
output reg valid;
reg [9:0]c,r;  // column and row

//vi tri
always @(negedge clk) begin
	if(~reset) begin
		c=10'd0;
		r=10'd0;
		end 
	else if (enable) begin  
		c=c+10'd1;
			if (c==WIDTH) begin
				c=10'd0;
				r=r+10'd1;
				if(r==WIDTH) begin
					r=10'd0;
					c=10'd0;

					end 
				end 
		end 
	end 	
	
//check vi tri 
always @* begin
	if(enable) begin
			if((r%stride==0) & (c%stride==0)) begin
				valid=1;
			end 
			else valid=0;
			end
	else valid=0;

end 
endmodule 