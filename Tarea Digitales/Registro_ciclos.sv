module Registro_ciclos (
  input wire [7:0] data_input, // Entrada de datos de 8 bits
  input wire clk,              // Señal de reloj
  input wire reset,            // Señal de reinicio asincrónico
  output reg [7:0] data_output // Salida del registro de 8 bits
);

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      data_output <= 8'b0; 
    end else if (enable) begin
      data_output <= data_input;
    end
  end

endmodule
