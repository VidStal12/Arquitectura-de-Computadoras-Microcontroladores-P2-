`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2026 21:16:25
// Design Name: 
// Module Name: Top_view
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module Top_view(
input logic clk,
input logic rst_n,
input logic clutch_cambio,
input logic [1:0] palanca_de_cambio,

output logic [6:0] segmentos_moore,
output logic [6:0] segmentos_mealy,
output logic led_error );

logic clutch_activo ; 
logic [1:0] palanca_cambios;
logic [3:0] estados_futuros;
logic [3:0] estados_actuales; 

Clutch in_clutch(
.clutch_accion (clutch_cambio),
.clutch_resultado (clutch_activo)
);

Caja_de_cambios_input in_caja(
.palanca_accionada (palanca_de_cambio),
.output_palanca (palanca_cambios)
);

next_state_logic in_next_state(
 .posicion_de_palanca (palanca_cambios),
 .current_state (estados_actuales),
 .next_state (estados_futuros)
);

registro_estados in_estados (
.clk(clk),
.rst_n (rst_n),
.clutch_resultado (clutch_activo),
.ns_in (estados_futuros),
.ns_out (estados_actuales)
);

decoder_7_segmentos in_decoder_mealy(
.estado (estados_futuros),
.segmentos (segmentos_mealy)
);

decoder_7_segmentos in_decoder_moore(
.estado (estados_actuales),
.segmentos (segmentos_moore)
);

error_en_colocar_clutch in_error_vista (
.palanca (palanca_de_cambio),
.clutch_resultado (clutch_activo),
.shift_error (led_error)
);


endmodule
