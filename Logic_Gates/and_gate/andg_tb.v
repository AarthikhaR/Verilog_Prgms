module andg_tb;
reg A,B;
wire Y;
andg and_gate(.A(A),.B(B),.Y(Y));
initial begin
	$dumpfile("andg.vcd");
	$dumpvars(1,andg_tb);
end
initial begin
	A=1'b0;B=1'b0;
	#2 A=1'b0;B=1'b1;
	#2 A=1'b1;B=1'b0;
	#2 A=1'b1;B=1'b1;
	#10 $finish;
end
always @(Y)
	$display("Time = %0t \t INPUT VALUES: \t A = %b \t B = %b \t OUTPUT VALUE: \t Y = %b",$time,A,B,Y);
endmodule
