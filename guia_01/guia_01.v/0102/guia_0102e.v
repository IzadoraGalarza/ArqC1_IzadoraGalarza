/* Guia_0102 - Arquitetura de computadores
 Autor: Izadora Galarza Alves */

 module guia_0102e;

 integer x=0;
 reg[7:0]b=8'b00111011;

 initial
 begin:main

 $display("Guia_0102 - E");
 $display("x=%d",x);
 $display("b=%8b",b);
 x=b;
 $display("b=&8d",x);
 end
 endmodule