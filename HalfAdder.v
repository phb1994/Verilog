module half_adder(a,b,s,co);
input a,b;
output s, co;
wire an, bn, n1, n2;

not b1 (an,a);
not b2 (bn,b);
and b3 (n1,an,b);
and b4 (n2,bn,a);
or b5 (s, n1, n2);
and b6 (co,a,b);

endmodule
