module decoder_2to4_tb;
reg EN,A1,A0;
wire D3,D2,D1,D0;
decoder_2to4_bf  Decoder(.EN(EN),.A1(A1),.A0(A0),.D3(D3),.D2(D2),.D1(D1),.D0(D0));
initial begin 
	$dumpfile("decoder_2to4.vcd");
	$dumpvars(1,decoder_2to4_tb);
end
initial begin
	EN=1'b0;A1=1'bX;A0=1'bX;
	#5 EN=1'b1;A1=1'b0;A0=1'b0;
	#5 EN=1'b1;A1=1'b0;A0=1'b1;
	#5 EN=1'b1;A1=1'b1;A0=1'b0;
	#5 EN=1'b1;A1=1'b1;A0=1'b1;
	#5 $finish;
end
always @(D3,D2,D1,D0)
	$display("Time = %0t \t INPUT VALUES: \t EN = %b \t A1 = %b \t A0 = %b \t OUTPUT VALUES: \t D3 = %b D2 = %b D1 = %b D0 = %b ",$time,EN,A1,A0,D3,D2,D1,D0);
endmodule
