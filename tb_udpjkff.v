`include "udp_jkff.v"
module tb();

reg clk,preset,rst,j,k;
wire nstate;
udp_jkff u1(nstate,clk,preset,rst,j, k);

initial begin
	$display ("Time Clk Preset Reset J   K   Output");
	$monitor(" %g   %b       %b    %b   %b   %b    %b",$time,clk,preset,rst,j,k,nstate);
	clk=0;	rst=0; 	preset=0;
	#3 preset=1;
	#3 rst=1; j=0; k=0;
	#3 j=1;
	#3 k=1; 
	#3 j=0;
	#3 preset=0; ;j=0;
	#5 rst=0; $finish;
end

always
	#1 clk=!clk;

endmodule
