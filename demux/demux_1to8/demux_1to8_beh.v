module demux_1to8_beh(input D,input [2:0] S,output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
always @(*) begin
	case({S[2],S[1],S[0]})
		3'b000 : { Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} = 8'b00000001;
	        3'b001 : { Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} = 8'b00000010;
		3'b010 : { Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} = 8'b00000100;
		3'b011 : { Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} = 8'b00001000;
		3'b100 : { Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} = 8'b00010000;
		3'b101 : { Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} = 8'b00100000;
		3'b110 : { Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} = 8'b01000000;
		3'b111 : { Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} = 8'b10000000;
		default:
			{ Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} = 8'b00000000;
	endcase
end
endmodule

