module decoder_2to4_bf(EN,A1,A0,D3,D2,D1,D0);
input EN,A1,A0;
output D3,D2,D1,D0;
reg D3,D2,D1,D0;
always @(EN or A1 or A0) begin
	if( EN == 1'b1)
		case({A1,A0})
			2'b00:{D3,D2,D1,D0} = 4'b0001;
			2'b01:{D3,D2,D1,D0} = 4'b0010;
			2'b10:{D3,D2,D1,D0} = 4'b0100;
			2'b11:{D3,D2,D1,D0} = 4'b1000;
			default: {D3,D2,D1,D0} = 4'bxxxx;
		endcase
	if( EN == 1'b0)
		{D3,D2,D1,D0} = 4'b0000;
end
endmodule
