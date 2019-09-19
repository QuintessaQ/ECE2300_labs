module comb(W, X, Y, Z, OUT, OUTNAND);
  input  W;
  input  X;
  input  Y;
  input  Z;
  
  output [1:0] OUT;
  output [1:0] OUTNAND;
  reg temp1;
  reg temp2;
  
  //assign OUT = W | ~X & ~Z | X & Z | Y & Z;
  //assign OUTNAND = ~(~W & ~(~X & ~Z) & ~(X & Z) & ~(Y & Z));


  
  always@(*)
  begin
      temp1 = W | ~X & ~Z | X & Z | Y & Z;
		temp2 = ~(~W & ~(~X & ~Z) & ~(X & Z) & ~(Y & Z));
  end
  
  assign OUT = temp1;
  assign OUTNAND = temp2;

endmodule

