module fxyz (output s,
input x, y, z);
assign s = ~( x & ~y ) & z;
endmodule 

module guia0401;
reg x, y, z;
wire s;
// instancias
fxyz FXYZ (s, x, y, z);
// valores iniciais
initial 
begin: start
x=1'bx; y=1'bx; z=1'bx; 
end

// parte principal
initial 
begin: main
// identificacao
$display("Exercicio0401 ");
$display("questao D");
$display("\n  ( x . y' )' . z = s\n");
// monitoramento
 $display("x  y  z  =  s");
        $monitor("%2b %2b %2b = %2b", x, y, z, s);

        // Test cases
        #1 x = 0; y = 0; z = 0; 
        #1 x = 0; y = 0; z = 1; 
        #1 x = 0; y = 1; z = 0; 
        #1 x = 0; y = 1; z = 1; 
        #1 x = 1; y = 0; z = 0; 
        #1 x = 1; y = 0; z = 1; 
        #1 x = 1; y = 1; z = 0; 
        #1 x = 1; y = 1; z = 1; 
        
end
endmodule 