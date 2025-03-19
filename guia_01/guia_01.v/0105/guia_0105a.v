/*Guia_0105a - Arquitetura de computadores 
  866053 - Izadora Galarza Alves
*/ 

module Guia_0105a;

integer x = 13; 
reg [7:0] b ;
reg [0:2][7:0] s = "PUC"; 

initial
begin : main
$display ( "Guia_0105 - Teste" );
$display ( "x = %d" , x );
$display ( "b = %8b", b );
$display ( "s = %s" , s );
b = x;
$display ( "b = [%4b] [%4b] = %h %h", b[7:4], b[3:0], b[7:4], b[3:0] );
s[0] = "-";
s[1] = 8'b01001101; 
s[2] = 71; 
$display ( "s = %s" , s );
end 
endmodule