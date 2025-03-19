//Guia_0101b.v
//8660553 - Izadora Galarza Alves

module guia_0101e;

integer x = 360;
reg [7:0] b=0;

initial
begin: main
$display("Guia_0101 - E");
$display("x=%d",x);
$display("b=%8b",b);
b=x;
$display("b=%8b",b);
end
endmodule