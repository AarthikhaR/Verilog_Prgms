module encoder_8to3_str(input [7:0] A , output [2:0] B);
or u1(B[2],A[4],A[5],A[6],A[7]);
or u2(B[1],A[2],A[3],A[6],A[7]);
or u3(B[0],A[1],A[3],A[5],A[7]);
endmodule
