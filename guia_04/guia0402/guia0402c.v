module fxy (output s1, s2,
input x, y);
assign s1 = ~( x & ~y ) & ( x | y );
assign s2 = ~x | y;
endmodule 

module guia0402c;
reg x, y;
wire s1, s2;
// instancias
fxy FXY (s1, s2, x, y);
// valores iniciais
initial 
begin: start
x=1'bx; y=1'bx; 
end

// parte principal
initial 
begin: main
// identificacao
$display("Exercicio0402 ");
$display("questao C");
$display("\n  ( x . y' )' . ( x + y ) = s1  s2\n");
// monitoramento
 $display("x  y   =  s1 s2");
        $monitor("%2b %2b  =  %2b %2b", x, y, s1, s2);

        // Test cases
        #1 x = 0; y = 0;  
        #1 x = 0; y = 1;  
        #1 x = 1; y = 0; 
        #1 x = 1; y = 1; 
     
        
end
endmodule 