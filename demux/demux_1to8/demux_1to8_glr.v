module demux_1to8_glr(input D,input [2:0] S,output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
wire inv0,inv1,inv2;
not n1(inv0,S[0]);
not n2(inv1,S[1]);
not n3(inv2,S[2]);
and u1(Y0,inv2,inv1,inv0,D);
and u2(Y1,inv2,inv1,S[0],D);
and u3(Y2,inv2,S[1],inv0,D);
and u4(Y3,inv2,S[1],S[0],D);
and u5(Y4,S[2],inv1,inv0,D);
and u6(Y5,S[2],inv1,S[0],D);
and u7(Y6,S[2],S[1],inv0,D);
and u8(Y7,S[2],S[1],S[0],D);
endmodule

