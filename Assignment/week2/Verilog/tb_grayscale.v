`timescale 1ns/1ps
module tb_rgb2grayscale ();
  
  reg [31:0] R,G,B;
  wire [31:0] Gray;
  parameter cycle=1;
  integer inR,inG,inB,outGray;
  reg WE, clk;
  reg [31:0] i;
  RGB2GRAY RGB2GRAY(  .R(R),
                      .G(G),
                      .B(B), 
                      .Gray(Gray), 
                      .clk(clk),
                      .WE(WE)
                      );

initial begin 
    
    //open file 
    inR=$fopen("redfloating.txt","r");
    inG=$fopen("greenfloating.txt","r");
    inB=$fopen("bluefloating.txt","r");
    outGray=$fopen("outGray.txt","w");
    
    WE=1'b0;
    clk=1'b1;
     #1 
     WE='b1;
       //read in_file get input into RGB2GRAY
    for(i=0;i<=250000;i=i+1) begin
      $fscanf(inR,"%b\n",R); 
      $fscanf(inG,"%b\n",G); 
      $fscanf(inB,"%b\n",B);  
     if(Gray!= 8'hx) begin $fwrite(outGray,"%b\n",Gray); end 
      #2
      if(i==250000) begin $stop; end
    end
$fclose(inR);
$fclose(inG);
$fclose(inB);  
$fclose(outGray);  
end
//always @(posedge clk) begin
//  if(Gray!= 8'hx) begin  end
//end
always #cycle clk=~clk;
endmodule 