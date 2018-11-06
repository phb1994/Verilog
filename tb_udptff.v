`include "udp_tff.v"
module tb();

reg clk,preset,rst,t;
wire nstate;

udp_tff u1(nstate,clk,preset,rst,t);

initial begin
	$display("Time clk Preset Reset T   output");
	$monitor(" %g   %b     %b       %b    %b     %b",$time,clk,preset,rst,t,nstate);
	clk=0;	rst=0;	preset=0;
	#3 preset=1;
	#3 rst=1; t=0;
	#3 t=1;
	#3 preset=0; t=0;
	#5 rst=0; $finish;
end

always
	#1 clk=!clk;
endmodule
