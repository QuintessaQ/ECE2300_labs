module comb(W, X, Y, Z, OUT, OUTNAND);
  input  W;
  input  X;
  input  Y;
  input  Z;
  
  output [1:0] OUT;
  output [1:0] OUTNAND;
  reg temp1;
  reg temp2;
  // assign OUT = W | ~X & ~Z | X & Z | Y & Z;
  // assign OUTNAND = ~(~W & ~(~X & ~Z) & ~(X & Z) & ~(Y & Z));

  // output OUT;
  // output OUTNAND;
  
  always@(W or X or Y or Z)
  begin
    if (W == 1b'1) begin  
      temp1 = 1b'1;
    end else if (X == 1b'0 and Z == 1b'0)
      temp1 = 1b'1;
    end else if (X == 1b'1 and Z == 1b'1)
      temp1 = 1b'1;
    end else if (Y == 1b'1 and Z == 1b'1)
      temp1 = 1b'1;
    else 
      temp1 = 1b'0;
  end
  
  assign OUT = temp1;
  assign OUTNAND = temp1;

endmodule

