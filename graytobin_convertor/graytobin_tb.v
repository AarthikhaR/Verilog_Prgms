module graytobin_tb;
reg [3:0] G;
wire [3:0] B;
graytobin gtb (.G(G),.B(B));
initial begin
	$dumpfile("graytobin.vcd");
	$dumpvars(1,graytobin_tb);
end
always
begin
	G <= 0;
	#5 G <= 1;
	#5 G <= 2;
	#5 G <= 3;
	#5 G <= 4;
	#5 G <= 5;
	#5 G <= 6;
	#5 G <= 7;
	#5 G <= 8;
	#5 G <= 9;
	#5 G <=10;
	#5 G <=11;
	#5 G <=12;
	#5 G <=13;
	#5 G <=14;
	#5 G <=15;
	#5 $finish;
end
always @(B[3],B[2],B[1],B[0])
	$display("Time = %0t \t INPUT VALUES: G4 G3 G2 G1 = %b%b%b%b \t OUTPUT VALUES: B4 B3 B2 B1 = %b%b%b%b",$time,G[3],G[2],G[1],G[0],B[3],B[2],B[1],B[0]);
endmodule
