/*
Guia_0103a - Arquitetura de computadores
Autor: Izadora Galarza Alves
*/

module guia_0103e;

integer x= 731;
reg[9:0]b=0; //tive que aumentar os bits para aparecer o valor correto

initial 
begin:main
 $display("Guia_0103 - E");
 $display("x=%d", x);
 $display("b=%8b",b);
 b=x;
 $display("b= %b(2) / %o(8) / %X(16)",b,b,b);
end
endmodule
