module decoder_3to8_tb;
reg [2:0]I;
wire [7:0]O;
decoder_3to8_beh decoder(.I(I),.O(O));
initial begin
	$dumpfile("decoder_3to8.vcd");
	$dumpvars(1,decoder_3to8_tb);
end
initial begin
	 I[2]=1'b0;I[1]=1'b0;I[0]=1'b0;
	#5 I[2]=1'b0;I[1]=1'b0;I[0]=1'b1;
	#5 I[2]=1'b0;I[1]=1'b1;I[0]=1'b0;
	#5 I[2]=1'b0;I[1]=1'b1;I[0]=1'b1;
	#5 I[2]=1'b1;I[1]=1'b0;I[0]=1'b0;
	#5 I[2]=1'b1;I[1]=1'b0;I[0]=1'b1;
	#5 I[2]=1'b1;I[1]=1'b1;I[0]=1'b0;
	#5 I[2]=1'b1;I[1]=1'b1;I[0]=1'b1;
	#5 $finish;
end
always @(O)
	$display("Time=%0t \t INPUT VALUES: I = %b \t OUTPUT VALUES: O = %b",$time,I,O);
endmodule
