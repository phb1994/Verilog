primitive udp_tff(output reg nstate, input clk,preset,rst,t);
	table 
		// clk preset rst t pstate nstate
		    *    1     0  ?:   ?  :  0;
		    *    0     1  ?:   ?  :  1;
		    *    0     0  ?:   ?  :  x;
		    p    1     1  1:   ?  :  0;
		    p    1     1  0:   ?  :  1;
		    n    1     1  ?:   ?  :  -;

	endtable
endprimitive

