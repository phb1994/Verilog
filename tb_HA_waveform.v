module testbench();

reg a, b;
wire s, co;

half_adder ha (a, b, s, co);

initial begin
        $monitor("a:%b b:%b s:%b co:%b @ %0t",a,b,s,co,$time);
end

initial begin
a = 0;
b = 0;
#5;
a = 1;
b = 0;
#5;
a = 1;
b = 1;
#5;
a = 0;
b = 1;
#5;
$finish;
end

initial begin
	$dumpvars(0, testbench);
	$dumpfile("testbench_wave.vcd");
end

endmodule
