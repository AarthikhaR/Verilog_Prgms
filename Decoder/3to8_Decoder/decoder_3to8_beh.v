module decoder_3to8_beh(input [2:0] I, output reg [7:0] O);
always @(I) begin
	case(I)
		3'b000: {O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]} = 8'b10000000;
		3'b001: {O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]} = 8'b01000000;
		3'b010: {O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]} = 8'b00100000;
		3'b011: {O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]} = 8'b00010000;
		3'b100: {O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]} = 8'b00001000;
		3'b101: {O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]} = 8'b00000100;
		3'b110: {O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]} = 8'b00000010;
		3'b111: {O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]} = 8'b00000001;
	endcase
end
endmodule
