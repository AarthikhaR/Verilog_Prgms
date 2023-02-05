module or_g_tb;
reg A,B;
wire Y;
or_g or_gate ( .A(A),.B(B),.Y(Y));
initial begin
	$dumpfile("or_g.vcd");
	$dumpvars(1,or_g_tb);
end
initial begin
	A = 1'b0;B=1'b0;
	#5 A = 1'b0;B=1'b1;
	#5 A = 1'b1;B=1'b0;
	#5 A = 1'b1;B=1'b1;
	#5 $finish;
end
always @(Y)
	$display("Time=%0t \t INPUT VALUES: \t A = %b \t B = %b \t OUTPUT VALUES: \t Y = %b",$time,A,B,Y);
endmodule
