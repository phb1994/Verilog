`timescale 1ns/10ps
module clock;
	initial begin
	reg clock;
        clock	=0;
	forever
		clock = #500 !clock;
	end;
endmodule
