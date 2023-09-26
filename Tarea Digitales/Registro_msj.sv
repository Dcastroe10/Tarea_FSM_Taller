module Registro_msj (
  input logic [7:0] data_input, // Entrada de datos de 8 bits
  input logic clk,              // Señal de reloj
  input logic reset,            // Señal de reinicio asincrónico
  output logic [7:0] data_output // Salida del registro de 8 bits
);

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      data_output <= 8'b0; // Resetea el registro a 0 cuando reset es 1
    end else begin
      data_output <= data_input; 
    end
  end

endmodule
