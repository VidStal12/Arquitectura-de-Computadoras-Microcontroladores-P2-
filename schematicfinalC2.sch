# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:24.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #575d6c
property boxcolor1 #575d6c
property boxcolor2 #000000
property boxinstcolor #1c1f28
property boxpincolor #1c1f28
property buscolor #009633
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #e5c7ff
property fillcolor2 #cde5ff
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #8bc34a
property objecthighlight0 #fe00f6
property objecthighlight1 #ffea00
property objecthighlight2 #84e413
property objecthighlight3 #1661ff
property objecthighlight4 #d9b7ff
property objecthighlight5 #ffa358
property objecthighlight6 #ff2b2b
property objecthighlight7 #00e0ff
property objecthighlight8 #c0ca33
property objecthighlight9 #b16eff
property objecthighlight10 #46a466
property objecthighlight11 #caff78
property objecthighlight12 #ab47bc
property objecthighlight13 #b4602c
property objecthighlight14 #c20f8c
property objecthighlight15 #00ffaa
property objecthighlight16 #ff9fe4
property objecthighlight17 #ff8019
property objecthighlight18 #26b3ff
property objecthighlight19 #e5551c
property overlaycolor #8bc34a
property pbuscolor #000000
property pbusnamecolor #1c1f28
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #1c1f28
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #1c1f28
property rubberbandfontsize 16
property selectattr 0
property selectionappearance 2
property selectioncolor #396cef
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new top_view work:top_view:NOFILE -nosplit
load symbol mealy work:mealy:NOFILE HIERBOX pin clutch_activo output.right pin clutch_cambio input.left pin led_error output.right pinBus estado_actual input.left [3:0] pinBus estado_siguiente output.right [3:0] pinBus palanca_de_cambio input.left [1:0] pinBus segmentos_mealy output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol moore work:moore:NOFILE HIERBOX pin clk input.left pin clutch_activo input.left pin rst_n input.left pinBus estado_actual output.right [3:0] pinBus estado_siguiente input.left [3:0] pinBus segmentos_moore output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol decoder_7_segmentos work:abstract:NOFILE HIERBOX pinBus estado input.left [3:0] pinBus segmentos output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol registro_estados work:registro_estados:NOFILE HIERBOX pin clk input.left pin clutch_resultado input.left pin rst_n input.left pinBus ns_in input.left [3:0] pinBus ns_out output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_ASYNC__BREG_1 work[3:0]sswwww GEN pin C input.clk.left pin CE input.left pinBus CLR input.top [3:0] pinBus D input.left [3:0] pinBus PRE input.bot [3:0] pinBus Q output.right [3:0] fillcolor 1 sandwich 3 prop @bundle 4
load symbol RTL_ROM work GEN pinBus A input.left [3:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_MUX1 work MUX pin S input.bot pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] pinBus O output.right [6:0] fillcolor 1
load symbol Caja_de_cambios_input work:Caja_de_cambios_input:NOFILE HIERBOX pinBus output_palanca output.right [1:0] pinBus palanca_accionada input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Clutch work:Clutch:NOFILE HIERBOX pin clutch_accion input.left pin clutch_resultado output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol decoder_7_segmentos work:decoder_7_segmentos:NOFILE HIERBOX pinBus estado input.left [3:0] pinBus segmentos output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol error_en_colocar_clutch work:error_en_colocar_clutch:NOFILE HIERBOX pin clutch_resultado input.left pin shift_error output.right pinBus palanca input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol next_state_logic work:next_state_logic:NOFILE HIERBOX pinBus current_state input.left [3:0] pinBus next_state output.right [3:0] pinBus posicion_de_palanca input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX work MUX pinBus I0 input.left [2:0] pinBus I1 input.left [2:0] pinBus I2 input.left [2:0] pinBus I3 input.left [2:0] pinBus O output.right [2:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_MUX0 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin O output.right pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pin I1 input.left pinBus I0 input.left [2:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pin I1 input.left pinBus I0 input.left [2:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_REDUCTION_OR work OR pin O output pinBus I0 input [1:0] fillcolor 1
load symbol RTL_AND workI1 AND pin I0 input pin I1 input.neg pin O output fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 110
load port clutch_cambio input -pg 1 -lvl 0 -x 0 -y 30
load port led_error output -pg 1 -lvl 3 -x 4320 -y 150
load port rst_n input -pg 1 -lvl 0 -x 0 -y 170
load portBus palanca_de_cambio input [1:0] -attr @name palanca_de_cambio[1:0] -pg 1 -lvl 0 -x 0 -y 210
load portBus segmentos_mealy output [6:0] -attr @name segmentos_mealy[6:0] -pg 1 -lvl 3 -x 4320 -y 180
load portBus segmentos_moore output [6:0] -attr @name segmentos_moore[6:0] -pg 1 -lvl 3 -x 4320 -y 210
load inst in_mealy mealy work:mealy:NOFILE -autohide -attr @cell(#1c1f28) mealy -attr @fillcolor #ffffff -pinBusAttr estado_actual @name estado_actual[3:0] -pinBusAttr estado_siguiente @name estado_siguiente[3:0] -pinBusAttr palanca_de_cambio @name palanca_de_cambio[1:0] -pinBusAttr segmentos_mealy @name segmentos_mealy[6:0] -pg 1 -lvl 2 -x 1930 -y 118
load inst in_moore moore work:moore:NOFILE -autohide -attr @cell(#1c1f28) moore -attr @fillcolor #ffffff -pinBusAttr estado_actual @name estado_actual[3:0] -pinBusAttr estado_siguiente @name estado_siguiente[3:0] -pinBusAttr segmentos_moore @name segmentos_moore[6:0] -pg 1 -lvl 1 -x 230 -y 118
load inst in_moore|in_decoder_moore decoder_7_segmentos work:abstract:NOFILE -hier in_moore -autohide -attr @name in_decoder_moore -attr @cell(#1c1f28) decoder_7_segmentos -attr @fillcolor #ffffff -pinBusAttr estado @name estado[3:0] -pinBusAttr segmentos @name segmentos[6:0] -pg 1 -lvl 2 -x 880 -y 166
load inst in_moore|in_estados registro_estados work:registro_estados:NOFILE -hier in_moore -autohide -attr @name in_estados -attr @cell(#1c1f28) registro_estados -attr @fillcolor #ffffff -pinBusAttr ns_in @name ns_in[3:0] -pinBusAttr ns_out @name ns_out[3:0] -pg 1 -lvl 1 -x 440 -y 146
load inst in_moore|in_estados|ns_out_reg[3:0] RTL_REG_ASYNC__BREG_1 work[3:0]sswwww -hier in_moore|in_estados -attr @name ns_out_reg[3:0] -attr @cell(#1c1f28) RTL_REG_ASYNC -pinBusAttr PRE @attr n/c -pg 1 -lvl 1 -x 500 -y 196
load inst in_moore|in_decoder_moore|segmentos_i RTL_ROM work -hier in_moore|in_decoder_moore -attr @name segmentos_i -attr @cell(#1c1f28) RTL_ROM -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 1 -x 940 -y 216
load inst in_moore|in_decoder_moore|segmentos_i__0 RTL_MUX1 work -hier in_moore|in_decoder_moore -attr @name segmentos_i__0 -attr @cell(#1c1f28) RTL_MUX -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr V=B\"0101011\",\ S=1'b1 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[6:0] -pg 1 -lvl 2 -x 1270 -y 206
load inst in_mealy|in_caja Caja_de_cambios_input work:Caja_de_cambios_input:NOFILE -hier in_mealy -autohide -attr @name in_caja -attr @cell(#1c1f28) Caja_de_cambios_input -attr @fillcolor #ffffff -pinBusAttr output_palanca @name output_palanca[1:0] -pinBusAttr palanca_accionada @name palanca_accionada[1:0] -pg 1 -lvl 1 -x 2120 -y 266
load inst in_mealy|in_clutch Clutch work:Clutch:NOFILE -hier in_mealy -autohide -attr @name in_clutch -attr @cell(#1c1f28) Clutch -attr @fillcolor #ffffff -pg 1 -lvl 2 -x 2510 -y 146
load inst in_mealy|in_decoder_mealy decoder_7_segmentos work:decoder_7_segmentos:NOFILE -hier in_mealy -autohide -attr @name in_decoder_mealy -attr @cell(#1c1f28) decoder_7_segmentos -attr @fillcolor #ffffff -pinBusAttr estado @name estado[3:0] -pinBusAttr segmentos @name segmentos[6:0] -pg 1 -lvl 3 -x 3380 -y 334
load inst in_mealy|in_error_vista error_en_colocar_clutch work:error_en_colocar_clutch:NOFILE -hier in_mealy -autohide -attr @name in_error_vista -attr @cell(#1c1f28) error_en_colocar_clutch -attr @fillcolor #ffffff -pinBusAttr palanca @name palanca[1:0] -pg 1 -lvl 3 -x 3380 -y 166
load inst in_mealy|in_next_state next_state_logic work:next_state_logic:NOFILE -hier in_mealy -autohide -attr @name in_next_state -attr @cell(#1c1f28) next_state_logic -attr @fillcolor #ffffff -pinBusAttr current_state @name current_state[3:0] -pinBusAttr next_state @name next_state[3:0] -pinBusAttr posicion_de_palanca @name posicion_de_palanca[1:0] -pg 1 -lvl 2 -x 2510 -y 254
load inst in_mealy|in_next_state|c_estado_palanca_i RTL_MUX work -hier in_mealy|in_next_state -attr @name c_estado_palanca_i -attr @cell(#1c1f28) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[2:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr I3 @name I3[2:0] -pinBusAttr I3 @attr S=2'b11 -pinBusAttr O @name O[2:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 2 -x 2980 -y 304
load inst in_mealy|in_next_state|c_palanca_neutro_i RTL_MUX0 work -hier in_mealy|in_next_state -attr @name c_palanca_neutro_i -attr @cell(#1c1f28) RTL_MUX -pinAttr I0 @attr S=2'b00 -pinAttr I1 @attr S=2'b01 -pinAttr I2 @attr S=2'b10 -pinAttr I3 @attr S=2'b11 -pinBusAttr S @name S[1:0] -pg 1 -lvl 2 -x 2980 -y 484
load inst in_mealy|in_next_state|palanca_abajo_i RTL_SUB work -hier in_mealy|in_next_state -attr @name palanca_abajo_i -attr @cell(#1c1f28) RTL_SUB -pinBusAttr I0 @name I0[2:0] -pinBusAttr O @name O[2:0] -pg 1 -lvl 1 -x 2630 -y 384
load inst in_mealy|in_next_state|palanca_arriba_i RTL_ADD work -hier in_mealy|in_next_state -attr @name palanca_arriba_i -attr @cell(#1c1f28) RTL_ADD -pinBusAttr I0 @name I0[2:0] -pinBusAttr O @name O[2:0] -pg 1 -lvl 1 -x 2630 -y 284
load inst in_mealy|in_decoder_mealy|segmentos_i RTL_ROM work -hier in_mealy|in_decoder_mealy -attr @name segmentos_i -attr @cell(#1c1f28) RTL_ROM -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 1 -x 3440 -y 384
load inst in_mealy|in_decoder_mealy|segmentos_i__0 RTL_MUX1 work -hier in_mealy|in_decoder_mealy -attr @name segmentos_i__0 -attr @cell(#1c1f28) RTL_MUX -pinBusAttr I0 @name I0[6:0] -pinBusAttr I0 @attr V=B\"0101011\",\ S=1'b1 -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[6:0] -pg 1 -lvl 2 -x 3770 -y 374
load inst in_mealy|in_error_vista|shift_error0_i RTL_REDUCTION_OR work -hier in_mealy|in_error_vista -attr @name shift_error0_i -attr @cell(#1c1f28) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[1:0] -pg 1 -lvl 1 -x 3460 -y 206
load inst in_mealy|in_error_vista|shift_error_i RTL_AND workI1 -hier in_mealy|in_error_vista -attr @name shift_error_i -attr @cell(#1c1f28) RTL_AND -pg 1 -lvl 2 -x 3700 -y 176
load net clk -port clk -pin in_moore clk
netloc clk 1 0 1 40J 110n
load net clutch_activo -pin in_mealy clutch_activo -pin in_moore clutch_activo
netloc clutch_activo 1 0 3 80 10 NJ 10 4240
load net clutch_cambio -port clutch_cambio -pin in_mealy clutch_cambio
netloc clutch_cambio 1 0 2 NJ 30 1750J
load net estados_actuales[0] -attr @rip(#1c1f28) estado_actual[0] -pin in_mealy estado_actual[0] -pin in_moore estado_actual[0]
load net estados_actuales[1] -attr @rip(#1c1f28) estado_actual[1] -pin in_mealy estado_actual[1] -pin in_moore estado_actual[1]
load net estados_actuales[2] -attr @rip(#1c1f28) estado_actual[2] -pin in_mealy estado_actual[2] -pin in_moore estado_actual[2]
load net estados_actuales[3] -attr @rip(#1c1f28) estado_actual[3] -pin in_mealy estado_actual[3] -pin in_moore estado_actual[3]
load net estados_futuros[0] -attr @rip(#1c1f28) estado_siguiente[0] -pin in_mealy estado_siguiente[0] -pin in_moore estado_siguiente[0]
load net estados_futuros[1] -attr @rip(#1c1f28) estado_siguiente[1] -pin in_mealy estado_siguiente[1] -pin in_moore estado_siguiente[1]
load net estados_futuros[2] -attr @rip(#1c1f28) estado_siguiente[2] -pin in_mealy estado_siguiente[2] -pin in_moore estado_siguiente[2]
load net estados_futuros[3] -attr @rip(#1c1f28) estado_siguiente[3] -pin in_mealy estado_siguiente[3] -pin in_moore estado_siguiente[3]
load net led_error -pin in_mealy led_error -port led_error
netloc led_error 1 2 1 4260J 150n
load net palanca_de_cambio[0] -attr @rip(#1c1f28) palanca_de_cambio[0] -pin in_mealy palanca_de_cambio[0] -port palanca_de_cambio[0]
load net palanca_de_cambio[1] -attr @rip(#1c1f28) palanca_de_cambio[1] -pin in_mealy palanca_de_cambio[1] -port palanca_de_cambio[1]
load net rst_n -pin in_moore rst_n -port rst_n
netloc rst_n 1 0 1 40J 170n
load net segmentos_mealy[0] -attr @rip(#1c1f28) segmentos_mealy[0] -pin in_mealy segmentos_mealy[0] -port segmentos_mealy[0]
load net segmentos_mealy[1] -attr @rip(#1c1f28) segmentos_mealy[1] -pin in_mealy segmentos_mealy[1] -port segmentos_mealy[1]
load net segmentos_mealy[2] -attr @rip(#1c1f28) segmentos_mealy[2] -pin in_mealy segmentos_mealy[2] -port segmentos_mealy[2]
load net segmentos_mealy[3] -attr @rip(#1c1f28) segmentos_mealy[3] -pin in_mealy segmentos_mealy[3] -port segmentos_mealy[3]
load net segmentos_mealy[4] -attr @rip(#1c1f28) segmentos_mealy[4] -pin in_mealy segmentos_mealy[4] -port segmentos_mealy[4]
load net segmentos_mealy[5] -attr @rip(#1c1f28) segmentos_mealy[5] -pin in_mealy segmentos_mealy[5] -port segmentos_mealy[5]
load net segmentos_mealy[6] -attr @rip(#1c1f28) segmentos_mealy[6] -pin in_mealy segmentos_mealy[6] -port segmentos_mealy[6]
load net segmentos_moore[0] -attr @rip(#1c1f28) segmentos_moore[0] -pin in_moore segmentos_moore[0] -port segmentos_moore[0]
load net segmentos_moore[1] -attr @rip(#1c1f28) segmentos_moore[1] -pin in_moore segmentos_moore[1] -port segmentos_moore[1]
load net segmentos_moore[2] -attr @rip(#1c1f28) segmentos_moore[2] -pin in_moore segmentos_moore[2] -port segmentos_moore[2]
load net segmentos_moore[3] -attr @rip(#1c1f28) segmentos_moore[3] -pin in_moore segmentos_moore[3] -port segmentos_moore[3]
load net segmentos_moore[4] -attr @rip(#1c1f28) segmentos_moore[4] -pin in_moore segmentos_moore[4] -port segmentos_moore[4]
load net segmentos_moore[5] -attr @rip(#1c1f28) segmentos_moore[5] -pin in_moore segmentos_moore[5] -port segmentos_moore[5]
load net segmentos_moore[6] -attr @rip(#1c1f28) segmentos_moore[6] -pin in_moore segmentos_moore[6] -port segmentos_moore[6]
load net in_moore|clk -attr @name clk -hierPin in_moore clk -pin in_moore|in_estados clk
netloc in_moore|clk 1 0 1 320 148n
load net in_moore|clutch_activo -attr @name clutch_activo -hierPin in_moore clutch_activo -pin in_moore|in_estados clutch_resultado
netloc in_moore|clutch_activo 1 0 1 300 168n
load net in_moore|estado_actual[0] -attr @name estado_actual[0] -attr @rip(#1c1f28) ns_out[0] -hierPin in_moore estado_actual[0] -pin in_moore|in_decoder_moore estado[0] -pin in_moore|in_estados ns_out[0]
load net in_moore|estado_actual[1] -attr @name estado_actual[1] -attr @rip(#1c1f28) ns_out[1] -hierPin in_moore estado_actual[1] -pin in_moore|in_decoder_moore estado[1] -pin in_moore|in_estados ns_out[1]
load net in_moore|estado_actual[2] -attr @name estado_actual[2] -attr @rip(#1c1f28) ns_out[2] -hierPin in_moore estado_actual[2] -pin in_moore|in_decoder_moore estado[2] -pin in_moore|in_estados ns_out[2]
load net in_moore|estado_actual[3] -attr @name estado_actual[3] -attr @rip(#1c1f28) ns_out[3] -hierPin in_moore estado_actual[3] -pin in_moore|in_decoder_moore estado[3] -pin in_moore|in_estados ns_out[3]
load net in_moore|estado_siguiente[0] -attr @name estado_siguiente[0] -attr @rip(#1c1f28) estado_siguiente[0] -hierPin in_moore estado_siguiente[0] -pin in_moore|in_estados ns_in[0]
load net in_moore|estado_siguiente[1] -attr @name estado_siguiente[1] -attr @rip(#1c1f28) estado_siguiente[1] -hierPin in_moore estado_siguiente[1] -pin in_moore|in_estados ns_in[1]
load net in_moore|estado_siguiente[2] -attr @name estado_siguiente[2] -attr @rip(#1c1f28) estado_siguiente[2] -hierPin in_moore estado_siguiente[2] -pin in_moore|in_estados ns_in[2]
load net in_moore|estado_siguiente[3] -attr @name estado_siguiente[3] -attr @rip(#1c1f28) estado_siguiente[3] -hierPin in_moore estado_siguiente[3] -pin in_moore|in_estados ns_in[3]
load net in_moore|rst_n -attr @name rst_n -hierPin in_moore rst_n -pin in_moore|in_estados rst_n
netloc in_moore|rst_n 1 0 1 260 208n
load net in_moore|segmentos_moore[0] -attr @name segmentos_moore[0] -attr @rip(#1c1f28) segmentos[0] -hierPin in_moore segmentos_moore[0] -pin in_moore|in_decoder_moore segmentos[0]
load net in_moore|segmentos_moore[1] -attr @name segmentos_moore[1] -attr @rip(#1c1f28) segmentos[1] -hierPin in_moore segmentos_moore[1] -pin in_moore|in_decoder_moore segmentos[1]
load net in_moore|segmentos_moore[2] -attr @name segmentos_moore[2] -attr @rip(#1c1f28) segmentos[2] -hierPin in_moore segmentos_moore[2] -pin in_moore|in_decoder_moore segmentos[2]
load net in_moore|segmentos_moore[3] -attr @name segmentos_moore[3] -attr @rip(#1c1f28) segmentos[3] -hierPin in_moore segmentos_moore[3] -pin in_moore|in_decoder_moore segmentos[3]
load net in_moore|segmentos_moore[4] -attr @name segmentos_moore[4] -attr @rip(#1c1f28) segmentos[4] -hierPin in_moore segmentos_moore[4] -pin in_moore|in_decoder_moore segmentos[4]
load net in_moore|segmentos_moore[5] -attr @name segmentos_moore[5] -attr @rip(#1c1f28) segmentos[5] -hierPin in_moore segmentos_moore[5] -pin in_moore|in_decoder_moore segmentos[5]
load net in_moore|segmentos_moore[6] -attr @name segmentos_moore[6] -attr @rip(#1c1f28) segmentos[6] -hierPin in_moore segmentos_moore[6] -pin in_moore|in_decoder_moore segmentos[6]
load net in_moore|in_estados|clk -attr @name clk -hierPin in_moore|in_estados clk -pin in_moore|in_estados|ns_out_reg[3:0] C
netloc in_moore|in_estados|clk 1 0 1 N 176
load net in_moore|in_estados|clutch_resultado -attr @name clutch_resultado -hierPin in_moore|in_estados clutch_resultado -pin in_moore|in_estados|ns_out_reg[3:0] CE
netloc in_moore|in_estados|clutch_resultado 1 0 1 N 196
load net in_moore|in_estados|ns_in[0] -attr @name ns_in[0] -attr @rip(#1c1f28) ns_in[0] -hierPin in_moore|in_estados ns_in[0] -pin in_moore|in_estados|ns_out_reg[3:0] D[0]
load net in_moore|in_estados|ns_in[1] -attr @name ns_in[1] -attr @rip(#1c1f28) ns_in[1] -hierPin in_moore|in_estados ns_in[1] -pin in_moore|in_estados|ns_out_reg[3:0] D[1]
load net in_moore|in_estados|ns_in[2] -attr @name ns_in[2] -attr @rip(#1c1f28) ns_in[2] -hierPin in_moore|in_estados ns_in[2] -pin in_moore|in_estados|ns_out_reg[3:0] D[2]
load net in_moore|in_estados|ns_in[3] -attr @name ns_in[3] -attr @rip(#1c1f28) ns_in[3] -hierPin in_moore|in_estados ns_in[3] -pin in_moore|in_estados|ns_out_reg[3:0] D[3]
load net in_moore|in_estados|ns_out[0] -attr @name ns_out[0] -attr @rip(#1c1f28) 0 -hierPin in_moore|in_estados ns_out[0] -pin in_moore|in_estados|ns_out_reg[3:0] Q[0]
load net in_moore|in_estados|ns_out[1] -attr @name ns_out[1] -attr @rip(#1c1f28) 1 -hierPin in_moore|in_estados ns_out[1] -pin in_moore|in_estados|ns_out_reg[3:0] Q[1]
load net in_moore|in_estados|ns_out[2] -attr @name ns_out[2] -attr @rip(#1c1f28) 2 -hierPin in_moore|in_estados ns_out[2] -pin in_moore|in_estados|ns_out_reg[3:0] Q[2]
load net in_moore|in_estados|ns_out[3] -attr @name ns_out[3] -attr @rip(#1c1f28) 3 -hierPin in_moore|in_estados ns_out[3] -pin in_moore|in_estados|ns_out_reg[3:0] Q[3]
load net in_moore|in_estados|rst_n -attr @name rst_n -hierPin in_moore|in_estados rst_n -pin in_moore|in_estados|ns_out_reg[3:0] CLR[3] -pin in_moore|in_estados|ns_out_reg[3:0] CLR[2] -pin in_moore|in_estados|ns_out_reg[3:0] CLR[0] -pin in_moore|in_estados|ns_out_reg[3:0] PRE[1]
netloc in_moore|in_estados|rst_n 1 0 1 470 126n
load net in_moore|in_decoder_moore|<const0> -ground -attr @name <const0> -pin in_moore|in_decoder_moore|segmentos_i__0 I0[6] -pin in_moore|in_decoder_moore|segmentos_i__0 I0[4] -pin in_moore|in_decoder_moore|segmentos_i__0 I0[2]
load net in_moore|in_decoder_moore|<const1> -power -attr @name <const1> -pin in_moore|in_decoder_moore|segmentos_i__0 I0[5] -pin in_moore|in_decoder_moore|segmentos_i__0 I0[3] -pin in_moore|in_decoder_moore|segmentos_i__0 I0[1] -pin in_moore|in_decoder_moore|segmentos_i__0 I0[0]
load net in_moore|in_decoder_moore|estado[0] -attr @name estado[0] -attr @rip(#1c1f28) estado[0] -hierPin in_moore|in_decoder_moore estado[0] -pin in_moore|in_decoder_moore|segmentos_i A[0] -pin in_moore|in_decoder_moore|segmentos_i__0 S
load net in_moore|in_decoder_moore|estado[1] -attr @name estado[1] -attr @rip(#1c1f28) estado[1] -hierPin in_moore|in_decoder_moore estado[1] -pin in_moore|in_decoder_moore|segmentos_i A[1]
load net in_moore|in_decoder_moore|estado[2] -attr @name estado[2] -attr @rip(#1c1f28) estado[2] -hierPin in_moore|in_decoder_moore estado[2] -pin in_moore|in_decoder_moore|segmentos_i A[2]
load net in_moore|in_decoder_moore|estado[3] -attr @name estado[3] -attr @rip(#1c1f28) estado[3] -hierPin in_moore|in_decoder_moore estado[3] -pin in_moore|in_decoder_moore|segmentos_i A[3]
load net in_moore|in_decoder_moore|segmentos[0] -attr @name segmentos[0] -attr @rip(#1c1f28) O[0] -hierPin in_moore|in_decoder_moore segmentos[0] -pin in_moore|in_decoder_moore|segmentos_i__0 O[0]
load net in_moore|in_decoder_moore|segmentos[1] -attr @name segmentos[1] -attr @rip(#1c1f28) O[1] -hierPin in_moore|in_decoder_moore segmentos[1] -pin in_moore|in_decoder_moore|segmentos_i__0 O[1]
load net in_moore|in_decoder_moore|segmentos[2] -attr @name segmentos[2] -attr @rip(#1c1f28) O[2] -hierPin in_moore|in_decoder_moore segmentos[2] -pin in_moore|in_decoder_moore|segmentos_i__0 O[2]
load net in_moore|in_decoder_moore|segmentos[3] -attr @name segmentos[3] -attr @rip(#1c1f28) O[3] -hierPin in_moore|in_decoder_moore segmentos[3] -pin in_moore|in_decoder_moore|segmentos_i__0 O[3]
load net in_moore|in_decoder_moore|segmentos[4] -attr @name segmentos[4] -attr @rip(#1c1f28) O[4] -hierPin in_moore|in_decoder_moore segmentos[4] -pin in_moore|in_decoder_moore|segmentos_i__0 O[4]
load net in_moore|in_decoder_moore|segmentos[5] -attr @name segmentos[5] -attr @rip(#1c1f28) O[5] -hierPin in_moore|in_decoder_moore segmentos[5] -pin in_moore|in_decoder_moore|segmentos_i__0 O[5]
load net in_moore|in_decoder_moore|segmentos[6] -attr @name segmentos[6] -attr @rip(#1c1f28) O[6] -hierPin in_moore|in_decoder_moore segmentos[6] -pin in_moore|in_decoder_moore|segmentos_i__0 O[6]
load net in_moore|in_decoder_moore|segmentos_i_n_0 -attr @name segmentos_i_n_0 -attr @rip(#1c1f28) O[6] -pin in_moore|in_decoder_moore|segmentos_i O[6] -pin in_moore|in_decoder_moore|segmentos_i__0 I1[6]
load net in_moore|in_decoder_moore|segmentos_i_n_1 -attr @name segmentos_i_n_1 -attr @rip(#1c1f28) O[5] -pin in_moore|in_decoder_moore|segmentos_i O[5] -pin in_moore|in_decoder_moore|segmentos_i__0 I1[5]
load net in_moore|in_decoder_moore|segmentos_i_n_2 -attr @name segmentos_i_n_2 -attr @rip(#1c1f28) O[4] -pin in_moore|in_decoder_moore|segmentos_i O[4] -pin in_moore|in_decoder_moore|segmentos_i__0 I1[4]
load net in_moore|in_decoder_moore|segmentos_i_n_3 -attr @name segmentos_i_n_3 -attr @rip(#1c1f28) O[3] -pin in_moore|in_decoder_moore|segmentos_i O[3] -pin in_moore|in_decoder_moore|segmentos_i__0 I1[3]
load net in_moore|in_decoder_moore|segmentos_i_n_4 -attr @name segmentos_i_n_4 -attr @rip(#1c1f28) O[2] -pin in_moore|in_decoder_moore|segmentos_i O[2] -pin in_moore|in_decoder_moore|segmentos_i__0 I1[2]
load net in_moore|in_decoder_moore|segmentos_i_n_5 -attr @name segmentos_i_n_5 -attr @rip(#1c1f28) O[1] -pin in_moore|in_decoder_moore|segmentos_i O[1] -pin in_moore|in_decoder_moore|segmentos_i__0 I1[1]
load net in_moore|in_decoder_moore|segmentos_i_n_6 -attr @name segmentos_i_n_6 -attr @rip(#1c1f28) O[0] -pin in_moore|in_decoder_moore|segmentos_i O[0] -pin in_moore|in_decoder_moore|segmentos_i__0 I1[0]
load net in_mealy|clutch_activo -attr @name clutch_activo -hierPin in_mealy clutch_activo -pin in_mealy|in_clutch clutch_resultado -pin in_mealy|in_error_vista clutch_resultado
netloc in_mealy|clutch_activo 1 2 2 3260 108 NJ
load net in_mealy|clutch_cambio -attr @name clutch_cambio -hierPin in_mealy clutch_cambio -pin in_mealy|in_clutch clutch_accion
netloc in_mealy|clutch_cambio 1 0 2 NJ 148 2340J
load net in_mealy|estado_actual[0] -attr @name estado_actual[0] -attr @rip(#1c1f28) estado_actual[0] -hierPin in_mealy estado_actual[0] -pin in_mealy|in_next_state current_state[0]
load net in_mealy|estado_actual[1] -attr @name estado_actual[1] -attr @rip(#1c1f28) estado_actual[1] -hierPin in_mealy estado_actual[1] -pin in_mealy|in_next_state current_state[1]
load net in_mealy|estado_actual[2] -attr @name estado_actual[2] -attr @rip(#1c1f28) estado_actual[2] -hierPin in_mealy estado_actual[2] -pin in_mealy|in_next_state current_state[2]
load net in_mealy|estado_actual[3] -attr @name estado_actual[3] -attr @rip(#1c1f28) estado_actual[3] -hierPin in_mealy estado_actual[3] -pin in_mealy|in_next_state current_state[3]
load net in_mealy|estado_siguiente[0] -attr @name estado_siguiente[0] -attr @rip(#1c1f28) next_state[0] -hierPin in_mealy estado_siguiente[0] -pin in_mealy|in_decoder_mealy estado[0] -pin in_mealy|in_next_state next_state[0]
load net in_mealy|estado_siguiente[1] -attr @name estado_siguiente[1] -attr @rip(#1c1f28) next_state[1] -hierPin in_mealy estado_siguiente[1] -pin in_mealy|in_decoder_mealy estado[1] -pin in_mealy|in_next_state next_state[1]
load net in_mealy|estado_siguiente[2] -attr @name estado_siguiente[2] -attr @rip(#1c1f28) next_state[2] -hierPin in_mealy estado_siguiente[2] -pin in_mealy|in_decoder_mealy estado[2] -pin in_mealy|in_next_state next_state[2]
load net in_mealy|estado_siguiente[3] -attr @name estado_siguiente[3] -attr @rip(#1c1f28) next_state[3] -hierPin in_mealy estado_siguiente[3] -pin in_mealy|in_decoder_mealy estado[3] -pin in_mealy|in_next_state next_state[3]
load net in_mealy|led_error -attr @name led_error -hierPin in_mealy led_error -pin in_mealy|in_error_vista shift_error
netloc in_mealy|led_error 1 3 1 4040 176n
load net in_mealy|palanca_cambios[0] -attr @name palanca_cambios[0] -attr @rip(#1c1f28) output_palanca[0] -pin in_mealy|in_caja output_palanca[0] -pin in_mealy|in_next_state posicion_de_palanca[0]
load net in_mealy|palanca_cambios[1] -attr @name palanca_cambios[1] -attr @rip(#1c1f28) output_palanca[1] -pin in_mealy|in_caja output_palanca[1] -pin in_mealy|in_next_state posicion_de_palanca[1]
load net in_mealy|palanca_de_cambio[0] -attr @name palanca_de_cambio[0] -attr @rip(#1c1f28) palanca_de_cambio[0] -hierPin in_mealy palanca_de_cambio[0] -pin in_mealy|in_caja palanca_accionada[0] -pin in_mealy|in_error_vista palanca[0]
load net in_mealy|palanca_de_cambio[1] -attr @name palanca_de_cambio[1] -attr @rip(#1c1f28) palanca_de_cambio[1] -hierPin in_mealy palanca_de_cambio[1] -pin in_mealy|in_caja palanca_accionada[1] -pin in_mealy|in_error_vista palanca[1]
load net in_mealy|segmentos_mealy[0] -attr @name segmentos_mealy[0] -attr @rip(#1c1f28) segmentos[0] -hierPin in_mealy segmentos_mealy[0] -pin in_mealy|in_decoder_mealy segmentos[0]
load net in_mealy|segmentos_mealy[1] -attr @name segmentos_mealy[1] -attr @rip(#1c1f28) segmentos[1] -hierPin in_mealy segmentos_mealy[1] -pin in_mealy|in_decoder_mealy segmentos[1]
load net in_mealy|segmentos_mealy[2] -attr @name segmentos_mealy[2] -attr @rip(#1c1f28) segmentos[2] -hierPin in_mealy segmentos_mealy[2] -pin in_mealy|in_decoder_mealy segmentos[2]
load net in_mealy|segmentos_mealy[3] -attr @name segmentos_mealy[3] -attr @rip(#1c1f28) segmentos[3] -hierPin in_mealy segmentos_mealy[3] -pin in_mealy|in_decoder_mealy segmentos[3]
load net in_mealy|segmentos_mealy[4] -attr @name segmentos_mealy[4] -attr @rip(#1c1f28) segmentos[4] -hierPin in_mealy segmentos_mealy[4] -pin in_mealy|in_decoder_mealy segmentos[4]
load net in_mealy|segmentos_mealy[5] -attr @name segmentos_mealy[5] -attr @rip(#1c1f28) segmentos[5] -hierPin in_mealy segmentos_mealy[5] -pin in_mealy|in_decoder_mealy segmentos[5]
load net in_mealy|segmentos_mealy[6] -attr @name segmentos_mealy[6] -attr @rip(#1c1f28) segmentos[6] -hierPin in_mealy segmentos_mealy[6] -pin in_mealy|in_decoder_mealy segmentos[6]
load net in_mealy|in_caja|palanca_accionada[0] -attr @name palanca_accionada[0] -attr @rip(#1c1f28) palanca_accionada[0] -hierPin in_mealy|in_caja output_palanca[0] -hierPin in_mealy|in_caja palanca_accionada[0]
load net in_mealy|in_caja|palanca_accionada[1] -attr @name palanca_accionada[1] -attr @rip(#1c1f28) palanca_accionada[1] -hierPin in_mealy|in_caja output_palanca[1] -hierPin in_mealy|in_caja palanca_accionada[1]
load net in_mealy|in_clutch|clutch_accion -attr @name clutch_accion -hierPin in_mealy|in_clutch clutch_accion -hierPin in_mealy|in_clutch clutch_resultado
netloc in_mealy|in_clutch|clutch_accion 1 0 1 NJ 146
load net in_mealy|in_next_state|<const0> -ground -attr @name <const0> -pin in_mealy|in_next_state|c_palanca_neutro_i I2 -pin in_mealy|in_next_state|c_palanca_neutro_i I3
load net in_mealy|in_next_state|<const1> -power -attr @name <const1> -pin in_mealy|in_next_state|c_palanca_neutro_i I1 -pin in_mealy|in_next_state|palanca_abajo_i I1 -pin in_mealy|in_next_state|palanca_arriba_i I1
load net in_mealy|in_next_state|current_state[0] -attr @name current_state[0] -attr @rip(#1c1f28) current_state[0] -hierPin in_mealy|in_next_state current_state[0] -pin in_mealy|in_next_state|c_palanca_neutro_i I0
load net in_mealy|in_next_state|current_state[1] -attr @name current_state[1] -attr @rip(#1c1f28) current_state[1] -hierPin in_mealy|in_next_state current_state[1] -pin in_mealy|in_next_state|c_estado_palanca_i I0[0] -pin in_mealy|in_next_state|c_estado_palanca_i I1[0] -pin in_mealy|in_next_state|palanca_abajo_i I0[0] -pin in_mealy|in_next_state|palanca_arriba_i I0[0]
load net in_mealy|in_next_state|current_state[2] -attr @name current_state[2] -attr @rip(#1c1f28) current_state[2] -hierPin in_mealy|in_next_state current_state[2] -pin in_mealy|in_next_state|c_estado_palanca_i I0[1] -pin in_mealy|in_next_state|c_estado_palanca_i I1[1] -pin in_mealy|in_next_state|palanca_abajo_i I0[1] -pin in_mealy|in_next_state|palanca_arriba_i I0[1]
load net in_mealy|in_next_state|current_state[3] -attr @name current_state[3] -attr @rip(#1c1f28) current_state[3] -hierPin in_mealy|in_next_state current_state[3] -pin in_mealy|in_next_state|c_estado_palanca_i I0[2] -pin in_mealy|in_next_state|c_estado_palanca_i I1[2] -pin in_mealy|in_next_state|palanca_abajo_i I0[2] -pin in_mealy|in_next_state|palanca_arriba_i I0[2]
load net in_mealy|in_next_state|next_state[0] -attr @name next_state[0] -attr @rip(#1c1f28) 0 -hierPin in_mealy|in_next_state next_state[0] -pin in_mealy|in_next_state|c_palanca_neutro_i O
netloc in_mealy|in_next_state|next_state[0] 1 2 1 3120 304n
load net in_mealy|in_next_state|next_state[1] -attr @name next_state[1] -attr @rip(#1c1f28) O[0] -hierPin in_mealy|in_next_state next_state[1] -pin in_mealy|in_next_state|c_estado_palanca_i O[0]
load net in_mealy|in_next_state|next_state[2] -attr @name next_state[2] -attr @rip(#1c1f28) O[1] -hierPin in_mealy|in_next_state next_state[2] -pin in_mealy|in_next_state|c_estado_palanca_i O[1]
load net in_mealy|in_next_state|next_state[3] -attr @name next_state[3] -attr @rip(#1c1f28) O[2] -hierPin in_mealy|in_next_state next_state[3] -pin in_mealy|in_next_state|c_estado_palanca_i O[2]
load net in_mealy|in_next_state|palanca_abajo[0] -attr @name palanca_abajo[0] -attr @rip(#1c1f28) O[0] -pin in_mealy|in_next_state|c_estado_palanca_i I3[0] -pin in_mealy|in_next_state|palanca_abajo_i O[0]
load net in_mealy|in_next_state|palanca_abajo[1] -attr @name palanca_abajo[1] -attr @rip(#1c1f28) O[1] -pin in_mealy|in_next_state|c_estado_palanca_i I3[1] -pin in_mealy|in_next_state|palanca_abajo_i O[1]
load net in_mealy|in_next_state|palanca_abajo[2] -attr @name palanca_abajo[2] -attr @rip(#1c1f28) O[2] -pin in_mealy|in_next_state|c_estado_palanca_i I3[2] -pin in_mealy|in_next_state|palanca_abajo_i O[2]
load net in_mealy|in_next_state|palanca_arriba[0] -attr @name palanca_arriba[0] -attr @rip(#1c1f28) O[0] -pin in_mealy|in_next_state|c_estado_palanca_i I2[0] -pin in_mealy|in_next_state|palanca_arriba_i O[0]
load net in_mealy|in_next_state|palanca_arriba[1] -attr @name palanca_arriba[1] -attr @rip(#1c1f28) O[1] -pin in_mealy|in_next_state|c_estado_palanca_i I2[1] -pin in_mealy|in_next_state|palanca_arriba_i O[1]
load net in_mealy|in_next_state|palanca_arriba[2] -attr @name palanca_arriba[2] -attr @rip(#1c1f28) O[2] -pin in_mealy|in_next_state|c_estado_palanca_i I2[2] -pin in_mealy|in_next_state|palanca_arriba_i O[2]
load net in_mealy|in_next_state|posicion_de_palanca[0] -attr @name posicion_de_palanca[0] -attr @rip(#1c1f28) posicion_de_palanca[0] -hierPin in_mealy|in_next_state posicion_de_palanca[0] -pin in_mealy|in_next_state|c_estado_palanca_i S[0] -pin in_mealy|in_next_state|c_palanca_neutro_i S[0]
load net in_mealy|in_next_state|posicion_de_palanca[1] -attr @name posicion_de_palanca[1] -attr @rip(#1c1f28) posicion_de_palanca[1] -hierPin in_mealy|in_next_state posicion_de_palanca[1] -pin in_mealy|in_next_state|c_estado_palanca_i S[1] -pin in_mealy|in_next_state|c_palanca_neutro_i S[1]
load net in_mealy|in_decoder_mealy|<const0> -ground -attr @name <const0> -pin in_mealy|in_decoder_mealy|segmentos_i__0 I0[6] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I0[4] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I0[2]
load net in_mealy|in_decoder_mealy|<const1> -power -attr @name <const1> -pin in_mealy|in_decoder_mealy|segmentos_i__0 I0[5] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I0[3] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I0[1] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I0[0]
load net in_mealy|in_decoder_mealy|estado[0] -attr @name estado[0] -attr @rip(#1c1f28) estado[0] -hierPin in_mealy|in_decoder_mealy estado[0] -pin in_mealy|in_decoder_mealy|segmentos_i A[0] -pin in_mealy|in_decoder_mealy|segmentos_i__0 S
load net in_mealy|in_decoder_mealy|estado[1] -attr @name estado[1] -attr @rip(#1c1f28) estado[1] -hierPin in_mealy|in_decoder_mealy estado[1] -pin in_mealy|in_decoder_mealy|segmentos_i A[1]
load net in_mealy|in_decoder_mealy|estado[2] -attr @name estado[2] -attr @rip(#1c1f28) estado[2] -hierPin in_mealy|in_decoder_mealy estado[2] -pin in_mealy|in_decoder_mealy|segmentos_i A[2]
load net in_mealy|in_decoder_mealy|estado[3] -attr @name estado[3] -attr @rip(#1c1f28) estado[3] -hierPin in_mealy|in_decoder_mealy estado[3] -pin in_mealy|in_decoder_mealy|segmentos_i A[3]
load net in_mealy|in_decoder_mealy|segmentos[0] -attr @name segmentos[0] -attr @rip(#1c1f28) O[0] -hierPin in_mealy|in_decoder_mealy segmentos[0] -pin in_mealy|in_decoder_mealy|segmentos_i__0 O[0]
load net in_mealy|in_decoder_mealy|segmentos[1] -attr @name segmentos[1] -attr @rip(#1c1f28) O[1] -hierPin in_mealy|in_decoder_mealy segmentos[1] -pin in_mealy|in_decoder_mealy|segmentos_i__0 O[1]
load net in_mealy|in_decoder_mealy|segmentos[2] -attr @name segmentos[2] -attr @rip(#1c1f28) O[2] -hierPin in_mealy|in_decoder_mealy segmentos[2] -pin in_mealy|in_decoder_mealy|segmentos_i__0 O[2]
load net in_mealy|in_decoder_mealy|segmentos[3] -attr @name segmentos[3] -attr @rip(#1c1f28) O[3] -hierPin in_mealy|in_decoder_mealy segmentos[3] -pin in_mealy|in_decoder_mealy|segmentos_i__0 O[3]
load net in_mealy|in_decoder_mealy|segmentos[4] -attr @name segmentos[4] -attr @rip(#1c1f28) O[4] -hierPin in_mealy|in_decoder_mealy segmentos[4] -pin in_mealy|in_decoder_mealy|segmentos_i__0 O[4]
load net in_mealy|in_decoder_mealy|segmentos[5] -attr @name segmentos[5] -attr @rip(#1c1f28) O[5] -hierPin in_mealy|in_decoder_mealy segmentos[5] -pin in_mealy|in_decoder_mealy|segmentos_i__0 O[5]
load net in_mealy|in_decoder_mealy|segmentos[6] -attr @name segmentos[6] -attr @rip(#1c1f28) O[6] -hierPin in_mealy|in_decoder_mealy segmentos[6] -pin in_mealy|in_decoder_mealy|segmentos_i__0 O[6]
load net in_mealy|in_decoder_mealy|segmentos_i_n_0 -attr @name segmentos_i_n_0 -attr @rip(#1c1f28) O[6] -pin in_mealy|in_decoder_mealy|segmentos_i O[6] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I1[6]
load net in_mealy|in_decoder_mealy|segmentos_i_n_1 -attr @name segmentos_i_n_1 -attr @rip(#1c1f28) O[5] -pin in_mealy|in_decoder_mealy|segmentos_i O[5] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I1[5]
load net in_mealy|in_decoder_mealy|segmentos_i_n_2 -attr @name segmentos_i_n_2 -attr @rip(#1c1f28) O[4] -pin in_mealy|in_decoder_mealy|segmentos_i O[4] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I1[4]
load net in_mealy|in_decoder_mealy|segmentos_i_n_3 -attr @name segmentos_i_n_3 -attr @rip(#1c1f28) O[3] -pin in_mealy|in_decoder_mealy|segmentos_i O[3] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I1[3]
load net in_mealy|in_decoder_mealy|segmentos_i_n_4 -attr @name segmentos_i_n_4 -attr @rip(#1c1f28) O[2] -pin in_mealy|in_decoder_mealy|segmentos_i O[2] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I1[2]
load net in_mealy|in_decoder_mealy|segmentos_i_n_5 -attr @name segmentos_i_n_5 -attr @rip(#1c1f28) O[1] -pin in_mealy|in_decoder_mealy|segmentos_i O[1] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I1[1]
load net in_mealy|in_decoder_mealy|segmentos_i_n_6 -attr @name segmentos_i_n_6 -attr @rip(#1c1f28) O[0] -pin in_mealy|in_decoder_mealy|segmentos_i O[0] -pin in_mealy|in_decoder_mealy|segmentos_i__0 I1[0]
load net in_mealy|in_error_vista|clutch_resultado -attr @name clutch_resultado -hierPin in_mealy|in_error_vista clutch_resultado -pin in_mealy|in_error_vista|shift_error_i I1
netloc in_mealy|in_error_vista|clutch_resultado 1 0 2 NJ 156 3630
load net in_mealy|in_error_vista|palanca[0] -attr @name palanca[0] -attr @rip(#1c1f28) palanca[0] -hierPin in_mealy|in_error_vista palanca[0] -pin in_mealy|in_error_vista|shift_error0_i I0[0]
load net in_mealy|in_error_vista|palanca[1] -attr @name palanca[1] -attr @rip(#1c1f28) palanca[1] -hierPin in_mealy|in_error_vista palanca[1] -pin in_mealy|in_error_vista|shift_error0_i I0[1]
load net in_mealy|in_error_vista|shift_error -attr @name shift_error -hierPin in_mealy|in_error_vista shift_error -pin in_mealy|in_error_vista|shift_error_i O
netloc in_mealy|in_error_vista|shift_error 1 2 1 N 176
load net in_mealy|in_error_vista|shift_error0 -attr @name shift_error0 -pin in_mealy|in_error_vista|shift_error0_i O -pin in_mealy|in_error_vista|shift_error_i I0
netloc in_mealy|in_error_vista|shift_error0 1 1 1 3650 166n
load netBundle @in_mealy|in_error_vista|palanc 2 in_mealy|in_error_vista|palanca[1] in_mealy|in_error_vista|palanca[0] -autobundled
netbloc @in_mealy|in_error_vista|palanc 1 0 1 NJ 206
load netBundle @in_mealy|in_decoder_mealy|esta 4 in_mealy|in_decoder_mealy|estado[3] in_mealy|in_decoder_mealy|estado[2] in_mealy|in_decoder_mealy|estado[1] in_mealy|in_decoder_mealy|estado[0] -autobundled
netbloc @in_mealy|in_decoder_mealy|esta 1 0 2 3410 434 3570J
load netBundle @in_mealy|in_decoder_mealy|segm 7 in_mealy|in_decoder_mealy|segmentos_i_n_0 in_mealy|in_decoder_mealy|segmentos_i_n_1 in_mealy|in_decoder_mealy|segmentos_i_n_2 in_mealy|in_decoder_mealy|segmentos_i_n_3 in_mealy|in_decoder_mealy|segmentos_i_n_4 in_mealy|in_decoder_mealy|segmentos_i_n_5 in_mealy|in_decoder_mealy|segmentos_i_n_6 -autobundled
netbloc @in_mealy|in_decoder_mealy|segm 1 1 1 NJ 384
load netBundle @in_mealy|in_decoder_mealy|segm_1 7 in_mealy|in_decoder_mealy|segmentos[6] in_mealy|in_decoder_mealy|segmentos[5] in_mealy|in_decoder_mealy|segmentos[4] in_mealy|in_decoder_mealy|segmentos[3] in_mealy|in_decoder_mealy|segmentos[2] in_mealy|in_decoder_mealy|segmentos[1] in_mealy|in_decoder_mealy|segmentos[0] -autobundled
netbloc @in_mealy|in_decoder_mealy|segm_1 1 2 1 N 374
load netBundle @in_mealy|in_next_state|current 4 in_mealy|in_next_state|current_state[3] in_mealy|in_next_state|current_state[2] in_mealy|in_next_state|current_state[1] in_mealy|in_next_state|current_state[0] -autobundled
netbloc @in_mealy|in_next_state|current 1 0 2 2540 334 2800
load netBundle @in_mealy|in_next_state|posicio 2 in_mealy|in_next_state|posicion_de_palanca[1] in_mealy|in_next_state|posicion_de_palanca[0] -autobundled
netbloc @in_mealy|in_next_state|posicio 1 0 2 NJ 434 2840
load netBundle @in_mealy|in_next_state|next_st 3 in_mealy|in_next_state|next_state[3] in_mealy|in_next_state|next_state[2] in_mealy|in_next_state|next_state[1] -autobundled
netbloc @in_mealy|in_next_state|next_st 1 2 1 3100 304
load netBundle @in_mealy|in_next_state|palanca 3 in_mealy|in_next_state|palanca_abajo[2] in_mealy|in_next_state|palanca_abajo[1] in_mealy|in_next_state|palanca_abajo[0] -autobundled
netbloc @in_mealy|in_next_state|palanca 1 1 1 2820 334n
load netBundle @in_mealy|in_next_state|palanca_1 3 in_mealy|in_next_state|palanca_arriba[2] in_mealy|in_next_state|palanca_arriba[1] in_mealy|in_next_state|palanca_arriba[0] -autobundled
netbloc @in_mealy|in_next_state|palanca_1 1 1 1 2780 284n
load netBundle @in_mealy|in_caja|palanca_accio 2 in_mealy|in_caja|palanca_accionada[1] in_mealy|in_caja|palanca_accionada[0] -autobundled
netbloc @in_mealy|in_caja|palanca_accio 1 0 1 NJ 266
load netBundle @in_mealy|estado_actual 4 in_mealy|estado_actual[3] in_mealy|estado_actual[2] in_mealy|estado_actual[1] in_mealy|estado_actual[0] -autobundled
netbloc @in_mealy|estado_actual 1 0 2 NJ 168 2340
load netBundle @in_mealy|palanca_de_cambio 2 in_mealy|palanca_de_cambio[1] in_mealy|palanca_de_cambio[0] -autobundled
netbloc @in_mealy|palanca_de_cambio 1 0 3 1960 188 2320J 196 3260
load netBundle @in_mealy|palanca_cambios 2 in_mealy|palanca_cambios[1] in_mealy|palanca_cambios[0] -autobundled
netbloc @in_mealy|palanca_cambios 1 1 1 2320 266n
load netBundle @in_mealy|segmentos_mealy 7 in_mealy|segmentos_mealy[6] in_mealy|segmentos_mealy[5] in_mealy|segmentos_mealy[4] in_mealy|segmentos_mealy[3] in_mealy|segmentos_mealy[2] in_mealy|segmentos_mealy[1] in_mealy|segmentos_mealy[0] -autobundled
netbloc @in_mealy|segmentos_mealy 1 3 1 4040J 288n
load netBundle @in_mealy|estado_siguiente 4 in_mealy|estado_siguiente[3] in_mealy|estado_siguiente[2] in_mealy|estado_siguiente[1] in_mealy|estado_siguiente[0] -autobundled
netbloc @in_mealy|estado_siguiente 1 2 2 3260 276 4020J
load netBundle @in_moore|in_decoder_moore|esta 4 in_moore|in_decoder_moore|estado[3] in_moore|in_decoder_moore|estado[2] in_moore|in_decoder_moore|estado[1] in_moore|in_decoder_moore|estado[0] -autobundled
netbloc @in_moore|in_decoder_moore|esta 1 0 2 910 266 1070J
load netBundle @in_moore|in_decoder_moore|segm 7 in_moore|in_decoder_moore|segmentos_i_n_0 in_moore|in_decoder_moore|segmentos_i_n_1 in_moore|in_decoder_moore|segmentos_i_n_2 in_moore|in_decoder_moore|segmentos_i_n_3 in_moore|in_decoder_moore|segmentos_i_n_4 in_moore|in_decoder_moore|segmentos_i_n_5 in_moore|in_decoder_moore|segmentos_i_n_6 -autobundled
netbloc @in_moore|in_decoder_moore|segm 1 1 1 NJ 216
load netBundle @in_moore|in_decoder_moore|segm_1 7 in_moore|in_decoder_moore|segmentos[6] in_moore|in_decoder_moore|segmentos[5] in_moore|in_decoder_moore|segmentos[4] in_moore|in_decoder_moore|segmentos[3] in_moore|in_decoder_moore|segmentos[2] in_moore|in_decoder_moore|segmentos[1] in_moore|in_decoder_moore|segmentos[0] -autobundled
netbloc @in_moore|in_decoder_moore|segm_1 1 2 1 N 206
load netBundle @in_moore|in_estados|ns_in 4 in_moore|in_estados|ns_in[3] in_moore|in_estados|ns_in[2] in_moore|in_estados|ns_in[1] in_moore|in_estados|ns_in[0] -autobundled
netbloc @in_moore|in_estados|ns_in 1 0 1 N 216
load netBundle @in_moore|in_estados|ns_out 4 in_moore|in_estados|ns_out[3] in_moore|in_estados|ns_out[2] in_moore|in_estados|ns_out[1] in_moore|in_estados|ns_out[0] -autobundled
netbloc @in_moore|in_estados|ns_out 1 1 1 N 196
load netBundle @in_moore|estado_siguiente 4 in_moore|estado_siguiente[3] in_moore|estado_siguiente[2] in_moore|estado_siguiente[1] in_moore|estado_siguiente[0] -autobundled
netbloc @in_moore|estado_siguiente 1 0 1 280 188n
load netBundle @in_moore|segmentos_moore 7 in_moore|segmentos_moore[6] in_moore|segmentos_moore[5] in_moore|segmentos_moore[4] in_moore|segmentos_moore[3] in_moore|segmentos_moore[2] in_moore|segmentos_moore[1] in_moore|segmentos_moore[0] -autobundled
netbloc @in_moore|segmentos_moore 1 2 1 1520J 168n
load netBundle @in_moore|estado_actual 4 in_moore|estado_actual[3] in_moore|estado_actual[2] in_moore|estado_actual[1] in_moore|estado_actual[0] -autobundled
netbloc @in_moore|estado_actual 1 1 2 780 108 NJ
load netBundle @palanca_de_cambio 2 palanca_de_cambio[1] palanca_de_cambio[0] -autobundled
netbloc @palanca_de_cambio 1 0 2 20J 358 1750J
load netBundle @segmentos_mealy 7 segmentos_mealy[6] segmentos_mealy[5] segmentos_mealy[4] segmentos_mealy[3] segmentos_mealy[2] segmentos_mealy[1] segmentos_mealy[0] -autobundled
netbloc @segmentos_mealy 1 2 1 4280J 180n
load netBundle @segmentos_moore 7 segmentos_moore[6] segmentos_moore[5] segmentos_moore[4] segmentos_moore[3] segmentos_moore[2] segmentos_moore[1] segmentos_moore[0] -autobundled
netbloc @segmentos_moore 1 1 2 1710J 658 4300J
load netBundle @estados_futuros 4 estados_futuros[3] estados_futuros[2] estados_futuros[1] estados_futuros[0] -autobundled
netbloc @estados_futuros 1 0 3 60 50 NJ 50 4220
load netBundle @estados_actuales 4 estados_actuales[3] estados_actuales[2] estados_actuales[1] estados_actuales[0] -autobundled
netbloc @estados_actuales 1 1 1 1730 108n
levelinfo -pg 1 0 230 1930 4320
levelinfo -hier in_mealy * 2120 2510 3380 *
levelinfo -hier in_moore * 440 880 *
levelinfo -hier in_moore|in_decoder_moore * 940 1270 *
levelinfo -hier in_moore|in_estados * 500 *
levelinfo -hier in_mealy|in_caja * *
levelinfo -hier in_mealy|in_clutch * *
levelinfo -hier in_mealy|in_decoder_mealy * 3440 3770 *
levelinfo -hier in_mealy|in_error_vista * 3460 3700 *
levelinfo -hier in_mealy|in_next_state * 2630 2980 *
pagesize -pg 1 -db -bbox -sgen -200 0 4520 670
pagesize -hier in_mealy -db -bbox -sgen 1930 78 4070 628
pagesize -hier in_moore -db -bbox -sgen 230 78 1550 328
pagesize -hier in_moore|in_decoder_moore -db -bbox -sgen 880 136 1400 296
pagesize -hier in_moore|in_estados -db -bbox -sgen 440 116 680 296
pagesize -hier in_mealy|in_caja -db -bbox -sgen 2120 236 2180 286
pagesize -hier in_mealy|in_clutch -db -bbox -sgen 2510 116 2570 166
pagesize -hier in_mealy|in_decoder_mealy -db -bbox -sgen 3380 304 3900 464
pagesize -hier in_mealy|in_error_vista -db -bbox -sgen 3380 136 3820 246
pagesize -hier in_mealy|in_next_state -db -bbox -sgen 2510 224 3150 594
show
zoom 0.384481
scrollpos -150 -93
#
# initialize ictrl to current module top_view work:top_view:NOFILE
ictrl init topinfo |
