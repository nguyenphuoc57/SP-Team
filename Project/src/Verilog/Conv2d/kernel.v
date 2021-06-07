//delay 9 clk

module kernel (clk, kernel_in, load_kernel_done, reset,k1,k2,k3,k4,k5,k6,k7,k8,k9);

input clk, reset;
input [31:0] kernel_in;
output reg load_kernel_done;
output [31:0] k1,k2,k3,k4,k5,k6,k7,k8,k9;


reg [31:0] in [8:0];
reg [3:0] i;


//write
always @(negedge clk) begin
	if(~reset) begin
		i=0;
		load_kernel_done=0;
	end
	else if (i<4'd9) begin
	in[i]=kernel_in;
	load_kernel_done=0;
	i=i+4'd1;
end
	if(i==4'd9) begin
	load_kernel_done=1;
	end


end


//read 
		assign k1=in[0];
		assign k2=in[1];
		assign k3=in[2];
		assign k4=in[3];
		assign k5=in[4];
		assign k6=in[5];
		assign k7=in[6];
		assign k8=in[7];
		assign k9=in[8];

endmodule 

