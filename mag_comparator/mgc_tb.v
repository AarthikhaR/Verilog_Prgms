module mgc_tb;
reg [3:0] A,B;
wire AeqB,AgtB,AltB;
mgc mag_comp(.A(A),.B(B),.AeqB(AeqB),.AgtB(AgtB),.AltB(AltB));
initial begin
	$dumpfile("mag_comp.vcd");
	$dumpvars(1,mgc_tb);
end

initial begin
	A = 4'b0000;B = 4'b0000;
	#5 A = $random %16; B = $random %16;
	#5 $finish;
end
always @(AeqB,AgtB,AltB)
	$display("Time = %0t \t INPUT VALUES: A = %b B = %b \t OUTPUT VALUES: AeqB = %b AgtB = %b AltB = %b ",$time,A,B,AeqB,AgtB,AltB);
endmodule
