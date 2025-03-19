/*Guia_0104d - Arquitetura de computadores 
  866053 - Izadora Galarza Alves
*/ 


module Guia_0104d;

integer x = 0; 
reg [7:0] b = 8'b101011;  //fiz uma alteracao para converter do binario

initial
begin : main
$display ( "Guia_0104 - D" );
$display ( "x = %d" , x );
$display ( "b = %8b", b );
x = b;
$display("x=%d",x); //decidi adicionar o valor em decimal
$display ( "b = [%4b] [%4b] = %o %o", b[7:4], b[3:0], b[7:4], b[3:0] ); // agrupamento
end 
endmodule 
