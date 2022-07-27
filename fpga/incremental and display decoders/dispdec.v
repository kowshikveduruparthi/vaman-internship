module dispdec(a,b,c,d,e,f,g,W,X,Y,Z);
output wire a,b,c,d,e,f,g;
input wire W,X,Y,Z;

always @(*)
  begin

   a=(!Z&!Y&!X&W)|(!Z&Y&!X&!W);
   b=(!Z&Y&!X&W)|(!Z&Y&X&!W);
   c=(!Z&!Y&X&!W);
   d=(!Z&!Y&!X&W)|(!Z&Y&!X&!W)|(!Z&Y&X&W);
   e=(!Z&!Y&!X&W)|(!Z&!Y&X&W)|(!Z&Y&!X&!W)|(!Z&Y&!X&W)|(!Z&Y&X&W)|(Z&!Y&!X&W);
   f=(!Z&!Y&!X&W)|(!Z&!Y&X&!W)|(!Z&!Y&X&W)|(!Z&Y&X&W);
   g=(!Z&!Y&!X&!W)|(!Z&!Y&!X&W)|(!Z&Y&X&W);

  end
endmodule










