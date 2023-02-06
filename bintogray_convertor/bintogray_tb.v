module bintogray_tb;
reg [3:0] B;
wire [3:0] G;
bintogray btg(.B(B),.G(G));
initial begin
	$dumpfile("bintogray.vcd");
	$dumpvars(1,bintogray_tb);
end
always
begin
	B <= 0;
	#5 B <= 1;
	#5 B <= 2;
	#5 B <= 3;
	#5 B <= 4;
	#5 B <= 5;
	#5 B <= 6;
	#5 B <= 7;
	#5 B <= 8;
	#5 B <= 9;
	#5 B <=10;
	#5 B <=11;
	#5 B <=12;
	#5 B <=13;
	#5 B <=14;
	#5 B <=15;
	#5 $finish;
end
always @(G[3],G[2],G[1],G[0])
	$display("Time = %0t \t INPUT VALUES: B4 B3 B2 B1 = %b%b%b%b \t OUTPUT VALUES: G4 G3 G2 G1 = %b%b%b%b",$time,B[3],B[2],B[1],B[0],G[3],G[2],G[1],G[0]);
endmodule
