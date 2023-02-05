module norg_tb;
reg A,B;
wire Y;
norg nor_gate ( .A(A),.B(B),.Y(Y));
initial begin
        $dumpfile("norg.vcd");
        $dumpvars(1,norg_tb);
end
initial begin
        A = 1'b0;B = 1'b0;
        #5 A = 1'b0;B = 1'b1;
	#5 A = 1'b1;B = 1'b0;
	#5 A = 1'b1;B = 1'b1;
        #5 $finish;
end
always @(Y)
        $display("Time=%0t \t INPUT VALUES: \t A = %b \t B = %b \t OUTPUT VALUES: \t Y = %b",$time,A,B,Y);
endmodule
