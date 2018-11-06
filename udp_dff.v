primitive udp_dff(output reg nstate, input clk,preset,rst,d);
	table 
		// clk preset rst d pstate nstate
		    *    1     0  ?:   ?  :  0;
		    *    0     1  ?:   ?  :  1;
		    *    0     0  ?:   ?  :  x;
		    p    1     1  1:   ?  :  1;
		    p    1     1  0:   ?  :  0;
		    n    1     1  ?:   ?  :  -;

	endtable
endprimitive

