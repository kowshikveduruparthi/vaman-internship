module decade_counter(a,b,c,d,e,f,g);
output a,b,c,d,e,f,g;
reg [26:0] delay;
reg [6:0] x = 0;

wire clk;


    qlal4s3b_cell_macro u_qlal4s3b_cell_macro (
        .Sys_Clk0 (clk),
    );


function automatic [6:0] black ;
input [6:0] num_i ;
begin
     case(num_i)
        0 : black = 7'b0000001;
        1 : black = 7'b1001111;
        2 : black = 7'b0010010;
        3 : black = 7'b0000110;
        4 : black = 7'b1001100;
        5 : black = 7'b0100100;
        6 : black = 7'b0100000;
        7 : black = 7'b0001111;
        8 : black = 7'b0000000;
        9 : black = 7'b0000100;
        default : black = 7'b1111111;
        endcase
     end
 endfunction

always @(posedge clk)
     begin 
       delay = delay + 1 ;
       if (delay >20000000)
          begin 
             delay = 27'b0;
             x = x + 1 ;
           end
       if (x > 9)
          begin 
             x = 0 ;
          end
      end
assign{a,b,c,d,e,f,g} = black(x);
endmodule

