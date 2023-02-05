module decoder_2to4_str(EN,A1,A0,D3,D2,D1,D0);
input EN,A1,A0;
output D3,D2,D1,D0;
wire y,x;
not u1(y,A1);
not u2(x,A0);
and u3(D0,y,x);
and u4(D1,y,A0);
and u5(D2,A1,x);
and u6(D3,A1,A0);
endmodule
