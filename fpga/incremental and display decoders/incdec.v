module incdec(a,b,c,d,e,f,g,W,X,Y,Z);
output wire a,b,c,d,e,f,g;
input wire W,X,Y,Z;

reg A,B,C,D;

always @(*)
    begin 

    D = (W&X&Y&(!Z))|((!W)&(!X)&(!Y)&Z);//Boolean function for D
    C=((!Z)&(!Y)&(X)&W)|((!Z)&(Y)&!X&(!W))|((!Z)&Y&(!X)&W)|((!Z)&Y&X&(!W));
    B=((!Z)&(!Y)&!X&W)|((!Z)&!Y&(X)&(!W))|((!Z)&Y&(!X)&W)|((!Z)&Y&X&(!W));
    A = ((!W)&(!X)&(!Y)&(!Z))|((!W)&(X)&(!Y)&(!Z))|((!W)&(!X)&Y&(!Z))|((!W)&X&Y&(!Z))|((!W)&(!X)&(!Y)&(Z));

    
    a=(!D&!C&!B&A)|(!D&C&!B&!A);
    b=(!D&C&!B&A)|(!D&C&B&!A);
    c=(!D&!C&B&!A);
    d=(!D&!C&!B&A)|(!D&C&!B&!A)|(!D&C&B&A);
    e=(!D&!C&!B&A)|(!D&!C&B&A)|(!D&C&!B&!A)|(!D&C&!B&A)|(!D&C&B&A)|(D&!C&!B&A);
    f=(!D&!C&!B&A)|(!D&!C&B&!A)|(!D&!C&B&A)|(!D&C&B&A);
    g=(!D&!C&!B&!A)|(!D&!C&!B&A)|(!D&C&B&A);
    
    end
endmodule







