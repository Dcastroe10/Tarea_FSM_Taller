module comparador (
    input [7:0] entrada,
    output igual
);

assign igual = (entrada == 8'hC8);
endmodule
