`include "udp_dff.v"
module tb();

reg clk,preset,rst,d;
wire nstate;

udp_dff u1(nstate,clk,preset,rst,d);

initial begin
	$display ("Time Clk Preset Reset   D    Output");
	$monitor(" %g   %b    %b      %b        %b         %b",$time,clk,preset,rst,d,nstate);
	clk=0;	rst=0;	preset=0;
	#3 preset=1;
	#3 rst=1; d=0;
	#3 d=1;
	#3 preset=0; d=0;
	#5 rst=0; $finish;
end

always
	#1 clk=!clk;
endmodule

