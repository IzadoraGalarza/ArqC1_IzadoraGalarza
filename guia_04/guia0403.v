
module SoP (output s, input x, y, z); // mintermos
// m 1267
assign s = (~x & ~y & z) | (~x & y & ~z) | (x & y & ~z) | (x & y & z);
endmodule


module guia0403;
reg x, y,z;
wire s;
// instancias
SoP FXY (s, x, y, z);
// valores iniciais
initial 
begin: start
x=0; y=0; z=0; 
end

// parte principal
initial 
begin: main
// identificacao
$display("Exercicio0403 ");
$display("questao A");
$display("\n  \n");
// monitoramento
 $display("x  y  z =  s");
        $monitor("%2b %2b %2b =  %2b", x, y, z, s);

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