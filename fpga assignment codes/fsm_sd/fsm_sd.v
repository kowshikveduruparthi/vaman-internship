module fsm_sd( x,y,a,b,c,d,e,f,g,redled);
       output y,a,b,c,d,e,f,g;
       output wire redled;
       input x;
       reg [2:0] q1;
       reg [2:0] q2;
       reg [2:0] q3;
       reg [2:0] d1;
       reg [2:0] d2;
       reg [2:0] d3;
             
   wire clk;
    qlal4s3b_cell_macro u_qlal4s3b_cell_macro( .Sys_Clk0(clk));
   reg [26:0] delay ;
   initial begin 
          q1 =0;
          q2 =0;
          q3 =0;
               a=0;
               b=0;
               c=0;
               d=0;
               e=0;
               f=0;
               g=1;
          end
       
       
       
       always@(posedge clk)
            begin
            
               delay = delay +1 ;
               if (delay >= 20000000)
                      begin 
                        
                        // delay = 27'b0;
                       //led =!led;
                           d3 = (!q3&q2&q1&x);
                           d2 = ((!q3&!q2&q1&x) | (!q3&q2&!q1&!x) | (q3&!q2&!q1&!x));
                           d1 = (!x);
                            y = !d3;
                            
                            a = (!q3&!q2&!x) | (!q3&q1&!x) | (!q3&q2&q1);
                            b = 0;
                            c = (!q3&!q2&q1&x);
                            d = a ;
                            e = (!q3&!x) | (!q2&!q1&!x) | (!q3&q2&q1);
                            f = (!q3&!x) | (!q2&!q1&!x) | (!q3&!q2&q1);  
                            g = (!q3&!q2&!q1) | (!q3&!q1&x) | (!q3&q1&!x) | (!q2&!q1&x);
                            
                            q1<=d1;
                            q2<=d2;
                            q3<=d3;
                            delay = 27'b0;
                             led =!led;
                         //    assign redled = led;
                           end 
                            end
                          assign redled = led;
             endmodule
             
          
                            
                                               
                             
                        
             
