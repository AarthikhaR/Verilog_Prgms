module decoder_3to8_str(input [2:0]I,output [7:0]O);
wire z,y,x;
not u1(z,I[2]);
not u2(y,I[1]);
not u3(x,I[0]);
and u4(O[0],z,y,x);
and u5(O[1],z,y,I[0]);
and u6(O[2],z,I[1],x);
and u7(O[3],z,I[1],I[0]);
and u8(O[4],I[2],y,x);
and u9(O[5],I[2],y,I[0]);
and u10(O[6],I[2],I[1],x);
and u11(O[7],I[2],I[1],I[0]);
endmodule
