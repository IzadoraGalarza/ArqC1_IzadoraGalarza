/* Guia_0102 - Arquitetura de computadores
 Autor: Izadora Galarza Alves */

 module guia_0102d;

 integer x=0;
 reg[7:0]b= 8'b00110010;

 initial
 begin:manin

 $display("Guia_0102 - D");
 $display("x=%d",x);
 $display("b=%8b",b);
 x=b;
 $display("b=%8d",x);

 end
 endmodule