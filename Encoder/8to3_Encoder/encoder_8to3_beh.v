module encoder_8to3_beh(input [7:0] A, output reg [2:0] B);
always @(*)
begin
	case(A)
		8'b00000001: B = 3'b000;
		8'b00000010: B = 3'b001;
		8'b00000100: B = 3'b010;
		8'b00001000: B = 3'b011;
		8'b00010000: B = 3'b100;
		8'b00100000: B = 3'b101;
		8'b01000000: B = 3'b110;
		8'b10000000: B = 3'b111;
		default: B = 3'bXXX;
	endcase
end
endmodule
