module mux_8to1_tb;
reg D0,D1,D2,D3,D4,D5,D6,D7;
reg [2:0] S;
wire Y;
mux_8to1_glr mux(.D0(D0),.D1(D1),.D2(D2),.D3(D3),.D4(D4),.D5(D5),.D6(D6),.D7(D7),.S(S),.Y(Y));
initial begin
	$dumpfile("mux_8to1.vcd");
	$dumpvars(1,mux_8to1_tb);
end
initial begin
	{D0,D1,D2,D3,D4,D5,D6,D7} = $random % 8;
	#5 S = 3'b000;
	{D0,D1,D2,D3,D4,D5,D6,D7} = $random % 8;
        #5 S = 3'b001;
	{D0,D1,D2,D3,D4,D5,D6,D7} = $random % 8;
        #5 S = 3'b010;
	{D0,D1,D2,D3,D4,D5,D6,D7} = $random % 8;
        #5 S = 3'b011;
	{D0,D1,D2,D3,D4,D5,D6,D7} = $random % 8;
        #5 S = 3'b100;
	{D0,D1,D2,D3,D4,D5,D6,D7} = $random % 8;
        #5 S = 3'b101;
	{D0,D1,D2,D3,D4,D5,D6,D7} = $random % 8;
        #5 S = 3'b110;
	{D0,D1,D2,D3,D4,D5,D6,D7} = $random % 8;
        #5 S = 3'b111;
	#5 $finish;
end
always @(Y)
	$display("Time = %0t \t INPUT VALUES: D0 D1 D2 D3 D4 D5 D6 D7 = %b%b%b%b%b%b%b%b \t S = %b \t OUTPUT VALUES: Y = %b",$time,D0,D1,D2,D3,D4,D5,D6,D7,S,Y);
endmodule







