module PoS (output S, input X, Y, Z); // MAXTERMOS
    // M 1 3 6 7
    assign S = (~X | ~Y | Z) & (~X | Y | Z) & (X | ~Y | ~Z) & (X | ~Y | Z);
endmodule

module guia0404;
    reg x, y, z;
    wire s; 

    
    PoS POS (s, x, y, z); 

    // Valores iniciais
    initial begin: start
        x = 1'bx; 
        y = 1'bx; 
        z = 1'bx;  
    end

    // Parte principal
    initial begin: main
        // Identificação
        $display("Exercicio0404 ");
        $display("questao A");
        $display("\n  \n");

        // Monitoramento da saída
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