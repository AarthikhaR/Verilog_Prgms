module encoder_8to3_tb;
reg [7:0] A;
wire [2:0] B;
encoder_8to3_str encoder(.A(A),.B(B));
initial begin
	$dumpfile("encoder_8to3.vcd");
	$dumpvars(1,encoder_8to3_tb);
end
initial begin
	A = 8'b00000001;
	#5 A = 8'b00000010;
	#5 A = 8'b00000100;
	#5 A = 8'b00001000;
	#5 A = 8'b00010000;
	#5 A = 8'b00100000;
	#5 A = 8'b01000000;
	#5 A = 8'b10000000;
	#5 $finish;
end
always @(B)
	$display("Time = %0t \t INPUT VALUES: A = %b \t OUTPUT VALUES: B = %b ",$time,A,B);
endmodule
