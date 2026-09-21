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
module new Top_view work:Top_view:NOFILE -nosplit
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol registro_estados work:registro_estados:NOFILE HIERBOX pin clk_IBUF_BUFG input.left pin rst_n_IBUF input.left pinBus D input.left [3:0] pinBus E input.left [0:0] pinBus Q output.right [3:0] pinBus palanca_de_cambio_IBUF input.left [1:0] pinBus segmentos_mealy_OBUF output.right [5:0] pinBus segmentos_moore_OBUF output.right [5:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol next_state_logic work:next_state_logic:NOFILE HIERBOX pinBus D output.right [3:0] pinBus Q input.left [3:0] pinBus palanca_de_cambio_IBUF input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol LUT1 hdi_primitives BOX pin O output.right pin I0 input.left fillcolor 1
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load symbol FDPE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin PRE input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 40
load port clutch_cambio input -pg 1 -lvl 0 -x 0 -y 110
load port led_error output -pg 1 -lvl 5 -x 2330 -y 90
load port rst_n input -pg 1 -lvl 0 -x 0 -y 320
load portBus palanca_de_cambio input [1:0] -attr @name palanca_de_cambio[1:0] -pg 1 -lvl 0 -x 0 -y 190
load portBus segmentos_mealy output [6:0] -attr @name segmentos_mealy[6:0] -pg 1 -lvl 5 -x 2330 -y 160
load portBus segmentos_moore output [6:0] -attr @name segmentos_moore[6:0] -pg 1 -lvl 5 -x 2330 -y 650
load inst clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#1c1f28) BUFG -pg 1 -lvl 2 -x 530 -y 40
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 1 -x 60 -y 40
load inst clutch_cambio_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 530 -y 110
load inst in_estados registro_estados work:registro_estados:NOFILE -autohide -attr @cell(#1c1f28) registro_estados -attr @fillcolor #ffffff -pinBusAttr D @name D[3:0] -pinBusAttr E @name E -pinBusAttr Q @name Q[3:0] -pinBusAttr palanca_de_cambio_IBUF @name palanca_de_cambio_IBUF[1:0] -pinBusAttr segmentos_mealy_OBUF @name segmentos_mealy_OBUF[5:0] -pinBusAttr segmentos_moore_OBUF @name segmentos_moore_OBUF[5:0] -pg 1 -lvl 3 -x 1104 -y 238
load inst in_next_state next_state_logic work:next_state_logic:NOFILE -autohide -attr @cell(#1c1f28) next_state_logic -attr @fillcolor #ffffff -pinBusAttr D @name D[3:0] -pinBusAttr Q @name Q[3:0] -pinBusAttr palanca_de_cambio_IBUF @name palanca_de_cambio_IBUF[1:0] -pg 1 -lvl 2 -x 530 -y 198
load inst led_error_OBUF_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 90
load inst led_error_OBUF_inst_i_1 LUT3 hdi_primitives -attr @cell(#1c1f28) LUT3 -pg 1 -lvl 3 -x 1104 -y 60
load inst palanca_de_cambio_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 1 -x 60 -y 190
load inst palanca_de_cambio_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 1 -x 60 -y 260
load inst rst_n_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 530 -y 748
load inst segmentos_mealy_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 160
load inst segmentos_mealy_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 230
load inst segmentos_mealy_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 300
load inst segmentos_mealy_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 370
load inst segmentos_mealy_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 440
load inst segmentos_mealy_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 510
load inst segmentos_mealy_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 580
load inst segmentos_moore_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 650
load inst segmentos_moore_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 720
load inst segmentos_moore_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 790
load inst segmentos_moore_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 860
load inst segmentos_moore_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 930
load inst segmentos_moore_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 1000
load inst segmentos_moore_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 4 -x 2070 -y 1070
load inst in_estados|ns_out[3]_i_2 LUT1 hdi_primitives -hier in_estados -attr @name ns_out[3]_i_2 -attr @cell(#1c1f28) LUT1 -pg 1 -lvl 1 -x 1154 -y 698
load inst in_estados|ns_out_reg[0] FDCE hdi_primitives -hier in_estados -attr @name ns_out_reg[0] -attr @cell(#1c1f28) FDCE -pg 1 -lvl 2 -x 1354 -y 288
load inst in_estados|ns_out_reg[1] FDPE hdi_primitives -hier in_estados -attr @name ns_out_reg[1] -attr @cell(#1c1f28) FDPE -pg 1 -lvl 2 -x 1354 -y 438
load inst in_estados|ns_out_reg[2] FDCE hdi_primitives -hier in_estados -attr @name ns_out_reg[2] -attr @cell(#1c1f28) FDCE -pg 1 -lvl 2 -x 1354 -y 588
load inst in_estados|ns_out_reg[3] FDCE hdi_primitives -hier in_estados -attr @name ns_out_reg[3] -attr @cell(#1c1f28) FDCE -pg 1 -lvl 2 -x 1354 -y 748
load inst in_estados|segmentos_mealy_OBUF[1]_inst_i_1 LUT6 hdi_primitives -hier in_estados -attr @name segmentos_mealy_OBUF[1]_inst_i_1 -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 3 -x 1594 -y 238
load inst in_estados|segmentos_mealy_OBUF[2]_inst_i_1 LUT6 hdi_primitives -hier in_estados -attr @name segmentos_mealy_OBUF[2]_inst_i_1 -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 3 -x 1594 -y 408
load inst in_estados|segmentos_mealy_OBUF[3]_inst_i_1 LUT6 hdi_primitives -hier in_estados -attr @name segmentos_mealy_OBUF[3]_inst_i_1 -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 3 -x 1594 -y 578
load inst in_estados|segmentos_mealy_OBUF[4]_inst_i_1 LUT6 hdi_primitives -hier in_estados -attr @name segmentos_mealy_OBUF[4]_inst_i_1 -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 3 -x 1594 -y 748
load inst in_estados|segmentos_mealy_OBUF[5]_inst_i_1 LUT6 hdi_primitives -hier in_estados -attr @name segmentos_mealy_OBUF[5]_inst_i_1 -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 3 -x 1594 -y 918
load inst in_estados|segmentos_mealy_OBUF[6]_inst_i_1 LUT6 hdi_primitives -hier in_estados -attr @name segmentos_mealy_OBUF[6]_inst_i_1 -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 3 -x 1594 -y 1098
load inst in_estados|segmentos_moore_OBUF[1]_inst_i_1 LUT4 hdi_primitives -hier in_estados -attr @name segmentos_moore_OBUF[1]_inst_i_1 -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 3 -x 1594 -y 1268
load inst in_estados|segmentos_moore_OBUF[2]_inst_i_1 LUT4 hdi_primitives -hier in_estados -attr @name segmentos_moore_OBUF[2]_inst_i_1 -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 3 -x 1594 -y 1398
load inst in_estados|segmentos_moore_OBUF[3]_inst_i_1 LUT4 hdi_primitives -hier in_estados -attr @name segmentos_moore_OBUF[3]_inst_i_1 -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 3 -x 1594 -y 1528
load inst in_estados|segmentos_moore_OBUF[4]_inst_i_1 LUT4 hdi_primitives -hier in_estados -attr @name segmentos_moore_OBUF[4]_inst_i_1 -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 3 -x 1594 -y 1658
load inst in_estados|segmentos_moore_OBUF[5]_inst_i_1 LUT4 hdi_primitives -hier in_estados -attr @name segmentos_moore_OBUF[5]_inst_i_1 -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 3 -x 1594 -y 1788
load inst in_estados|segmentos_moore_OBUF[6]_inst_i_1 LUT4 hdi_primitives -hier in_estados -attr @name segmentos_moore_OBUF[6]_inst_i_1 -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 3 -x 1594 -y 1918
load inst in_next_state|next_state LUT3 hdi_primitives -hier in_next_state -attr @name next_state -attr @cell(#1c1f28) LUT3 -pg 1 -lvl 1 -x 620 -y 568
load inst in_next_state|ns_out[1]_i_1 LUT2 hdi_primitives -hier in_next_state -attr @name ns_out[1]_i_1 -attr @cell(#1c1f28) LUT2 -pg 1 -lvl 1 -x 620 -y 198
load inst in_next_state|ns_out[2]_i_1 LUT4 hdi_primitives -hier in_next_state -attr @name ns_out[2]_i_1 -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 1 -x 620 -y 288
load inst in_next_state|ns_out[3]_i_1 LUT5 hdi_primitives -hier in_next_state -attr @name ns_out[3]_i_1 -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 1 -x 620 -y 418
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 40
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O
netloc clk_IBUF 1 1 1 NJ 40
load net clk_IBUF_BUFG -pin clk_IBUF_BUFG_inst O -pin in_estados clk_IBUF_BUFG
netloc clk_IBUF_BUFG 1 2 1 854J 40n
load net clutch_cambio -port clutch_cambio -pin clutch_cambio_IBUF_inst I
netloc clutch_cambio 1 0 2 NJ 110 NJ
load net clutch_cambio_IBUF -attr @rip(#1c1f28) 0 -pin clutch_cambio_IBUF_inst O -pin in_estados E[0] -pin led_error_OBUF_inst_i_1 I2
netloc clutch_cambio_IBUF 1 2 1 914 110n
load net estados_actuales[0] -attr @rip(#1c1f28) Q[0] -pin in_estados Q[0] -pin in_next_state Q[0]
load net estados_futuros[0] -attr @rip(#1c1f28) D[0] -pin in_estados D[0] -pin in_next_state D[0]
load net in_next_state_n_0 -attr @rip(#1c1f28) D[3] -pin in_estados D[3] -pin in_next_state D[3]
load net in_next_state_n_1 -attr @rip(#1c1f28) D[2] -pin in_estados D[2] -pin in_next_state D[2]
load net in_next_state_n_2 -attr @rip(#1c1f28) D[1] -pin in_estados D[1] -pin in_next_state D[1]
load net led_error -port led_error -pin led_error_OBUF_inst O
netloc led_error 1 4 1 NJ 90
load net led_error_OBUF -pin led_error_OBUF_inst I -pin led_error_OBUF_inst_i_1 O
netloc led_error_OBUF 1 3 1 NJ 90
load net palanca_de_cambio[0] -attr @rip(#1c1f28) palanca_de_cambio[0] -port palanca_de_cambio[0] -pin palanca_de_cambio_IBUF[0]_inst I
load net palanca_de_cambio[1] -attr @rip(#1c1f28) palanca_de_cambio[1] -port palanca_de_cambio[1] -pin palanca_de_cambio_IBUF[1]_inst I
load net palanca_de_cambio_IBUF[0] -attr @rip(#1c1f28) 0 -pin in_estados palanca_de_cambio_IBUF[0] -pin in_next_state palanca_de_cambio_IBUF[0] -pin led_error_OBUF_inst_i_1 I1 -pin palanca_de_cambio_IBUF[0]_inst O
load net palanca_de_cambio_IBUF[1] -attr @rip(#1c1f28) 1 -pin in_estados palanca_de_cambio_IBUF[1] -pin in_next_state palanca_de_cambio_IBUF[1] -pin led_error_OBUF_inst_i_1 I0 -pin palanca_de_cambio_IBUF[1]_inst O
load net q_gear[0] -attr @rip(#1c1f28) Q[1] -pin in_estados Q[1] -pin in_next_state Q[1]
load net q_gear[1] -attr @rip(#1c1f28) Q[2] -pin in_estados Q[2] -pin in_next_state Q[2]
load net q_gear[2] -attr @rip(#1c1f28) Q[3] -pin in_estados Q[3] -pin in_next_state Q[3]
load net rst_n -port rst_n -pin rst_n_IBUF_inst I
netloc rst_n 1 0 2 NJ 320 300J
load net rst_n_IBUF -pin in_estados rst_n_IBUF -pin rst_n_IBUF_inst O
netloc rst_n_IBUF 1 2 1 914J 708n
load net segmentos_mealy[0] -attr @rip(#1c1f28) 0 -port segmentos_mealy[0] -pin segmentos_mealy_OBUF[0]_inst O
load net segmentos_mealy[1] -attr @rip(#1c1f28) 1 -port segmentos_mealy[1] -pin segmentos_mealy_OBUF[1]_inst O
load net segmentos_mealy[2] -attr @rip(#1c1f28) 2 -port segmentos_mealy[2] -pin segmentos_mealy_OBUF[2]_inst O
load net segmentos_mealy[3] -attr @rip(#1c1f28) 3 -port segmentos_mealy[3] -pin segmentos_mealy_OBUF[3]_inst O
load net segmentos_mealy[4] -attr @rip(#1c1f28) 4 -port segmentos_mealy[4] -pin segmentos_mealy_OBUF[4]_inst O
load net segmentos_mealy[5] -attr @rip(#1c1f28) 5 -port segmentos_mealy[5] -pin segmentos_mealy_OBUF[5]_inst O
load net segmentos_mealy[6] -attr @rip(#1c1f28) 6 -port segmentos_mealy[6] -pin segmentos_mealy_OBUF[6]_inst O
load net segmentos_mealy_OBUF[0] -attr @rip(#1c1f28) segmentos_mealy_OBUF[0] -pin in_estados segmentos_mealy_OBUF[0] -pin segmentos_mealy_OBUF[0]_inst I -pin segmentos_mealy_OBUF[3]_inst I
load net segmentos_mealy_OBUF[1] -attr @rip(#1c1f28) segmentos_mealy_OBUF[1] -pin in_estados segmentos_mealy_OBUF[1] -pin segmentos_mealy_OBUF[1]_inst I
load net segmentos_mealy_OBUF[2] -attr @rip(#1c1f28) segmentos_mealy_OBUF[2] -pin in_estados segmentos_mealy_OBUF[2] -pin segmentos_mealy_OBUF[2]_inst I
load net segmentos_mealy_OBUF[4] -attr @rip(#1c1f28) segmentos_mealy_OBUF[3] -pin in_estados segmentos_mealy_OBUF[3] -pin segmentos_mealy_OBUF[4]_inst I
load net segmentos_mealy_OBUF[5] -attr @rip(#1c1f28) segmentos_mealy_OBUF[4] -pin in_estados segmentos_mealy_OBUF[4] -pin segmentos_mealy_OBUF[5]_inst I
load net segmentos_mealy_OBUF[6] -attr @rip(#1c1f28) segmentos_mealy_OBUF[5] -pin in_estados segmentos_mealy_OBUF[5] -pin segmentos_mealy_OBUF[6]_inst I
load net segmentos_moore[0] -attr @rip(#1c1f28) 0 -port segmentos_moore[0] -pin segmentos_moore_OBUF[0]_inst O
load net segmentos_moore[1] -attr @rip(#1c1f28) 1 -port segmentos_moore[1] -pin segmentos_moore_OBUF[1]_inst O
load net segmentos_moore[2] -attr @rip(#1c1f28) 2 -port segmentos_moore[2] -pin segmentos_moore_OBUF[2]_inst O
load net segmentos_moore[3] -attr @rip(#1c1f28) 3 -port segmentos_moore[3] -pin segmentos_moore_OBUF[3]_inst O
load net segmentos_moore[4] -attr @rip(#1c1f28) 4 -port segmentos_moore[4] -pin segmentos_moore_OBUF[4]_inst O
load net segmentos_moore[5] -attr @rip(#1c1f28) 5 -port segmentos_moore[5] -pin segmentos_moore_OBUF[5]_inst O
load net segmentos_moore[6] -attr @rip(#1c1f28) 6 -port segmentos_moore[6] -pin segmentos_moore_OBUF[6]_inst O
load net segmentos_moore_OBUF[0] -attr @rip(#1c1f28) segmentos_moore_OBUF[0] -pin in_estados segmentos_moore_OBUF[0] -pin segmentos_moore_OBUF[0]_inst I -pin segmentos_moore_OBUF[3]_inst I
load net segmentos_moore_OBUF[1] -attr @rip(#1c1f28) segmentos_moore_OBUF[1] -pin in_estados segmentos_moore_OBUF[1] -pin segmentos_moore_OBUF[1]_inst I
load net segmentos_moore_OBUF[2] -attr @rip(#1c1f28) segmentos_moore_OBUF[2] -pin in_estados segmentos_moore_OBUF[2] -pin segmentos_moore_OBUF[2]_inst I
load net segmentos_moore_OBUF[4] -attr @rip(#1c1f28) segmentos_moore_OBUF[3] -pin in_estados segmentos_moore_OBUF[3] -pin segmentos_moore_OBUF[4]_inst I
load net segmentos_moore_OBUF[5] -attr @rip(#1c1f28) segmentos_moore_OBUF[4] -pin in_estados segmentos_moore_OBUF[4] -pin segmentos_moore_OBUF[5]_inst I
load net segmentos_moore_OBUF[6] -attr @rip(#1c1f28) segmentos_moore_OBUF[5] -pin in_estados segmentos_moore_OBUF[5] -pin segmentos_moore_OBUF[6]_inst I
load net in_estados|D[0] -attr @name D[0] -attr @rip(#1c1f28) D[0] -hierPin in_estados D[0] -pin in_estados|ns_out_reg[0] D
load net in_estados|D[1] -attr @name D[1] -attr @rip(#1c1f28) D[1] -hierPin in_estados D[1] -pin in_estados|ns_out_reg[1] D
load net in_estados|D[2] -attr @name D[2] -attr @rip(#1c1f28) D[2] -hierPin in_estados D[2] -pin in_estados|ns_out_reg[2] D
load net in_estados|D[3] -attr @name D[3] -attr @rip(#1c1f28) D[3] -hierPin in_estados D[3] -pin in_estados|ns_out_reg[3] D
load net in_estados|E[0] -attr @name E[0] -attr @rip(#1c1f28) E[0] -hierPin in_estados E[0] -pin in_estados|ns_out_reg[0] CE -pin in_estados|ns_out_reg[1] CE -pin in_estados|ns_out_reg[2] CE -pin in_estados|ns_out_reg[3] CE
netloc in_estados|E[0] 1 0 2 NJ 338 1314
load net in_estados|Q[0] -attr @name Q[0] -attr @rip(#1c1f28) 0 -hierPin in_estados Q[0] -pin in_estados|ns_out_reg[0] Q -pin in_estados|segmentos_mealy_OBUF[1]_inst_i_1 I0 -pin in_estados|segmentos_mealy_OBUF[2]_inst_i_1 I0 -pin in_estados|segmentos_mealy_OBUF[3]_inst_i_1 I0 -pin in_estados|segmentos_mealy_OBUF[4]_inst_i_1 I0 -pin in_estados|segmentos_mealy_OBUF[5]_inst_i_1 I5 -pin in_estados|segmentos_mealy_OBUF[6]_inst_i_1 I0 -pin in_estados|segmentos_moore_OBUF[1]_inst_i_1 I0 -pin in_estados|segmentos_moore_OBUF[2]_inst_i_1 I0 -pin in_estados|segmentos_moore_OBUF[3]_inst_i_1 I0 -pin in_estados|segmentos_moore_OBUF[4]_inst_i_1 I0 -pin in_estados|segmentos_moore_OBUF[5]_inst_i_1 I3 -pin in_estados|segmentos_moore_OBUF[6]_inst_i_1 I0
load net in_estados|Q[1] -attr @name Q[1] -attr @rip(#1c1f28) 1 -hierPin in_estados Q[1] -pin in_estados|ns_out_reg[1] Q -pin in_estados|segmentos_mealy_OBUF[1]_inst_i_1 I4 -pin in_estados|segmentos_mealy_OBUF[2]_inst_i_1 I4 -pin in_estados|segmentos_mealy_OBUF[3]_inst_i_1 I3 -pin in_estados|segmentos_mealy_OBUF[4]_inst_i_1 I5 -pin in_estados|segmentos_mealy_OBUF[5]_inst_i_1 I4 -pin in_estados|segmentos_mealy_OBUF[6]_inst_i_1 I2 -pin in_estados|segmentos_moore_OBUF[1]_inst_i_1 I3 -pin in_estados|segmentos_moore_OBUF[2]_inst_i_1 I2 -pin in_estados|segmentos_moore_OBUF[3]_inst_i_1 I2 -pin in_estados|segmentos_moore_OBUF[4]_inst_i_1 I3 -pin in_estados|segmentos_moore_OBUF[5]_inst_i_1 I1 -pin in_estados|segmentos_moore_OBUF[6]_inst_i_1 I1
load net in_estados|Q[2] -attr @name Q[2] -attr @rip(#1c1f28) 2 -hierPin in_estados Q[2] -pin in_estados|ns_out_reg[2] Q -pin in_estados|segmentos_mealy_OBUF[1]_inst_i_1 I3 -pin in_estados|segmentos_mealy_OBUF[2]_inst_i_1 I3 -pin in_estados|segmentos_mealy_OBUF[3]_inst_i_1 I2 -pin in_estados|segmentos_mealy_OBUF[4]_inst_i_1 I4 -pin in_estados|segmentos_mealy_OBUF[5]_inst_i_1 I3 -pin in_estados|segmentos_mealy_OBUF[6]_inst_i_1 I5 -pin in_estados|segmentos_moore_OBUF[1]_inst_i_1 I1 -pin in_estados|segmentos_moore_OBUF[2]_inst_i_1 I3 -pin in_estados|segmentos_moore_OBUF[3]_inst_i_1 I1 -pin in_estados|segmentos_moore_OBUF[4]_inst_i_1 I2 -pin in_estados|segmentos_moore_OBUF[5]_inst_i_1 I2 -pin in_estados|segmentos_moore_OBUF[6]_inst_i_1 I2
load net in_estados|Q[3] -attr @name Q[3] -attr @rip(#1c1f28) 3 -hierPin in_estados Q[3] -pin in_estados|ns_out_reg[3] Q -pin in_estados|segmentos_mealy_OBUF[1]_inst_i_1 I2 -pin in_estados|segmentos_mealy_OBUF[2]_inst_i_1 I2 -pin in_estados|segmentos_mealy_OBUF[3]_inst_i_1 I5 -pin in_estados|segmentos_mealy_OBUF[4]_inst_i_1 I1 -pin in_estados|segmentos_mealy_OBUF[5]_inst_i_1 I0 -pin in_estados|segmentos_mealy_OBUF[6]_inst_i_1 I4 -pin in_estados|segmentos_moore_OBUF[1]_inst_i_1 I2 -pin in_estados|segmentos_moore_OBUF[2]_inst_i_1 I1 -pin in_estados|segmentos_moore_OBUF[3]_inst_i_1 I3 -pin in_estados|segmentos_moore_OBUF[4]_inst_i_1 I1 -pin in_estados|segmentos_moore_OBUF[5]_inst_i_1 I0 -pin in_estados|segmentos_moore_OBUF[6]_inst_i_1 I3
load net in_estados|clk_IBUF_BUFG -attr @name clk_IBUF_BUFG -hierPin in_estados clk_IBUF_BUFG -pin in_estados|ns_out_reg[0] C -pin in_estados|ns_out_reg[1] C -pin in_estados|ns_out_reg[2] C -pin in_estados|ns_out_reg[3] C
netloc in_estados|clk_IBUF_BUFG 1 0 2 NJ 358 1294
load net in_estados|ns_out[3]_i_2_n_0 -attr @name ns_out[3]_i_2_n_0 -pin in_estados|ns_out[3]_i_2 O -pin in_estados|ns_out_reg[0] CLR -pin in_estados|ns_out_reg[1] PRE -pin in_estados|ns_out_reg[2] CLR -pin in_estados|ns_out_reg[3] CLR
netloc in_estados|ns_out[3]_i_2_n_0 1 1 1 1274 298n
load net in_estados|palanca_de_cambio_IBUF[0] -attr @name palanca_de_cambio_IBUF[0] -attr @rip(#1c1f28) palanca_de_cambio_IBUF[0] -hierPin in_estados palanca_de_cambio_IBUF[0] -pin in_estados|segmentos_mealy_OBUF[1]_inst_i_1 I1 -pin in_estados|segmentos_mealy_OBUF[2]_inst_i_1 I1 -pin in_estados|segmentos_mealy_OBUF[3]_inst_i_1 I1 -pin in_estados|segmentos_mealy_OBUF[4]_inst_i_1 I3 -pin in_estados|segmentos_mealy_OBUF[5]_inst_i_1 I2 -pin in_estados|segmentos_mealy_OBUF[6]_inst_i_1 I3
load net in_estados|palanca_de_cambio_IBUF[1] -attr @name palanca_de_cambio_IBUF[1] -attr @rip(#1c1f28) palanca_de_cambio_IBUF[1] -hierPin in_estados palanca_de_cambio_IBUF[1] -pin in_estados|segmentos_mealy_OBUF[1]_inst_i_1 I5 -pin in_estados|segmentos_mealy_OBUF[2]_inst_i_1 I5 -pin in_estados|segmentos_mealy_OBUF[3]_inst_i_1 I4 -pin in_estados|segmentos_mealy_OBUF[4]_inst_i_1 I2 -pin in_estados|segmentos_mealy_OBUF[5]_inst_i_1 I1 -pin in_estados|segmentos_mealy_OBUF[6]_inst_i_1 I1
load net in_estados|rst_n_IBUF -attr @name rst_n_IBUF -hierPin in_estados rst_n_IBUF -pin in_estados|ns_out[3]_i_2 I0
netloc in_estados|rst_n_IBUF 1 0 1 NJ 708
load net in_estados|segmentos_mealy_OBUF[0] -attr @name segmentos_mealy_OBUF[0] -attr @rip(#1c1f28) 0 -hierPin in_estados segmentos_mealy_OBUF[0] -pin in_estados|segmentos_mealy_OBUF[3]_inst_i_1 O
load net in_estados|segmentos_mealy_OBUF[1] -attr @name segmentos_mealy_OBUF[1] -attr @rip(#1c1f28) 1 -hierPin in_estados segmentos_mealy_OBUF[1] -pin in_estados|segmentos_mealy_OBUF[1]_inst_i_1 O
load net in_estados|segmentos_mealy_OBUF[2] -attr @name segmentos_mealy_OBUF[2] -attr @rip(#1c1f28) 2 -hierPin in_estados segmentos_mealy_OBUF[2] -pin in_estados|segmentos_mealy_OBUF[2]_inst_i_1 O
load net in_estados|segmentos_mealy_OBUF[3] -attr @name segmentos_mealy_OBUF[3] -attr @rip(#1c1f28) 3 -hierPin in_estados segmentos_mealy_OBUF[3] -pin in_estados|segmentos_mealy_OBUF[4]_inst_i_1 O
load net in_estados|segmentos_mealy_OBUF[4] -attr @name segmentos_mealy_OBUF[4] -attr @rip(#1c1f28) 4 -hierPin in_estados segmentos_mealy_OBUF[4] -pin in_estados|segmentos_mealy_OBUF[5]_inst_i_1 O
load net in_estados|segmentos_mealy_OBUF[5] -attr @name segmentos_mealy_OBUF[5] -attr @rip(#1c1f28) 5 -hierPin in_estados segmentos_mealy_OBUF[5] -pin in_estados|segmentos_mealy_OBUF[6]_inst_i_1 O
load net in_estados|segmentos_moore_OBUF[0] -attr @name segmentos_moore_OBUF[0] -attr @rip(#1c1f28) 0 -hierPin in_estados segmentos_moore_OBUF[0] -pin in_estados|segmentos_moore_OBUF[3]_inst_i_1 O
load net in_estados|segmentos_moore_OBUF[1] -attr @name segmentos_moore_OBUF[1] -attr @rip(#1c1f28) 1 -hierPin in_estados segmentos_moore_OBUF[1] -pin in_estados|segmentos_moore_OBUF[1]_inst_i_1 O
load net in_estados|segmentos_moore_OBUF[2] -attr @name segmentos_moore_OBUF[2] -attr @rip(#1c1f28) 2 -hierPin in_estados segmentos_moore_OBUF[2] -pin in_estados|segmentos_moore_OBUF[2]_inst_i_1 O
load net in_estados|segmentos_moore_OBUF[3] -attr @name segmentos_moore_OBUF[3] -attr @rip(#1c1f28) 3 -hierPin in_estados segmentos_moore_OBUF[3] -pin in_estados|segmentos_moore_OBUF[4]_inst_i_1 O
load net in_estados|segmentos_moore_OBUF[4] -attr @name segmentos_moore_OBUF[4] -attr @rip(#1c1f28) 4 -hierPin in_estados segmentos_moore_OBUF[4] -pin in_estados|segmentos_moore_OBUF[5]_inst_i_1 O
load net in_estados|segmentos_moore_OBUF[5] -attr @name segmentos_moore_OBUF[5] -attr @rip(#1c1f28) 5 -hierPin in_estados segmentos_moore_OBUF[5] -pin in_estados|segmentos_moore_OBUF[6]_inst_i_1 O
load net in_next_state|D[0] -attr @name D[0] -attr @rip(#1c1f28) 0 -hierPin in_next_state D[0] -pin in_next_state|next_state O
load net in_next_state|D[1] -attr @name D[1] -attr @rip(#1c1f28) 1 -hierPin in_next_state D[1] -pin in_next_state|ns_out[1]_i_1 O
load net in_next_state|D[2] -attr @name D[2] -attr @rip(#1c1f28) 2 -hierPin in_next_state D[2] -pin in_next_state|ns_out[2]_i_1 O
load net in_next_state|D[3] -attr @name D[3] -attr @rip(#1c1f28) 3 -hierPin in_next_state D[3] -pin in_next_state|ns_out[3]_i_1 O
load net in_next_state|Q[0] -attr @name Q[0] -attr @rip(#1c1f28) Q[0] -hierPin in_next_state Q[0] -pin in_next_state|next_state I1
load net in_next_state|Q[1] -attr @name Q[1] -attr @rip(#1c1f28) Q[1] -hierPin in_next_state Q[1] -pin in_next_state|ns_out[1]_i_1 I1 -pin in_next_state|ns_out[2]_i_1 I0 -pin in_next_state|ns_out[3]_i_1 I0
load net in_next_state|Q[2] -attr @name Q[2] -attr @rip(#1c1f28) Q[2] -hierPin in_next_state Q[2] -pin in_next_state|ns_out[2]_i_1 I1 -pin in_next_state|ns_out[3]_i_1 I1
load net in_next_state|Q[3] -attr @name Q[3] -attr @rip(#1c1f28) Q[3] -hierPin in_next_state Q[3] -pin in_next_state|ns_out[3]_i_1 I2
load net in_next_state|palanca_de_cambio_IBUF[0] -attr @name palanca_de_cambio_IBUF[0] -attr @rip(#1c1f28) palanca_de_cambio_IBUF[0] -hierPin in_next_state palanca_de_cambio_IBUF[0] -pin in_next_state|next_state I2 -pin in_next_state|ns_out[2]_i_1 I2 -pin in_next_state|ns_out[3]_i_1 I3
load net in_next_state|palanca_de_cambio_IBUF[1] -attr @name palanca_de_cambio_IBUF[1] -attr @rip(#1c1f28) palanca_de_cambio_IBUF[1] -hierPin in_next_state palanca_de_cambio_IBUF[1] -pin in_next_state|next_state I0 -pin in_next_state|ns_out[1]_i_1 I0 -pin in_next_state|ns_out[2]_i_1 I3 -pin in_next_state|ns_out[3]_i_1 I4
load netBundle @in_next_state|Q 4 in_next_state|Q[3] in_next_state|Q[2] in_next_state|Q[1] in_next_state|Q[0] -autobundled
netbloc @in_next_state|Q 1 0 1 560 228n
load netBundle @in_next_state|palanca_de_cambi 2 in_next_state|palanca_de_cambio_IBUF[1] in_next_state|palanca_de_cambio_IBUF[0] -autobundled
netbloc @in_next_state|palanca_de_cambi 1 0 1 580 208n
load netBundle @in_next_state|D 4 in_next_state|D[3] in_next_state|D[2] in_next_state|D[1] in_next_state|D[0] -autobundled
netbloc @in_next_state|D 1 1 1 720 208n
load netBundle @in_estados|D 4 in_estados|D[3] in_estados|D[2] in_estados|D[1] in_estados|D[0] -autobundled
netbloc @in_estados|D 1 0 2 NJ 318 1254
load netBundle @in_estados|palanca_de_cambio_I 2 in_estados|palanca_de_cambio_IBUF[1] in_estados|palanca_de_cambio_IBUF[0] -autobundled
netbloc @in_estados|palanca_de_cambio_I 1 0 3 NJ 668 NJ 668 1484
load netBundle @in_estados|Q 4 in_estados|Q[3] in_estados|Q[2] in_estados|Q[1] in_estados|Q[0] -autobundled
netbloc @in_estados|Q 1 2 2 1464 1068 N
load netBundle @in_estados|segmentos_mealy_OBU 6 in_estados|segmentos_mealy_OBUF[5] in_estados|segmentos_mealy_OBUF[4] in_estados|segmentos_mealy_OBUF[3] in_estados|segmentos_mealy_OBUF[2] in_estados|segmentos_mealy_OBUF[1] in_estados|segmentos_mealy_OBUF[0] -autobundled
netbloc @in_estados|segmentos_mealy_OBU 1 3 1 1764 288n
load netBundle @in_estados|segmentos_moore_OBU 6 in_estados|segmentos_moore_OBUF[5] in_estados|segmentos_moore_OBUF[4] in_estados|segmentos_moore_OBUF[3] in_estados|segmentos_moore_OBUF[2] in_estados|segmentos_moore_OBUF[1] in_estados|segmentos_moore_OBUF[0] -autobundled
netbloc @in_estados|segmentos_moore_OBU 1 3 1 1764 1298n
load netBundle @palanca_de_cambio 2 palanca_de_cambio[1] palanca_de_cambio[0] -autobundled
netbloc @palanca_de_cambio 1 0 1 20 190n
load netBundle @segmentos_mealy 7 segmentos_mealy[6] segmentos_mealy[5] segmentos_mealy[4] segmentos_mealy[3] segmentos_mealy[2] segmentos_mealy[1] segmentos_mealy[0] -autobundled
netbloc @segmentos_mealy 1 4 1 2310 160n
load netBundle @segmentos_moore 7 segmentos_moore[6] segmentos_moore[5] segmentos_moore[4] segmentos_moore[3] segmentos_moore[2] segmentos_moore[1] segmentos_moore[0] -autobundled
netbloc @segmentos_moore 1 4 1 2310 650n
load netBundle @q_gear,estados_actuales 4 q_gear[2] q_gear[1] q_gear[0] estados_actuales[0] -autobundled
netbloc @q_gear,estados_actuales 1 1 3 340 708 894J 180 1990
load netBundle @segmentos_mealy_OBUF 6 segmentos_mealy_OBUF[6] segmentos_mealy_OBUF[5] segmentos_mealy_OBUF[4] segmentos_mealy_OBUF[2] segmentos_mealy_OBUF[1] segmentos_mealy_OBUF[0] -autobundled
netbloc @segmentos_mealy_OBUF 1 3 1 2010 160n
load netBundle @segmentos_moore_OBUF 6 segmentos_moore_OBUF[6] segmentos_moore_OBUF[5] segmentos_moore_OBUF[4] segmentos_moore_OBUF[2] segmentos_moore_OBUF[1] segmentos_moore_OBUF[0] -autobundled
netbloc @segmentos_moore_OBUF 1 3 1 2030 650n
load netBundle @in_next_state_n_ 4 in_next_state_n_0 in_next_state_n_1 in_next_state_n_2 estados_futuros[0] -autobundled
netbloc @in_next_state_n_ 1 2 1 874 208n
load netBundle @palanca_de_cambio_IBUF 2 palanca_de_cambio_IBUF[1] palanca_de_cambio_IBUF[0] -autobundled
netbloc @palanca_de_cambio_IBUF 1 1 2 320 688 834
levelinfo -pg 1 0 60 530 1104 2070 2330
levelinfo -hier in_estados * 1154 1354 1594 *
levelinfo -hier in_next_state * 620 *
pagesize -pg 1 -db -bbox -sgen -200 0 2530 2060
pagesize -hier in_estados -db -bbox -sgen 1104 208 1794 2028
pagesize -hier in_next_state -db -bbox -sgen 530 168 750 658
show
zoom 0.601244
scrollpos -114 -1
#
# initialize ictrl to current module Top_view work:Top_view:NOFILE
ictrl init topinfo |
