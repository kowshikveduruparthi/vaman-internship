//F = (!z)|(x&y);
module one(input x,input y,input z,output F);
 // output a,b,c,d,e,f,g;
  //input x,y,z;
  wire p,m ;
  and(p,x,y);
  not (m,z);
  or (F,m,p);
 
  

  /*  not (a,z);
    not (b,1);
    not (c,1);
    not (d,z);
    not (e,z);
    not (f,z);
    not (g,0); */
 
endmodule
