module demux_1to8_tb;
reg D;
reg [2:0] S;
output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
demux_1to8_glr demux(.D(D),.S(S),.Y7(Y7),.Y6(Y6),.Y5(Y5),.Y4(Y4),.Y3(Y3),.Y2(Y2),.Y1(Y1),.Y0(Y0));
initial begin 
	$dumpfile("demux_1to8.vcd");
	$dumpvars(1,demux_1to8_tb);
end
initial begin
	D = $random;
	#5 S = 000;
	D = $random;
	#5 S = 001;
	D = $random;
        #5 S = 010;
	D = $random;
        #5 S = 011;
	D = $random;
        #5 S = 100;
	D = $random;
        #5 S = 101;
	D = $random;
        #5 S = 110;
	D = $random;
        #5 S = 111;
	#5 $finish;
end
always @(Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7)
	$display("Time = %0t \t INPUT VALUES: D = %b S = %b \t OUTPUT VALUES: Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0 = %b%b%b%b%b%b%b%b",$time,D,S,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0);
endmodule
