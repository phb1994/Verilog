primitive udp_jkff(output reg nstate, input clk,preset,rst,j,k);
	table 
		// clk preset rst j k pstate nstate
		    *    1     0  ? ?:   ?  :  0;
		    *    0     1  ? ?:   ?  :  1;
		    *    0     0  ? ?:   ?  :  x;
		    p    1     1  1 0:   ?  :  1;
		    p    1     1  0 0:   ?  :  -;
		    p    1     1  0 1:   ?  :  0;
		    p    1     1  1 1:   0  :  1;
		    p    1     1  1 1:   1  :  0;
		    n    1     1  ? ?:   ?  :  -;
		    ?    1     1  * ?:   ?  :  -;
		    ?    1     1  ? *:   ?  :  -;
	endtable
endprimitive

