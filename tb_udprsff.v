`include "udp_rsff.v"
module tb();

reg clk,preset,rst,r,s;
wire nstate;

udp_rsff u1(nstate,clk,preset,rst,r, s);

initial begin
	$display("Time CLK PRESET RESET   R   S   OUTPUT");
	$monitor(" %g    %b     %b      %b    %b   %b     %b",$time,clk,preset,rst,r,s,nstate);
	clk=0; 	rst=0; 	preset=0;
	#3 preset=1;
	#3 rst=1; r=0; s=0;
	#3 r=1;
	#3 s=1; 
	#3 r=0;
	#3 preset=0; s=0;
	#2 rst=0; $finish;
end

always
	#1 clk=!clk;

endmodule
