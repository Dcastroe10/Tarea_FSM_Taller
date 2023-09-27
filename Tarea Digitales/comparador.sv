module comparador (
    input logic [7:0] entrada,
    output logic igual
);

 //Para probar el caso de que no hubo entrada M de manera "fácil" comentar la linea 9 y descomentar la 8
 
//assign igual = (entrada >= 8'b00000100); //Cantidad de ciclos máxima 3   
assign igual = (entrada >= 8'b11001000); //200
endmodule
