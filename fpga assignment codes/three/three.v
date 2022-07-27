module three(t,clock,a,b,c,d,e,f,g);
    input  t;
    output a;
    output b;
    output c;
    output d;
    output e;
    output f;
    output g;
    output reg clock;
    wire clk;

qlal4s3b_cell_macro u_qlal4s3b_cell_macro( .Sys_Clk0(clk));
 reg [26:0] delay ;


parameter  s0=4'b0000, 
  s1=4'b0001, 
  s2=4'b0010, 
  s3=4'b0011, 
  s4=4'b0100,
  s5=4'b0101,
  s6=4'b0110,
  s7=4'b0111,
  s8=4'b1000,
  s9=4'b1001;
  

reg [3:0] q; 
reg d ;
function automatic [6:0] seg;

    input [3:0] num_i; 

begin
    case (num_i)   	
        
      s0 : seg =7'b0000001;
      s1 : seg =7'b1001111;
      s2 : seg =7'b0010010;
      s3 : seg =7'b0000110;
      s4 : seg =7'b1001100;
      s5 : seg =7'b0100100;
      s6 : seg =7'b0100000;
      s7 : seg =7'b0001111;
      s8 : seg =7'b0000000;
      s9 : seg =7'b0000100;
      endcase
        
    
end
endfunction

always @(posedge clk)
begin
delay=delay+1;
if(delay>20000000) 
begin
clock = !clock;
delay=0;
end
end

always@(posedge clk)
 begin
 case(t)
 1'b0:begin
      q<=q;
      end

 1'b1:begin
      q<=~q;
      end

  endcase
  end;

 
always @(posedge clock)
begin
 case(q) 
 s0:begin
   d <= q^t;
  q =d;
    {a,b,c,d,e,f,g} = seg(q);
 
 end
 
 
 s1:
  begin
  d <= q^t;
  q =d;
    {a,b,c,d,e,f,g} = seg(q);
   
 end
 
 
  s2:begin
  d <= q^t;
  q =d;
    {a,b,c,d,e,f,g} = seg(q);
   
 end 
 
  s3:begin
  d <= q^t;
  q =d;
    {a,b,c,d,e,f,g} = seg(q);
   
 end
  s4:begin
  d <= q^t;
  q =d;
    {a,b,c,d,e,f,g} = seg(q);
   
 end
 

 default:begin
       d <= s0;
    q =d;
    {a,b,c,d,e,f,g} = seg(q);
    end
 
 endcase
end


 


endmodule
