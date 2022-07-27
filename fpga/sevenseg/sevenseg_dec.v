module sevenseg_dec(a,b,c,d,e,f,g);
output a,b,c,d,e,f,g;

function automatic [6:0] black;

input [6:0] num_i;

begin
case(num_i)
      0:black = 7'b0000001;
      1:black = 7'b1001111;
      2:black = 7'b0010010;
      3:black = 7'b0000110;
      4:black = 7'b1001100;
      5:black = 7'b0100100;
      6:black = 7'b0100000;
      7:black = 7'b0001111;
      8:black = 7'b0000000;
      9:black = 7'b0000100;
      default:black = 7'b1111111;
      endcase
 end
endfunction

assign {a,b,c,d,e,f} = black(6);
endmodule

