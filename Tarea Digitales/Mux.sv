module Mux (
    input wire A,
    input wire B,
    input wire S,
    output wire Y
);
    // Lógica del multiplexor
    assign Y = (S == 1'b0) ? A : B;
endmodule
