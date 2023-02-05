module notg_tb;
reg A;
wire Y;
notg not_gate ( .A(A),.Y(Y));
initial begin
        $dumpfile("notg.vcd");
        $dumpvars(1,notg_tb);
end
initial begin
        A = 1'b0;
        #5 A = 1'b1;
        #5 $finish;
end
always @(Y)
        $display("Time=%0t \t INPUT VALUES: \t A = %b \t OUTPUT VALUES: \t Y = %b",$time,A,Y);
endmodule

