module mux_8to1_glr(input D0,D1,D2,D3,D4,D5,D6,D7,input [2:0] S,output Y);
wire inv0,inv1,inv2;
wire a0,a1,a2,a3,a4,a5,a6,a7;
not n1(inv0,S[0]);
not n2(inv1,S[1]);
not n3(inv2,S[2]);
and u1(a0,inv0,inv1,inv2,D0);
and u2(a1,inv0,inv1,S[0],D1);
and u3(a2,inv0,S[1],inv2,D2);
and u4(a3,inv0,S[1],S[0],D3);
and u5(a4,S[2],inv1,inv2,D4);
and u6(a5,S[2],inv1,S[0],D5);
and u7(a6,S[2],S[1],inv0,D6);
and u8(a7,S[2],S[1],S[0],D7);
or res(Y,a0,a1,a2,a3,a4,a5,a6,a7);
endmodule
