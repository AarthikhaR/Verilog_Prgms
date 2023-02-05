module decoder_2to4_df(EN,A1,A0,D3,D2,D1,D0);
input EN,A1,A0;
output D3,D2,D1,D0;
assign D0 = (EN & ~A1 & ~A0);
assign D1 = (EN & ~A1 & A0);
assign D2 = (EN & A1 & ~A0);
assign D3 = (EN & A1 & A0);
endmodule
