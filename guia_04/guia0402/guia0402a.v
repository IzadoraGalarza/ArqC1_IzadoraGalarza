module fxy (output s,
input x, y);
assign s = ~x & ~y;
endmodule 

module guia0402a;
reg x, y;
wire s;
// instancias
fxy FXY (s, x, y);
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
$display("questao A");
$display("\n  ( x' + y' ) . ( y + z')' = s\n");
// monitoramento
 $display("x  y   =  s");
        $monitor("%2b %2b  =  %2b", x, y, s);

        // Test cases
        #1 x = 0; y = 0;  
        #1 x = 0; y = 1;  
        #1 x = 1; y = 0; 
        #1 x = 1; y = 1; 
     
        
end
endmodule 