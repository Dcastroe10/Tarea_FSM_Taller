module Mux (
    input logic [7:0] A, // Entrada A
    input logic [7:0] B, // Entrada B
    input logic S, // Selector
    output logic [7:0] Y // Salida Y
);
    // Lógica del multiplexor
    always_comb begin
        if (S == 0) begin
            Y = A;
				$display("eligió mantenimiento");
				$display(Y);
        end else begin
            Y = B;
        end
    end
endmodule
