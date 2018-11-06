primitive udp_rsff(output reg nstate, input clk,preset,rst,r,s);
	table 
		// clk preset rst r s pstate nstate
		    *    1     0  ? ?:   ?  :  0;
		    *    0     1  ? ?:   ?  :  1;
		    *    0     0  ? ?:   ?  :  x;
		    p    1     1  1 0:   ?  :  0;
		    p    1     1  0 0:   ?  :  -;
		    p    1     1  0 1:   ?  :  1;
		    p    1     1  1 1:   ?  :  x;
		    n    1     1  ? ?:   ?  :  -;
		    ?    1     1  * ?:   ?  :  -;
		    ?    1     1  ? *:   ?  :  -;

	endtable
endprimitive

