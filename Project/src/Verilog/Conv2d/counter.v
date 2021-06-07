module counter #(parameter time_counter =10'd67)
						(clk,reset, lf_done,enable);

input clk, enable, reset;
output reg lf_done;

reg [9:0] i;

always @(negedge clk) begin
		if(~reset) begin
			i=10'd0;	
			lf_done=0;
		end
		else if (i < (time_counter-1)& enable) begin
			i=i+10'd1;
			lf_done=0;
			end
		else if (i==(time_counter-1) & enable) begin
			lf_done=1;
		end	
end
endmodule 