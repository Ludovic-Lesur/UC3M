--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: spaceInv_synthesis.vhd
-- /___/   /\     Timestamp: Sat Dec 05 16:00:09 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm spaceInv -w -dir netgen/synthesis -ofmt vhdl -sim spaceInv.ngc spaceInv_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: spaceInv.ngc
-- Output file	: C:\Users\Ludovic\Desktop\espacio\netgen\synthesis\spaceInv_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: spaceInv
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity spaceInv is
  port (
    Clk : in STD_LOGIC := 'X'; 
    VSync : out STD_LOGIC; 
    Reset : in STD_LOGIC := 'X'; 
    B : out STD_LOGIC; 
    G : out STD_LOGIC; 
    R : out STD_LOGIC; 
    Izquierda : in STD_LOGIC := 'X'; 
    Derecha : in STD_LOGIC := 'X'; 
    Disparo : in STD_LOGIC := 'X'; 
    HSync : out STD_LOGIC; 
    Inicio : in STD_LOGIC := 'X'; 
    Test : in STD_LOGIC := 'X' 
  );
end spaceInv;

architecture Structure of spaceInv is
  signal B_OBUF_1 : STD_LOGIC; 
  signal Clk_BUFGP_3 : STD_LOGIC; 
  signal Derecha_IBUF_5 : STD_LOGIC; 
  signal Disparo_IBUF_7 : STD_LOGIC; 
  signal G_OBUF_9 : STD_LOGIC; 
  signal HSync_OBUF_11 : STD_LOGIC; 
  signal Inicio_IBUF_13 : STD_LOGIC; 
  signal Izquierda_IBUF_15 : STD_LOGIC; 
  signal JuegoInt : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal R_OBUF_88 : STD_LOGIC; 
  signal Reset_IBUF_90 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_0_2 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_10_2 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_11_2 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_12_2 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_13_2 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_14_2 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_15_2 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_16_2 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_17_2 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_18_2 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_19_2 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal Result_20_2 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_21_2 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_22_2 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_23_2 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal Result_24_2 : STD_LOGIC; 
  signal Result_25_1 : STD_LOGIC; 
  signal Result_25_2 : STD_LOGIC; 
  signal Result_26_1 : STD_LOGIC; 
  signal Result_26_2 : STD_LOGIC; 
  signal Result_27_1 : STD_LOGIC; 
  signal Result_27_2 : STD_LOGIC; 
  signal Result_28_1 : STD_LOGIC; 
  signal Result_28_2 : STD_LOGIC; 
  signal Result_29_1 : STD_LOGIC; 
  signal Result_29_2 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_30_1 : STD_LOGIC; 
  signal Result_30_2 : STD_LOGIC; 
  signal Result_31_1 : STD_LOGIC; 
  signal Result_31_2 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_4_2 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_5_2 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_6_2 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_7_2 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_8_2 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_9_2 : STD_LOGIC; 
  signal Test_IBUF_190 : STD_LOGIC; 
  signal VSync_OBUF_192 : STD_LOGIC; 
  signal bloqueBala_DisparoAnt_193 : STD_LOGIC; 
  signal bloqueBala_Inicial_194 : STD_LOGIC; 
  signal bloqueBala_Inicial_mux0004_195 : STD_LOGIC; 
  signal bloqueBala_Inicial_not0001 : STD_LOGIC; 
  signal bloqueBala_Mmux_varindex0000_10_f5_197 : STD_LOGIC; 
  signal bloqueBala_Mmux_varindex0000_11_198 : STD_LOGIC; 
  signal bloqueBala_Mmux_varindex0000_12_199 : STD_LOGIC; 
  signal bloqueBala_Mmux_varindex0000_3_200 : STD_LOGIC; 
  signal bloqueBala_Mmux_varindex0000_4_201 : STD_LOGIC; 
  signal bloqueBala_Mmux_varindex0000_7_f5_202 : STD_LOGIC; 
  signal bloqueBala_Mmux_varindex0000_8_203 : STD_LOGIC; 
  signal bloqueBala_Mmux_varindex0000_9_204 : STD_LOGIC; 
  signal bloqueBala_Mrom_Color_rom000012 : STD_LOGIC; 
  signal bloqueBala_Mrom_Color_rom000013 : STD_LOGIC; 
  signal bloqueBala_Mrom_Color_rom000015 : STD_LOGIC; 
  signal bloqueBala_N16 : STD_LOGIC; 
  signal bloqueBala_N2 : STD_LOGIC; 
  signal bloqueBala_N22 : STD_LOGIC; 
  signal bloqueBala_N5 : STD_LOGIC; 
  signal bloqueBala_X_1_1_212 : STD_LOGIC; 
  signal bloqueBala_X_1_2 : STD_LOGIC; 
  signal bloqueBala_varindex00001 : STD_LOGIC; 
  signal bloqueBala_xBalaInt_and0000 : STD_LOGIC; 
  signal bloqueBala_yBalaInt_not0001_229 : STD_LOGIC; 
  signal bloqueMaquinaEstado_InicioAnt_230 : STD_LOGIC; 
  signal bloqueMaquinaEstado_Mcount_partidosGanados_eqn_0 : STD_LOGIC; 
  signal bloqueMaquinaEstado_Mcount_partidosGanados_eqn_1 : STD_LOGIC; 
  signal bloqueMaquinaEstado_Mcount_partidosGanados_eqn_2 : STD_LOGIC; 
  signal bloqueMaquinaEstado_Mcount_partidosGanados_eqn_21_234 : STD_LOGIC; 
  signal bloqueMaquinaEstado_Mcount_partidosGanados_eqn_22_235 : STD_LOGIC; 
  signal bloqueMaquinaEstado_Mcount_partidosGanados_eqn_3_236 : STD_LOGIC; 
  signal bloqueMaquinaEstado_N7 : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd1_238 : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd1_In : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd1_In11_240 : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd1_In24_241 : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd2_242 : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd2_In_243 : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd3_244 : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd3_In : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd3_In14_246 : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd3_In26_247 : STD_LOGIC; 
  signal bloqueMaquinaEstado_estadoActual_FSM_FFd3_In8_248 : STD_LOGIC; 
  signal bloqueMaquinaEstado_partidosGanados_not0001 : STD_LOGIC; 
  signal bloqueMaquinaEstado_partidosGanados_not000118_254 : STD_LOGIC; 
  signal bloqueMaquinaEstado_partidosGanados_not000148 : STD_LOGIC; 
  signal bloqueMaquinaEstado_partidosGanados_not0001481_256 : STD_LOGIC; 
  signal bloqueMarcianos_Color_and000059_257 : STD_LOGIC; 
  signal bloqueMarcianos_Color_and00007_258 : STD_LOGIC; 
  signal bloqueMarcianos_Color_and000072_259 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_10_260 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_101_261 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_102_262 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_11_263 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_5_f7_264 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_6_f5_265 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_6_f6_266 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_7_267 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_7_f5_268 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_7_f6_269 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_8_270 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_81_271 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_8_f5_272 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_8_f51 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_9_274 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_91_275 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_92_276 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0000_9_f5_277 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_10_278 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_101_279 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_10_f5_280 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_10_f51 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_11_282 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_111_283 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_112_284 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_11_f5_285 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_12_286 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_121_287 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_122_288 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_13_289 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_3_290 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_4_291 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_6_f6_292 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_7_f5_293 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_8_294 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_8_f5_295 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_8_f6_296 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_9_297 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_91_298 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0001_9_f5_299 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_10_300 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_101_301 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_102_302 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_11_303 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_5_f7_304 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_6_f5_305 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_6_f6_306 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_7_307 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_7_f5_308 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_7_f6_309 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_8_310 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_81_311 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_8_f5_312 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_8_f51 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_9_314 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_91_315 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_92_316 : STD_LOGIC; 
  signal bloqueMarcianos_Mmux_varindex0002_9_f5_317 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom000010 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom000011 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom000013 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom000015_321 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom000022_322 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom000023 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom0000231_324 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom0000232_325 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom000024_326 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom000026_327 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom000027 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom0000271_329 : STD_LOGIC; 
  signal bloqueMarcianos_Mrom_Color_rom0000272_330 : STD_LOGIC; 
  signal bloqueMarcianos_N0 : STD_LOGIC; 
  signal bloqueMarcianos_N10 : STD_LOGIC; 
  signal bloqueMarcianos_N111 : STD_LOGIC; 
  signal bloqueMarcianos_N12 : STD_LOGIC; 
  signal bloqueMarcianos_N13 : STD_LOGIC; 
  signal bloqueMarcianos_N14 : STD_LOGIC; 
  signal bloqueMarcianos_N16 : STD_LOGIC; 
  signal bloqueMarcianos_N17 : STD_LOGIC; 
  signal bloqueMarcianos_N19 : STD_LOGIC; 
  signal bloqueMarcianos_N34 : STD_LOGIC; 
  signal bloqueMarcianos_N4 : STD_LOGIC; 
  signal bloqueMarcianos_N47 : STD_LOGIC; 
  signal bloqueMarcianos_N48 : STD_LOGIC; 
  signal bloqueMarcianos_N7 : STD_LOGIC; 
  signal bloqueMarcianos_Resultado_cmp_eq0000 : STD_LOGIC; 
  signal bloqueMarcianos_Tocado_355 : STD_LOGIC; 
  signal bloqueMarcianos_Tocado_and0000 : STD_LOGIC; 
  signal bloqueMarcianos_Tocado_and0001 : STD_LOGIC; 
  signal bloqueMarcianos_Tocado_and00011_358 : STD_LOGIC; 
  signal bloqueMarcianos_Tocado_and00012_359 : STD_LOGIC; 
  signal bloqueMarcianos_X_2_1 : STD_LOGIC; 
  signal bloqueMarcianos_X_2_11_362 : STD_LOGIC; 
  signal bloqueMarcianos_X_2_2_363 : STD_LOGIC; 
  signal bloqueMarcianos_varindex00011 : STD_LOGIC; 
  signal bloqueMarcianos_fila_0_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_0_not0001_367 : STD_LOGIC; 
  signal bloqueMarcianos_fila_10_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_10_not0001_371 : STD_LOGIC; 
  signal bloqueMarcianos_fila_11_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_11_not0001_374 : STD_LOGIC; 
  signal bloqueMarcianos_fila_12_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_12_not0001_377 : STD_LOGIC; 
  signal bloqueMarcianos_fila_13_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_13_not0001_380 : STD_LOGIC; 
  signal bloqueMarcianos_fila_14_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_14_not0001_383 : STD_LOGIC; 
  signal bloqueMarcianos_fila_15_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_15_not0001_386 : STD_LOGIC; 
  signal bloqueMarcianos_fila_16_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_16_not0001_389 : STD_LOGIC; 
  signal bloqueMarcianos_fila_17_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_17_not0001_392 : STD_LOGIC; 
  signal bloqueMarcianos_fila_18_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_18_not0001_395 : STD_LOGIC; 
  signal bloqueMarcianos_fila_19_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_19_not0001_398 : STD_LOGIC; 
  signal bloqueMarcianos_fila_1_mux0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_1_mux00001_400 : STD_LOGIC; 
  signal bloqueMarcianos_fila_1_mux00002_401 : STD_LOGIC; 
  signal bloqueMarcianos_fila_1_not0001_402 : STD_LOGIC; 
  signal bloqueMarcianos_fila_2_mux0000_404 : STD_LOGIC; 
  signal bloqueMarcianos_fila_2_not0001_405 : STD_LOGIC; 
  signal bloqueMarcianos_fila_3_mux0000_407 : STD_LOGIC; 
  signal bloqueMarcianos_fila_3_not0001_408 : STD_LOGIC; 
  signal bloqueMarcianos_fila_4_mux0000_410 : STD_LOGIC; 
  signal bloqueMarcianos_fila_4_not0001_411 : STD_LOGIC; 
  signal bloqueMarcianos_fila_5_mux0000_413 : STD_LOGIC; 
  signal bloqueMarcianos_fila_5_not0001_414 : STD_LOGIC; 
  signal bloqueMarcianos_fila_6_mux0000_416 : STD_LOGIC; 
  signal bloqueMarcianos_fila_6_not0001_417 : STD_LOGIC; 
  signal bloqueMarcianos_fila_7_mux0000_419 : STD_LOGIC; 
  signal bloqueMarcianos_fila_7_not0001_420 : STD_LOGIC; 
  signal bloqueMarcianos_fila_8_cmp_ne0000 : STD_LOGIC; 
  signal bloqueMarcianos_fila_8_cmp_ne000032_423 : STD_LOGIC; 
  signal bloqueMarcianos_fila_8_cmp_ne000065_424 : STD_LOGIC; 
  signal bloqueMarcianos_fila_8_mux0000_425 : STD_LOGIC; 
  signal bloqueMarcianos_fila_8_not0001_426 : STD_LOGIC; 
  signal bloqueMarcianos_fila_9_mux0000_428 : STD_LOGIC; 
  signal bloqueMarcianos_fila_9_not0001_429 : STD_LOGIC; 
  signal bloqueMarcianos_yComun_not0001_438 : STD_LOGIC; 
  signal bloqueNave_Color_and0000104_439 : STD_LOGIC; 
  signal bloqueNave_Color_and000026_440 : STD_LOGIC; 
  signal bloqueNave_Color_and000053_441 : STD_LOGIC; 
  signal bloqueNave_Color_and000085_442 : STD_LOGIC; 
  signal bloqueNave_Color_and000090_443 : STD_LOGIC; 
  signal bloqueNave_DerechaAnt_444 : STD_LOGIC; 
  signal bloqueNave_EnableIzquierda : STD_LOGIC; 
  signal bloqueNave_IzquierdaAnt_446 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_10 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_3_f7_451 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_4_f6_452 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_4_f7_453 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_5_f5_454 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_5_f51_455 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_5_f6_456 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_5_f61 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_6_f5_458 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_6_f51 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_6_f52 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_6_f6_461 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_7_462 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_71_463 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_72_464 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_73_465 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_7_f5_466 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_7_f51 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_7_f52 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_8_469 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_81_470 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_82_471 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_83_472 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_84_473 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_85_474 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_8_f5_475 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_9_476 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_91_477 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_92_478 : STD_LOGIC; 
  signal bloqueNave_Mmux_varindex0000_93_479 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom000010 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom000011_481 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom000012 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom000013 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom000014_484 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom000015 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom000023 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom000024 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom000025 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom0000251_489 : STD_LOGIC; 
  signal bloqueNave_Mrom_Color_rom000027 : STD_LOGIC; 
  signal bloqueNave_N3 : STD_LOGIC; 
  signal bloqueNave_N8 : STD_LOGIC; 
  signal bloqueNave_varindex0000 : STD_LOGIC; 
  signal bloqueNave_xNave_mux0000_1_1 : STD_LOGIC; 
  signal bloqueNave_xNave_mux0000_2_1 : STD_LOGIC; 
  signal bloqueNave_xNave_mux0000_3_1 : STD_LOGIC; 
  signal bloqueNave_xNave_not0001 : STD_LOGIC; 
  signal bloqueNave_xNave_not000125_508 : STD_LOGIC; 
  signal bloqueNave_xNave_not000141_509 : STD_LOGIC; 
  signal bloqueNave_xNave_not000144_510 : STD_LOGIC; 
  signal bloqueNave_xNave_not00016 : STD_LOGIC; 
  signal bloqueNave_xNave_not000161_512 : STD_LOGIC; 
  signal bloqueNave_xNave_not000170_513 : STD_LOGIC; 
  signal bloqueTempoBala_EnableBala_514 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_10_rt_517 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_11_rt_519 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_12_rt_521 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_13_rt_523 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_14_rt_525 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_15_rt_527 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_16_rt_529 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_17_rt_531 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_18_rt_533 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_19_rt_535 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_1_rt_537 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_20_rt_539 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_21_rt_541 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_22_rt_543 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_23_rt_545 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_24_rt_547 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_25_rt_549 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_26_rt_551 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_27_rt_553 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_28_rt_555 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_29_rt_557 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_2_rt_559 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_30_rt_561 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_3_rt_563 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_4_rt_565 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_5_rt_567 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_6_rt_569 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_7_rt_571 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_8_rt_573 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_cy_9_rt_575 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_0 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_1 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_10 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_11 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_12 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_13 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_14 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_15 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_16 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_17 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_18 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_19 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_2 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_20 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_21 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_22 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_23 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_24 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_25 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_26 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_27 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_28 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_29 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_3 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_30 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_31 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_4 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_5 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_6 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_7 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_8 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_eqn_9 : STD_LOGIC; 
  signal bloqueTempoBala_Mcount_a_xor_31_rt_609 : STD_LOGIC; 
  signal bloqueTempoBala_Reset_inv : STD_LOGIC; 
  signal bloqueTempoBala_a_cmp_eq0000 : STD_LOGIC; 
  signal bloqueTempoInicio_Inicio_659 : STD_LOGIC; 
  signal bloqueTempoInicio_Inicio_mux0002 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_10_rt_663 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_11_rt_665 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_12_rt_667 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_13_rt_669 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_14_rt_671 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_15_rt_673 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_16_rt_675 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_17_rt_677 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_18_rt_679 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_19_rt_681 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_1_rt_683 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_20_rt_685 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_21_rt_687 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_22_rt_689 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_23_rt_691 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_24_rt_693 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_25_rt_695 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_26_rt_697 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_27_rt_699 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_28_rt_701 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_29_rt_703 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_2_rt_705 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_30_rt_707 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_3_rt_709 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_4_rt_711 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_5_rt_713 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_6_rt_715 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_7_rt_717 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_8_rt_719 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_cy_9_rt_721 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_0 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_1 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_10 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_11 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_12 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_13 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_14 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_15 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_16 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_17 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_18 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_19 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_2 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_20 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_21 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_22 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_23 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_24 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_25 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_26 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_27 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_28 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_29 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_3 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_30 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_31 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_4 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_5 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_6 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_7 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_8 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_eqn_9 : STD_LOGIC; 
  signal bloqueTempoInicio_Mcount_a_xor_31_rt_755 : STD_LOGIC; 
  signal bloqueTempoInicio_a_cmp_eq0000 : STD_LOGIC; 
  signal bloqueTempoMarcianos_EnableMarcianos_804 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a1 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a10 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a11 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a12 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a13 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a14 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a15 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a16 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a17 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a18 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a19 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a2 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a20 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a21 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a22 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a23 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a24 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a25 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a26 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a27 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a28 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a29 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a3 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a30 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a31 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a4 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a5 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a6 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a7 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a8 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mcount_a9 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_0 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_1 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_10 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_11 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_12 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_13 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_14 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_2 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_3 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_4 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_5 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_6 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_7 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_8 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_9 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_0 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_1 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_10 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_11 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_12 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_13 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_14 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_15 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_16 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_17 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_2 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_3 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_4 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_5 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_6 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_7 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_8 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_9 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_0 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_1 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_10 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_11 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_12 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_13 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_14 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_15 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_16 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_17 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_18 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_19 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_2 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_20 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_21 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_22 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_23 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_24 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_25 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_26 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_27 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_28 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_29 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_3 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_30 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_31 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_4 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_5 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_6 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_7 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_8 : STD_LOGIC; 
  signal bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_9 : STD_LOGIC; 
  signal bloqueTempoMarcianos_a_cmp_eq0000_inv : STD_LOGIC; 
  signal bloqueTempoNave_EnableNave_1080 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_10_rt_1083 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_11_rt_1085 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_12_rt_1087 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_13_rt_1089 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_14_rt_1091 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_15_rt_1093 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_16_rt_1095 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_17_rt_1097 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_18_rt_1099 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_19_rt_1101 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_1_rt_1103 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_20_rt_1105 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_21_rt_1107 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_22_rt_1109 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_23_rt_1111 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_24_rt_1113 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_25_rt_1115 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_26_rt_1117 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_27_rt_1119 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_28_rt_1121 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_29_rt_1123 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_2_rt_1125 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_30_rt_1127 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_3_rt_1129 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_4_rt_1131 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_5_rt_1133 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_6_rt_1135 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_7_rt_1137 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_8_rt_1139 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_cy_9_rt_1141 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_0 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_1 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_10 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_11 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_12 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_13 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_14 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_15 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_16 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_17 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_18 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_19 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_2 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_20 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_21 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_22 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_23 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_24 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_25 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_26 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_27 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_28 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_29 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_3 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_30 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_31 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_4 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_5 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_6 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_7 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_8 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_eqn_9 : STD_LOGIC; 
  signal bloqueTempoNave_Mcount_a_xor_31_rt_1175 : STD_LOGIC; 
  signal bloqueTempoNave_a_cmp_eq0000 : STD_LOGIC; 
  signal bloqueVga_ApagarH_Int : STD_LOGIC; 
  signal bloqueVga_ApagarV_Int : STD_LOGIC; 
  signal bloqueVga_EnableV_Int : STD_LOGIC; 
  signal bloqueVga_bloqueDivisorF_a_1227 : STD_LOGIC; 
  signal bloqueVga_bloqueDivisorF_a_not0001 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_bOut12_1229 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_bOut28_1230 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_bOut5_1231 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_gOut11_1232 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_gOut26 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_gOut261_1234 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_gOut262_1235 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_gOut41_1236 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_rOut137_1237 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_rOut165_1238 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_rOut26_1239 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_rOut53_1240 : STD_LOGIC; 
  signal bloqueVga_bloqueRgbMux_rOut93_1241 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_EnableV2 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_EnableV_bdd2 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_Mcount_p : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_Mcount_p1 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_Mcount_p2 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_Mcount_p3 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_Mcount_p4 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_Mcount_p5 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_Mcount_p6 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_Mcount_p7 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_Mcount_p8 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_Mcount_p9 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_SyncH26_1273 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_p_cmp_ge0000 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_p_cmp_ge0000_bdd0 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncH_p_cmp_ge0000_inv : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_ApagarV : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_Mcount_p : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_Mcount_p1 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_Mcount_p2 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_Mcount_p3 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_Mcount_p4 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_Mcount_p5 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_Mcount_p6 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_Mcount_p7 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_Mcount_p8 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_Mcount_p9 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_SyncV13 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_SyncV131_1318 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_SyncV28 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_p_cmp_ge0000 : STD_LOGIC; 
  signal bloqueVga_bloqueSyncV_p_cmp_ge0000_inv_1331 : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_B_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_bloqueTempoMarcianos_Mmult_mult0001_P_32_UNCONNECTED : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal ResultadoInt : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal bloqueBala_xBalaInt : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal bloqueBala_yBalaInt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal bloqueBala_yBalaInt_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal bloqueMaquinaEstado_partidosGanados : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal bloqueMarcianos_Resultado_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal bloqueMarcianos_Resultado_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal bloqueMarcianos_X : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal bloqueMarcianos_fila : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal bloqueMarcianos_yComun : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal bloqueMarcianos_yComun_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal bloqueNave_Maddsub_xNave_addsub0000_cy : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal bloqueNave_xNave : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal bloqueNave_xNave_mux0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal bloqueTempoBala_Mcount_a_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal bloqueTempoBala_Mcount_a_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal bloqueTempoBala_a : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal bloqueTempoBala_a_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal bloqueTempoBala_a_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal bloqueTempoInicio_Mcount_a_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal bloqueTempoInicio_Mcount_a_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal bloqueTempoInicio_a : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal bloqueTempoInicio_a_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal bloqueTempoInicio_a_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal bloqueTempoMarcianos_Madd_sub0000_cy : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal bloqueTempoMarcianos_Mcount_a_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal bloqueTempoMarcianos_Mcount_a_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal bloqueTempoMarcianos_Mmult_mult00010_Madd_cy : STD_LOGIC_VECTOR ( 30 downto 17 ); 
  signal bloqueTempoMarcianos_Mmult_mult00010_Madd_lut : STD_LOGIC_VECTOR ( 31 downto 17 ); 
  signal bloqueTempoMarcianos_mult0001 : STD_LOGIC_VECTOR ( 31 downto 17 ); 
  signal bloqueTempoMarcianos_sub0000 : STD_LOGIC_VECTOR ( 6 downto 2 ); 
  signal bloqueTempoMarcianos_a : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal bloqueTempoNave_Mcount_a_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal bloqueTempoNave_Mcount_a_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal bloqueTempoNave_a : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal bloqueTempoNave_a_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal bloqueTempoNave_a_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal bloqueVga_bloqueSyncH_Mcount_p_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal bloqueVga_bloqueSyncH_Mcount_p_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal bloqueVga_bloqueSyncH_p : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal bloqueVga_bloqueSyncV_Mcount_p_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal bloqueVga_bloqueSyncV_Mcount_p_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal bloqueVga_bloqueSyncV_p : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal colorMarcianosInt : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal colorNaveInt : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal modoPantallaInt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  bloqueTempoNave_EnableNave : FDE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueTempoBala_Reset_inv,
      D => bloqueTempoNave_a_cmp_eq0000,
      Q => bloqueTempoNave_EnableNave_1080
    );
  bloqueTempoBala_EnableBala : FDE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueTempoBala_Reset_inv,
      D => bloqueTempoBala_a_cmp_eq0000,
      Q => bloqueTempoBala_EnableBala_514
    );
  bloqueTempoInicio_Inicio : FDE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueTempoBala_Reset_inv,
      D => bloqueTempoInicio_Inicio_mux0002,
      Q => bloqueTempoInicio_Inicio_659
    );
  bloqueVga_bloqueDivisorF_a : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueDivisorF_a_not0001,
      Q => bloqueVga_bloqueDivisorF_a_1227
    );
  bloqueTempoInicio_a_0 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_0,
      Q => bloqueTempoInicio_a(0)
    );
  bloqueTempoInicio_a_1 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_1,
      Q => bloqueTempoInicio_a(1)
    );
  bloqueTempoInicio_a_2 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_2,
      Q => bloqueTempoInicio_a(2)
    );
  bloqueTempoInicio_a_3 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_3,
      Q => bloqueTempoInicio_a(3)
    );
  bloqueTempoInicio_a_4 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_4,
      Q => bloqueTempoInicio_a(4)
    );
  bloqueTempoInicio_a_5 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_5,
      Q => bloqueTempoInicio_a(5)
    );
  bloqueTempoInicio_a_6 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_6,
      Q => bloqueTempoInicio_a(6)
    );
  bloqueTempoInicio_a_7 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_7,
      Q => bloqueTempoInicio_a(7)
    );
  bloqueTempoInicio_a_8 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_8,
      Q => bloqueTempoInicio_a(8)
    );
  bloqueTempoInicio_a_9 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_9,
      Q => bloqueTempoInicio_a(9)
    );
  bloqueTempoInicio_a_10 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_10,
      Q => bloqueTempoInicio_a(10)
    );
  bloqueTempoInicio_a_11 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_11,
      Q => bloqueTempoInicio_a(11)
    );
  bloqueTempoInicio_a_12 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_12,
      Q => bloqueTempoInicio_a(12)
    );
  bloqueTempoInicio_a_13 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_13,
      Q => bloqueTempoInicio_a(13)
    );
  bloqueTempoInicio_a_14 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_14,
      Q => bloqueTempoInicio_a(14)
    );
  bloqueTempoInicio_a_15 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_15,
      Q => bloqueTempoInicio_a(15)
    );
  bloqueTempoInicio_a_16 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_16,
      Q => bloqueTempoInicio_a(16)
    );
  bloqueTempoInicio_a_17 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_17,
      Q => bloqueTempoInicio_a(17)
    );
  bloqueTempoInicio_a_18 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_18,
      Q => bloqueTempoInicio_a(18)
    );
  bloqueTempoInicio_a_19 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_19,
      Q => bloqueTempoInicio_a(19)
    );
  bloqueTempoInicio_a_20 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_20,
      Q => bloqueTempoInicio_a(20)
    );
  bloqueTempoInicio_a_21 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_21,
      Q => bloqueTempoInicio_a(21)
    );
  bloqueTempoInicio_a_22 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_22,
      Q => bloqueTempoInicio_a(22)
    );
  bloqueTempoInicio_a_23 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_23,
      Q => bloqueTempoInicio_a(23)
    );
  bloqueTempoInicio_a_24 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_24,
      Q => bloqueTempoInicio_a(24)
    );
  bloqueTempoInicio_a_25 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_25,
      Q => bloqueTempoInicio_a(25)
    );
  bloqueTempoInicio_a_26 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_26,
      Q => bloqueTempoInicio_a(26)
    );
  bloqueTempoInicio_a_27 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_27,
      Q => bloqueTempoInicio_a(27)
    );
  bloqueTempoInicio_a_28 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_28,
      Q => bloqueTempoInicio_a(28)
    );
  bloqueTempoInicio_a_29 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_29,
      Q => bloqueTempoInicio_a(29)
    );
  bloqueTempoInicio_a_30 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_30,
      Q => bloqueTempoInicio_a(30)
    );
  bloqueTempoInicio_a_31 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Mcount_a_eqn_31,
      Q => bloqueTempoInicio_a(31)
    );
  bloqueTempoBala_a_0 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_0,
      Q => bloqueTempoBala_a(0)
    );
  bloqueTempoBala_a_1 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_1,
      Q => bloqueTempoBala_a(1)
    );
  bloqueTempoBala_a_2 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_2,
      Q => bloqueTempoBala_a(2)
    );
  bloqueTempoBala_a_3 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_3,
      Q => bloqueTempoBala_a(3)
    );
  bloqueTempoBala_a_4 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_4,
      Q => bloqueTempoBala_a(4)
    );
  bloqueTempoBala_a_5 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_5,
      Q => bloqueTempoBala_a(5)
    );
  bloqueTempoBala_a_6 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_6,
      Q => bloqueTempoBala_a(6)
    );
  bloqueTempoBala_a_7 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_7,
      Q => bloqueTempoBala_a(7)
    );
  bloqueTempoBala_a_8 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_8,
      Q => bloqueTempoBala_a(8)
    );
  bloqueTempoBala_a_9 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_9,
      Q => bloqueTempoBala_a(9)
    );
  bloqueTempoBala_a_10 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_10,
      Q => bloqueTempoBala_a(10)
    );
  bloqueTempoBala_a_11 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_11,
      Q => bloqueTempoBala_a(11)
    );
  bloqueTempoBala_a_12 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_12,
      Q => bloqueTempoBala_a(12)
    );
  bloqueTempoBala_a_13 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_13,
      Q => bloqueTempoBala_a(13)
    );
  bloqueTempoBala_a_14 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_14,
      Q => bloqueTempoBala_a(14)
    );
  bloqueTempoBala_a_15 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_15,
      Q => bloqueTempoBala_a(15)
    );
  bloqueTempoBala_a_16 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_16,
      Q => bloqueTempoBala_a(16)
    );
  bloqueTempoBala_a_17 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_17,
      Q => bloqueTempoBala_a(17)
    );
  bloqueTempoBala_a_18 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_18,
      Q => bloqueTempoBala_a(18)
    );
  bloqueTempoBala_a_19 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_19,
      Q => bloqueTempoBala_a(19)
    );
  bloqueTempoBala_a_20 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_20,
      Q => bloqueTempoBala_a(20)
    );
  bloqueTempoBala_a_21 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_21,
      Q => bloqueTempoBala_a(21)
    );
  bloqueTempoBala_a_22 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_22,
      Q => bloqueTempoBala_a(22)
    );
  bloqueTempoBala_a_23 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_23,
      Q => bloqueTempoBala_a(23)
    );
  bloqueTempoBala_a_24 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_24,
      Q => bloqueTempoBala_a(24)
    );
  bloqueTempoBala_a_25 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_25,
      Q => bloqueTempoBala_a(25)
    );
  bloqueTempoBala_a_26 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_26,
      Q => bloqueTempoBala_a(26)
    );
  bloqueTempoBala_a_27 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_27,
      Q => bloqueTempoBala_a(27)
    );
  bloqueTempoBala_a_28 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_28,
      Q => bloqueTempoBala_a(28)
    );
  bloqueTempoBala_a_29 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_29,
      Q => bloqueTempoBala_a(29)
    );
  bloqueTempoBala_a_30 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_30,
      Q => bloqueTempoBala_a(30)
    );
  bloqueTempoBala_a_31 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoBala_Mcount_a_eqn_31,
      Q => bloqueTempoBala_a(31)
    );
  bloqueTempoNave_a_0 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_0,
      Q => bloqueTempoNave_a(0)
    );
  bloqueTempoNave_a_1 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_1,
      Q => bloqueTempoNave_a(1)
    );
  bloqueTempoNave_a_2 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_2,
      Q => bloqueTempoNave_a(2)
    );
  bloqueTempoNave_a_3 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_3,
      Q => bloqueTempoNave_a(3)
    );
  bloqueTempoNave_a_4 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_4,
      Q => bloqueTempoNave_a(4)
    );
  bloqueTempoNave_a_5 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_5,
      Q => bloqueTempoNave_a(5)
    );
  bloqueTempoNave_a_6 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_6,
      Q => bloqueTempoNave_a(6)
    );
  bloqueTempoNave_a_7 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_7,
      Q => bloqueTempoNave_a(7)
    );
  bloqueTempoNave_a_8 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_8,
      Q => bloqueTempoNave_a(8)
    );
  bloqueTempoNave_a_9 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_9,
      Q => bloqueTempoNave_a(9)
    );
  bloqueTempoNave_a_10 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_10,
      Q => bloqueTempoNave_a(10)
    );
  bloqueTempoNave_a_11 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_11,
      Q => bloqueTempoNave_a(11)
    );
  bloqueTempoNave_a_12 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_12,
      Q => bloqueTempoNave_a(12)
    );
  bloqueTempoNave_a_13 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_13,
      Q => bloqueTempoNave_a(13)
    );
  bloqueTempoNave_a_14 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_14,
      Q => bloqueTempoNave_a(14)
    );
  bloqueTempoNave_a_15 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_15,
      Q => bloqueTempoNave_a(15)
    );
  bloqueTempoNave_a_16 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_16,
      Q => bloqueTempoNave_a(16)
    );
  bloqueTempoNave_a_17 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_17,
      Q => bloqueTempoNave_a(17)
    );
  bloqueTempoNave_a_18 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_18,
      Q => bloqueTempoNave_a(18)
    );
  bloqueTempoNave_a_19 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_19,
      Q => bloqueTempoNave_a(19)
    );
  bloqueTempoNave_a_20 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_20,
      Q => bloqueTempoNave_a(20)
    );
  bloqueTempoNave_a_21 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_21,
      Q => bloqueTempoNave_a(21)
    );
  bloqueTempoNave_a_22 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_22,
      Q => bloqueTempoNave_a(22)
    );
  bloqueTempoNave_a_23 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_23,
      Q => bloqueTempoNave_a(23)
    );
  bloqueTempoNave_a_24 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_24,
      Q => bloqueTempoNave_a(24)
    );
  bloqueTempoNave_a_25 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_25,
      Q => bloqueTempoNave_a(25)
    );
  bloqueTempoNave_a_26 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_26,
      Q => bloqueTempoNave_a(26)
    );
  bloqueTempoNave_a_27 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_27,
      Q => bloqueTempoNave_a(27)
    );
  bloqueTempoNave_a_28 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_28,
      Q => bloqueTempoNave_a(28)
    );
  bloqueTempoNave_a_29 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_29,
      Q => bloqueTempoNave_a(29)
    );
  bloqueTempoNave_a_30 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_30,
      Q => bloqueTempoNave_a(30)
    );
  bloqueTempoNave_a_31 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoNave_Mcount_a_eqn_31,
      Q => bloqueTempoNave_a(31)
    );
  bloqueTempoInicio_Mcount_a_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => bloqueTempoInicio_Mcount_a_lut(0),
      O => bloqueTempoInicio_Mcount_a_cy(0)
    );
  bloqueTempoInicio_Mcount_a_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => bloqueTempoInicio_Mcount_a_lut(0),
      O => Result(0)
    );
  bloqueTempoInicio_Mcount_a_cy_1_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(0),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_1_rt_683,
      O => bloqueTempoInicio_Mcount_a_cy(1)
    );
  bloqueTempoInicio_Mcount_a_xor_1_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(0),
      LI => bloqueTempoInicio_Mcount_a_cy_1_rt_683,
      O => Result(1)
    );
  bloqueTempoInicio_Mcount_a_cy_2_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(1),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_2_rt_705,
      O => bloqueTempoInicio_Mcount_a_cy(2)
    );
  bloqueTempoInicio_Mcount_a_xor_2_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(1),
      LI => bloqueTempoInicio_Mcount_a_cy_2_rt_705,
      O => Result(2)
    );
  bloqueTempoInicio_Mcount_a_cy_3_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(2),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_3_rt_709,
      O => bloqueTempoInicio_Mcount_a_cy(3)
    );
  bloqueTempoInicio_Mcount_a_xor_3_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(2),
      LI => bloqueTempoInicio_Mcount_a_cy_3_rt_709,
      O => Result(3)
    );
  bloqueTempoInicio_Mcount_a_cy_4_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(3),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_4_rt_711,
      O => bloqueTempoInicio_Mcount_a_cy(4)
    );
  bloqueTempoInicio_Mcount_a_xor_4_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(3),
      LI => bloqueTempoInicio_Mcount_a_cy_4_rt_711,
      O => Result(4)
    );
  bloqueTempoInicio_Mcount_a_cy_5_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(4),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_5_rt_713,
      O => bloqueTempoInicio_Mcount_a_cy(5)
    );
  bloqueTempoInicio_Mcount_a_xor_5_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(4),
      LI => bloqueTempoInicio_Mcount_a_cy_5_rt_713,
      O => Result(5)
    );
  bloqueTempoInicio_Mcount_a_cy_6_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(5),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_6_rt_715,
      O => bloqueTempoInicio_Mcount_a_cy(6)
    );
  bloqueTempoInicio_Mcount_a_xor_6_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(5),
      LI => bloqueTempoInicio_Mcount_a_cy_6_rt_715,
      O => Result(6)
    );
  bloqueTempoInicio_Mcount_a_cy_7_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(6),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_7_rt_717,
      O => bloqueTempoInicio_Mcount_a_cy(7)
    );
  bloqueTempoInicio_Mcount_a_xor_7_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(6),
      LI => bloqueTempoInicio_Mcount_a_cy_7_rt_717,
      O => Result(7)
    );
  bloqueTempoInicio_Mcount_a_cy_8_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(7),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_8_rt_719,
      O => bloqueTempoInicio_Mcount_a_cy(8)
    );
  bloqueTempoInicio_Mcount_a_xor_8_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(7),
      LI => bloqueTempoInicio_Mcount_a_cy_8_rt_719,
      O => Result(8)
    );
  bloqueTempoInicio_Mcount_a_cy_9_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(8),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_9_rt_721,
      O => bloqueTempoInicio_Mcount_a_cy(9)
    );
  bloqueTempoInicio_Mcount_a_xor_9_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(8),
      LI => bloqueTempoInicio_Mcount_a_cy_9_rt_721,
      O => Result(9)
    );
  bloqueTempoInicio_Mcount_a_cy_10_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(9),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_10_rt_663,
      O => bloqueTempoInicio_Mcount_a_cy(10)
    );
  bloqueTempoInicio_Mcount_a_xor_10_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(9),
      LI => bloqueTempoInicio_Mcount_a_cy_10_rt_663,
      O => Result(10)
    );
  bloqueTempoInicio_Mcount_a_cy_11_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(10),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_11_rt_665,
      O => bloqueTempoInicio_Mcount_a_cy(11)
    );
  bloqueTempoInicio_Mcount_a_xor_11_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(10),
      LI => bloqueTempoInicio_Mcount_a_cy_11_rt_665,
      O => Result(11)
    );
  bloqueTempoInicio_Mcount_a_cy_12_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(11),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_12_rt_667,
      O => bloqueTempoInicio_Mcount_a_cy(12)
    );
  bloqueTempoInicio_Mcount_a_xor_12_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(11),
      LI => bloqueTempoInicio_Mcount_a_cy_12_rt_667,
      O => Result(12)
    );
  bloqueTempoInicio_Mcount_a_cy_13_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(12),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_13_rt_669,
      O => bloqueTempoInicio_Mcount_a_cy(13)
    );
  bloqueTempoInicio_Mcount_a_xor_13_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(12),
      LI => bloqueTempoInicio_Mcount_a_cy_13_rt_669,
      O => Result(13)
    );
  bloqueTempoInicio_Mcount_a_cy_14_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(13),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_14_rt_671,
      O => bloqueTempoInicio_Mcount_a_cy(14)
    );
  bloqueTempoInicio_Mcount_a_xor_14_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(13),
      LI => bloqueTempoInicio_Mcount_a_cy_14_rt_671,
      O => Result(14)
    );
  bloqueTempoInicio_Mcount_a_cy_15_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(14),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_15_rt_673,
      O => bloqueTempoInicio_Mcount_a_cy(15)
    );
  bloqueTempoInicio_Mcount_a_xor_15_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(14),
      LI => bloqueTempoInicio_Mcount_a_cy_15_rt_673,
      O => Result(15)
    );
  bloqueTempoInicio_Mcount_a_cy_16_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(15),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_16_rt_675,
      O => bloqueTempoInicio_Mcount_a_cy(16)
    );
  bloqueTempoInicio_Mcount_a_xor_16_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(15),
      LI => bloqueTempoInicio_Mcount_a_cy_16_rt_675,
      O => Result(16)
    );
  bloqueTempoInicio_Mcount_a_cy_17_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(16),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_17_rt_677,
      O => bloqueTempoInicio_Mcount_a_cy(17)
    );
  bloqueTempoInicio_Mcount_a_xor_17_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(16),
      LI => bloqueTempoInicio_Mcount_a_cy_17_rt_677,
      O => Result(17)
    );
  bloqueTempoInicio_Mcount_a_cy_18_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(17),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_18_rt_679,
      O => bloqueTempoInicio_Mcount_a_cy(18)
    );
  bloqueTempoInicio_Mcount_a_xor_18_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(17),
      LI => bloqueTempoInicio_Mcount_a_cy_18_rt_679,
      O => Result(18)
    );
  bloqueTempoInicio_Mcount_a_cy_19_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(18),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_19_rt_681,
      O => bloqueTempoInicio_Mcount_a_cy(19)
    );
  bloqueTempoInicio_Mcount_a_xor_19_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(18),
      LI => bloqueTempoInicio_Mcount_a_cy_19_rt_681,
      O => Result(19)
    );
  bloqueTempoInicio_Mcount_a_cy_20_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(19),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_20_rt_685,
      O => bloqueTempoInicio_Mcount_a_cy(20)
    );
  bloqueTempoInicio_Mcount_a_xor_20_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(19),
      LI => bloqueTempoInicio_Mcount_a_cy_20_rt_685,
      O => Result(20)
    );
  bloqueTempoInicio_Mcount_a_cy_21_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(20),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_21_rt_687,
      O => bloqueTempoInicio_Mcount_a_cy(21)
    );
  bloqueTempoInicio_Mcount_a_xor_21_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(20),
      LI => bloqueTempoInicio_Mcount_a_cy_21_rt_687,
      O => Result(21)
    );
  bloqueTempoInicio_Mcount_a_cy_22_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(21),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_22_rt_689,
      O => bloqueTempoInicio_Mcount_a_cy(22)
    );
  bloqueTempoInicio_Mcount_a_xor_22_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(21),
      LI => bloqueTempoInicio_Mcount_a_cy_22_rt_689,
      O => Result(22)
    );
  bloqueTempoInicio_Mcount_a_cy_23_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(22),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_23_rt_691,
      O => bloqueTempoInicio_Mcount_a_cy(23)
    );
  bloqueTempoInicio_Mcount_a_xor_23_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(22),
      LI => bloqueTempoInicio_Mcount_a_cy_23_rt_691,
      O => Result(23)
    );
  bloqueTempoInicio_Mcount_a_cy_24_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(23),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_24_rt_693,
      O => bloqueTempoInicio_Mcount_a_cy(24)
    );
  bloqueTempoInicio_Mcount_a_xor_24_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(23),
      LI => bloqueTempoInicio_Mcount_a_cy_24_rt_693,
      O => Result(24)
    );
  bloqueTempoInicio_Mcount_a_cy_25_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(24),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_25_rt_695,
      O => bloqueTempoInicio_Mcount_a_cy(25)
    );
  bloqueTempoInicio_Mcount_a_xor_25_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(24),
      LI => bloqueTempoInicio_Mcount_a_cy_25_rt_695,
      O => Result(25)
    );
  bloqueTempoInicio_Mcount_a_cy_26_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(25),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_26_rt_697,
      O => bloqueTempoInicio_Mcount_a_cy(26)
    );
  bloqueTempoInicio_Mcount_a_xor_26_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(25),
      LI => bloqueTempoInicio_Mcount_a_cy_26_rt_697,
      O => Result(26)
    );
  bloqueTempoInicio_Mcount_a_cy_27_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(26),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_27_rt_699,
      O => bloqueTempoInicio_Mcount_a_cy(27)
    );
  bloqueTempoInicio_Mcount_a_xor_27_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(26),
      LI => bloqueTempoInicio_Mcount_a_cy_27_rt_699,
      O => Result(27)
    );
  bloqueTempoInicio_Mcount_a_cy_28_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(27),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_28_rt_701,
      O => bloqueTempoInicio_Mcount_a_cy(28)
    );
  bloqueTempoInicio_Mcount_a_xor_28_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(27),
      LI => bloqueTempoInicio_Mcount_a_cy_28_rt_701,
      O => Result(28)
    );
  bloqueTempoInicio_Mcount_a_cy_29_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(28),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_29_rt_703,
      O => bloqueTempoInicio_Mcount_a_cy(29)
    );
  bloqueTempoInicio_Mcount_a_xor_29_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(28),
      LI => bloqueTempoInicio_Mcount_a_cy_29_rt_703,
      O => Result(29)
    );
  bloqueTempoInicio_Mcount_a_cy_30_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(29),
      DI => N0,
      S => bloqueTempoInicio_Mcount_a_cy_30_rt_707,
      O => bloqueTempoInicio_Mcount_a_cy(30)
    );
  bloqueTempoInicio_Mcount_a_xor_30_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(29),
      LI => bloqueTempoInicio_Mcount_a_cy_30_rt_707,
      O => Result(30)
    );
  bloqueTempoInicio_Mcount_a_xor_31_Q : XORCY
    port map (
      CI => bloqueTempoInicio_Mcount_a_cy(30),
      LI => bloqueTempoInicio_Mcount_a_xor_31_rt_755,
      O => Result(31)
    );
  bloqueTempoNave_Mcount_a_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => bloqueTempoNave_Mcount_a_lut(0),
      O => bloqueTempoNave_Mcount_a_cy(0)
    );
  bloqueTempoNave_Mcount_a_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => bloqueTempoNave_Mcount_a_lut(0),
      O => Result_0_1
    );
  bloqueTempoNave_Mcount_a_cy_1_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(0),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_1_rt_1103,
      O => bloqueTempoNave_Mcount_a_cy(1)
    );
  bloqueTempoNave_Mcount_a_xor_1_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(0),
      LI => bloqueTempoNave_Mcount_a_cy_1_rt_1103,
      O => Result_1_1
    );
  bloqueTempoNave_Mcount_a_cy_2_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(1),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_2_rt_1125,
      O => bloqueTempoNave_Mcount_a_cy(2)
    );
  bloqueTempoNave_Mcount_a_xor_2_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(1),
      LI => bloqueTempoNave_Mcount_a_cy_2_rt_1125,
      O => Result_2_1
    );
  bloqueTempoNave_Mcount_a_cy_3_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(2),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_3_rt_1129,
      O => bloqueTempoNave_Mcount_a_cy(3)
    );
  bloqueTempoNave_Mcount_a_xor_3_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(2),
      LI => bloqueTempoNave_Mcount_a_cy_3_rt_1129,
      O => Result_3_1
    );
  bloqueTempoNave_Mcount_a_cy_4_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(3),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_4_rt_1131,
      O => bloqueTempoNave_Mcount_a_cy(4)
    );
  bloqueTempoNave_Mcount_a_xor_4_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(3),
      LI => bloqueTempoNave_Mcount_a_cy_4_rt_1131,
      O => Result_4_1
    );
  bloqueTempoNave_Mcount_a_cy_5_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(4),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_5_rt_1133,
      O => bloqueTempoNave_Mcount_a_cy(5)
    );
  bloqueTempoNave_Mcount_a_xor_5_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(4),
      LI => bloqueTempoNave_Mcount_a_cy_5_rt_1133,
      O => Result_5_1
    );
  bloqueTempoNave_Mcount_a_cy_6_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(5),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_6_rt_1135,
      O => bloqueTempoNave_Mcount_a_cy(6)
    );
  bloqueTempoNave_Mcount_a_xor_6_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(5),
      LI => bloqueTempoNave_Mcount_a_cy_6_rt_1135,
      O => Result_6_1
    );
  bloqueTempoNave_Mcount_a_cy_7_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(6),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_7_rt_1137,
      O => bloqueTempoNave_Mcount_a_cy(7)
    );
  bloqueTempoNave_Mcount_a_xor_7_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(6),
      LI => bloqueTempoNave_Mcount_a_cy_7_rt_1137,
      O => Result_7_1
    );
  bloqueTempoNave_Mcount_a_cy_8_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(7),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_8_rt_1139,
      O => bloqueTempoNave_Mcount_a_cy(8)
    );
  bloqueTempoNave_Mcount_a_xor_8_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(7),
      LI => bloqueTempoNave_Mcount_a_cy_8_rt_1139,
      O => Result_8_1
    );
  bloqueTempoNave_Mcount_a_cy_9_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(8),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_9_rt_1141,
      O => bloqueTempoNave_Mcount_a_cy(9)
    );
  bloqueTempoNave_Mcount_a_xor_9_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(8),
      LI => bloqueTempoNave_Mcount_a_cy_9_rt_1141,
      O => Result_9_1
    );
  bloqueTempoNave_Mcount_a_cy_10_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(9),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_10_rt_1083,
      O => bloqueTempoNave_Mcount_a_cy(10)
    );
  bloqueTempoNave_Mcount_a_xor_10_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(9),
      LI => bloqueTempoNave_Mcount_a_cy_10_rt_1083,
      O => Result_10_1
    );
  bloqueTempoNave_Mcount_a_cy_11_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(10),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_11_rt_1085,
      O => bloqueTempoNave_Mcount_a_cy(11)
    );
  bloqueTempoNave_Mcount_a_xor_11_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(10),
      LI => bloqueTempoNave_Mcount_a_cy_11_rt_1085,
      O => Result_11_1
    );
  bloqueTempoNave_Mcount_a_cy_12_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(11),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_12_rt_1087,
      O => bloqueTempoNave_Mcount_a_cy(12)
    );
  bloqueTempoNave_Mcount_a_xor_12_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(11),
      LI => bloqueTempoNave_Mcount_a_cy_12_rt_1087,
      O => Result_12_1
    );
  bloqueTempoNave_Mcount_a_cy_13_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(12),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_13_rt_1089,
      O => bloqueTempoNave_Mcount_a_cy(13)
    );
  bloqueTempoNave_Mcount_a_xor_13_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(12),
      LI => bloqueTempoNave_Mcount_a_cy_13_rt_1089,
      O => Result_13_1
    );
  bloqueTempoNave_Mcount_a_cy_14_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(13),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_14_rt_1091,
      O => bloqueTempoNave_Mcount_a_cy(14)
    );
  bloqueTempoNave_Mcount_a_xor_14_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(13),
      LI => bloqueTempoNave_Mcount_a_cy_14_rt_1091,
      O => Result_14_1
    );
  bloqueTempoNave_Mcount_a_cy_15_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(14),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_15_rt_1093,
      O => bloqueTempoNave_Mcount_a_cy(15)
    );
  bloqueTempoNave_Mcount_a_xor_15_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(14),
      LI => bloqueTempoNave_Mcount_a_cy_15_rt_1093,
      O => Result_15_1
    );
  bloqueTempoNave_Mcount_a_cy_16_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(15),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_16_rt_1095,
      O => bloqueTempoNave_Mcount_a_cy(16)
    );
  bloqueTempoNave_Mcount_a_xor_16_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(15),
      LI => bloqueTempoNave_Mcount_a_cy_16_rt_1095,
      O => Result_16_1
    );
  bloqueTempoNave_Mcount_a_cy_17_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(16),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_17_rt_1097,
      O => bloqueTempoNave_Mcount_a_cy(17)
    );
  bloqueTempoNave_Mcount_a_xor_17_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(16),
      LI => bloqueTempoNave_Mcount_a_cy_17_rt_1097,
      O => Result_17_1
    );
  bloqueTempoNave_Mcount_a_cy_18_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(17),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_18_rt_1099,
      O => bloqueTempoNave_Mcount_a_cy(18)
    );
  bloqueTempoNave_Mcount_a_xor_18_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(17),
      LI => bloqueTempoNave_Mcount_a_cy_18_rt_1099,
      O => Result_18_1
    );
  bloqueTempoNave_Mcount_a_cy_19_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(18),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_19_rt_1101,
      O => bloqueTempoNave_Mcount_a_cy(19)
    );
  bloqueTempoNave_Mcount_a_xor_19_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(18),
      LI => bloqueTempoNave_Mcount_a_cy_19_rt_1101,
      O => Result_19_1
    );
  bloqueTempoNave_Mcount_a_cy_20_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(19),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_20_rt_1105,
      O => bloqueTempoNave_Mcount_a_cy(20)
    );
  bloqueTempoNave_Mcount_a_xor_20_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(19),
      LI => bloqueTempoNave_Mcount_a_cy_20_rt_1105,
      O => Result_20_1
    );
  bloqueTempoNave_Mcount_a_cy_21_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(20),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_21_rt_1107,
      O => bloqueTempoNave_Mcount_a_cy(21)
    );
  bloqueTempoNave_Mcount_a_xor_21_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(20),
      LI => bloqueTempoNave_Mcount_a_cy_21_rt_1107,
      O => Result_21_1
    );
  bloqueTempoNave_Mcount_a_cy_22_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(21),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_22_rt_1109,
      O => bloqueTempoNave_Mcount_a_cy(22)
    );
  bloqueTempoNave_Mcount_a_xor_22_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(21),
      LI => bloqueTempoNave_Mcount_a_cy_22_rt_1109,
      O => Result_22_1
    );
  bloqueTempoNave_Mcount_a_cy_23_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(22),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_23_rt_1111,
      O => bloqueTempoNave_Mcount_a_cy(23)
    );
  bloqueTempoNave_Mcount_a_xor_23_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(22),
      LI => bloqueTempoNave_Mcount_a_cy_23_rt_1111,
      O => Result_23_1
    );
  bloqueTempoNave_Mcount_a_cy_24_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(23),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_24_rt_1113,
      O => bloqueTempoNave_Mcount_a_cy(24)
    );
  bloqueTempoNave_Mcount_a_xor_24_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(23),
      LI => bloqueTempoNave_Mcount_a_cy_24_rt_1113,
      O => Result_24_1
    );
  bloqueTempoNave_Mcount_a_cy_25_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(24),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_25_rt_1115,
      O => bloqueTempoNave_Mcount_a_cy(25)
    );
  bloqueTempoNave_Mcount_a_xor_25_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(24),
      LI => bloqueTempoNave_Mcount_a_cy_25_rt_1115,
      O => Result_25_1
    );
  bloqueTempoNave_Mcount_a_cy_26_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(25),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_26_rt_1117,
      O => bloqueTempoNave_Mcount_a_cy(26)
    );
  bloqueTempoNave_Mcount_a_xor_26_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(25),
      LI => bloqueTempoNave_Mcount_a_cy_26_rt_1117,
      O => Result_26_1
    );
  bloqueTempoNave_Mcount_a_cy_27_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(26),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_27_rt_1119,
      O => bloqueTempoNave_Mcount_a_cy(27)
    );
  bloqueTempoNave_Mcount_a_xor_27_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(26),
      LI => bloqueTempoNave_Mcount_a_cy_27_rt_1119,
      O => Result_27_1
    );
  bloqueTempoNave_Mcount_a_cy_28_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(27),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_28_rt_1121,
      O => bloqueTempoNave_Mcount_a_cy(28)
    );
  bloqueTempoNave_Mcount_a_xor_28_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(27),
      LI => bloqueTempoNave_Mcount_a_cy_28_rt_1121,
      O => Result_28_1
    );
  bloqueTempoNave_Mcount_a_cy_29_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(28),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_29_rt_1123,
      O => bloqueTempoNave_Mcount_a_cy(29)
    );
  bloqueTempoNave_Mcount_a_xor_29_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(28),
      LI => bloqueTempoNave_Mcount_a_cy_29_rt_1123,
      O => Result_29_1
    );
  bloqueTempoNave_Mcount_a_cy_30_Q : MUXCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(29),
      DI => N0,
      S => bloqueTempoNave_Mcount_a_cy_30_rt_1127,
      O => bloqueTempoNave_Mcount_a_cy(30)
    );
  bloqueTempoNave_Mcount_a_xor_30_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(29),
      LI => bloqueTempoNave_Mcount_a_cy_30_rt_1127,
      O => Result_30_1
    );
  bloqueTempoNave_Mcount_a_xor_31_Q : XORCY
    port map (
      CI => bloqueTempoNave_Mcount_a_cy(30),
      LI => bloqueTempoNave_Mcount_a_xor_31_rt_1175,
      O => Result_31_1
    );
  bloqueTempoBala_Mcount_a_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => bloqueTempoBala_Mcount_a_lut(0),
      O => bloqueTempoBala_Mcount_a_cy(0)
    );
  bloqueTempoBala_Mcount_a_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => bloqueTempoBala_Mcount_a_lut(0),
      O => Result_0_2
    );
  bloqueTempoBala_Mcount_a_cy_1_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(0),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_1_rt_537,
      O => bloqueTempoBala_Mcount_a_cy(1)
    );
  bloqueTempoBala_Mcount_a_xor_1_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(0),
      LI => bloqueTempoBala_Mcount_a_cy_1_rt_537,
      O => Result_1_2
    );
  bloqueTempoBala_Mcount_a_cy_2_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(1),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_2_rt_559,
      O => bloqueTempoBala_Mcount_a_cy(2)
    );
  bloqueTempoBala_Mcount_a_xor_2_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(1),
      LI => bloqueTempoBala_Mcount_a_cy_2_rt_559,
      O => Result_2_2
    );
  bloqueTempoBala_Mcount_a_cy_3_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(2),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_3_rt_563,
      O => bloqueTempoBala_Mcount_a_cy(3)
    );
  bloqueTempoBala_Mcount_a_xor_3_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(2),
      LI => bloqueTempoBala_Mcount_a_cy_3_rt_563,
      O => Result_3_2
    );
  bloqueTempoBala_Mcount_a_cy_4_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(3),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_4_rt_565,
      O => bloqueTempoBala_Mcount_a_cy(4)
    );
  bloqueTempoBala_Mcount_a_xor_4_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(3),
      LI => bloqueTempoBala_Mcount_a_cy_4_rt_565,
      O => Result_4_2
    );
  bloqueTempoBala_Mcount_a_cy_5_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(4),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_5_rt_567,
      O => bloqueTempoBala_Mcount_a_cy(5)
    );
  bloqueTempoBala_Mcount_a_xor_5_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(4),
      LI => bloqueTempoBala_Mcount_a_cy_5_rt_567,
      O => Result_5_2
    );
  bloqueTempoBala_Mcount_a_cy_6_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(5),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_6_rt_569,
      O => bloqueTempoBala_Mcount_a_cy(6)
    );
  bloqueTempoBala_Mcount_a_xor_6_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(5),
      LI => bloqueTempoBala_Mcount_a_cy_6_rt_569,
      O => Result_6_2
    );
  bloqueTempoBala_Mcount_a_cy_7_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(6),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_7_rt_571,
      O => bloqueTempoBala_Mcount_a_cy(7)
    );
  bloqueTempoBala_Mcount_a_xor_7_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(6),
      LI => bloqueTempoBala_Mcount_a_cy_7_rt_571,
      O => Result_7_2
    );
  bloqueTempoBala_Mcount_a_cy_8_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(7),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_8_rt_573,
      O => bloqueTempoBala_Mcount_a_cy(8)
    );
  bloqueTempoBala_Mcount_a_xor_8_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(7),
      LI => bloqueTempoBala_Mcount_a_cy_8_rt_573,
      O => Result_8_2
    );
  bloqueTempoBala_Mcount_a_cy_9_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(8),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_9_rt_575,
      O => bloqueTempoBala_Mcount_a_cy(9)
    );
  bloqueTempoBala_Mcount_a_xor_9_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(8),
      LI => bloqueTempoBala_Mcount_a_cy_9_rt_575,
      O => Result_9_2
    );
  bloqueTempoBala_Mcount_a_cy_10_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(9),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_10_rt_517,
      O => bloqueTempoBala_Mcount_a_cy(10)
    );
  bloqueTempoBala_Mcount_a_xor_10_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(9),
      LI => bloqueTempoBala_Mcount_a_cy_10_rt_517,
      O => Result_10_2
    );
  bloqueTempoBala_Mcount_a_cy_11_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(10),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_11_rt_519,
      O => bloqueTempoBala_Mcount_a_cy(11)
    );
  bloqueTempoBala_Mcount_a_xor_11_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(10),
      LI => bloqueTempoBala_Mcount_a_cy_11_rt_519,
      O => Result_11_2
    );
  bloqueTempoBala_Mcount_a_cy_12_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(11),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_12_rt_521,
      O => bloqueTempoBala_Mcount_a_cy(12)
    );
  bloqueTempoBala_Mcount_a_xor_12_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(11),
      LI => bloqueTempoBala_Mcount_a_cy_12_rt_521,
      O => Result_12_2
    );
  bloqueTempoBala_Mcount_a_cy_13_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(12),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_13_rt_523,
      O => bloqueTempoBala_Mcount_a_cy(13)
    );
  bloqueTempoBala_Mcount_a_xor_13_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(12),
      LI => bloqueTempoBala_Mcount_a_cy_13_rt_523,
      O => Result_13_2
    );
  bloqueTempoBala_Mcount_a_cy_14_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(13),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_14_rt_525,
      O => bloqueTempoBala_Mcount_a_cy(14)
    );
  bloqueTempoBala_Mcount_a_xor_14_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(13),
      LI => bloqueTempoBala_Mcount_a_cy_14_rt_525,
      O => Result_14_2
    );
  bloqueTempoBala_Mcount_a_cy_15_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(14),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_15_rt_527,
      O => bloqueTempoBala_Mcount_a_cy(15)
    );
  bloqueTempoBala_Mcount_a_xor_15_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(14),
      LI => bloqueTempoBala_Mcount_a_cy_15_rt_527,
      O => Result_15_2
    );
  bloqueTempoBala_Mcount_a_cy_16_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(15),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_16_rt_529,
      O => bloqueTempoBala_Mcount_a_cy(16)
    );
  bloqueTempoBala_Mcount_a_xor_16_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(15),
      LI => bloqueTempoBala_Mcount_a_cy_16_rt_529,
      O => Result_16_2
    );
  bloqueTempoBala_Mcount_a_cy_17_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(16),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_17_rt_531,
      O => bloqueTempoBala_Mcount_a_cy(17)
    );
  bloqueTempoBala_Mcount_a_xor_17_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(16),
      LI => bloqueTempoBala_Mcount_a_cy_17_rt_531,
      O => Result_17_2
    );
  bloqueTempoBala_Mcount_a_cy_18_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(17),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_18_rt_533,
      O => bloqueTempoBala_Mcount_a_cy(18)
    );
  bloqueTempoBala_Mcount_a_xor_18_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(17),
      LI => bloqueTempoBala_Mcount_a_cy_18_rt_533,
      O => Result_18_2
    );
  bloqueTempoBala_Mcount_a_cy_19_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(18),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_19_rt_535,
      O => bloqueTempoBala_Mcount_a_cy(19)
    );
  bloqueTempoBala_Mcount_a_xor_19_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(18),
      LI => bloqueTempoBala_Mcount_a_cy_19_rt_535,
      O => Result_19_2
    );
  bloqueTempoBala_Mcount_a_cy_20_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(19),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_20_rt_539,
      O => bloqueTempoBala_Mcount_a_cy(20)
    );
  bloqueTempoBala_Mcount_a_xor_20_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(19),
      LI => bloqueTempoBala_Mcount_a_cy_20_rt_539,
      O => Result_20_2
    );
  bloqueTempoBala_Mcount_a_cy_21_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(20),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_21_rt_541,
      O => bloqueTempoBala_Mcount_a_cy(21)
    );
  bloqueTempoBala_Mcount_a_xor_21_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(20),
      LI => bloqueTempoBala_Mcount_a_cy_21_rt_541,
      O => Result_21_2
    );
  bloqueTempoBala_Mcount_a_cy_22_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(21),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_22_rt_543,
      O => bloqueTempoBala_Mcount_a_cy(22)
    );
  bloqueTempoBala_Mcount_a_xor_22_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(21),
      LI => bloqueTempoBala_Mcount_a_cy_22_rt_543,
      O => Result_22_2
    );
  bloqueTempoBala_Mcount_a_cy_23_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(22),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_23_rt_545,
      O => bloqueTempoBala_Mcount_a_cy(23)
    );
  bloqueTempoBala_Mcount_a_xor_23_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(22),
      LI => bloqueTempoBala_Mcount_a_cy_23_rt_545,
      O => Result_23_2
    );
  bloqueTempoBala_Mcount_a_cy_24_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(23),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_24_rt_547,
      O => bloqueTempoBala_Mcount_a_cy(24)
    );
  bloqueTempoBala_Mcount_a_xor_24_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(23),
      LI => bloqueTempoBala_Mcount_a_cy_24_rt_547,
      O => Result_24_2
    );
  bloqueTempoBala_Mcount_a_cy_25_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(24),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_25_rt_549,
      O => bloqueTempoBala_Mcount_a_cy(25)
    );
  bloqueTempoBala_Mcount_a_xor_25_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(24),
      LI => bloqueTempoBala_Mcount_a_cy_25_rt_549,
      O => Result_25_2
    );
  bloqueTempoBala_Mcount_a_cy_26_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(25),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_26_rt_551,
      O => bloqueTempoBala_Mcount_a_cy(26)
    );
  bloqueTempoBala_Mcount_a_xor_26_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(25),
      LI => bloqueTempoBala_Mcount_a_cy_26_rt_551,
      O => Result_26_2
    );
  bloqueTempoBala_Mcount_a_cy_27_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(26),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_27_rt_553,
      O => bloqueTempoBala_Mcount_a_cy(27)
    );
  bloqueTempoBala_Mcount_a_xor_27_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(26),
      LI => bloqueTempoBala_Mcount_a_cy_27_rt_553,
      O => Result_27_2
    );
  bloqueTempoBala_Mcount_a_cy_28_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(27),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_28_rt_555,
      O => bloqueTempoBala_Mcount_a_cy(28)
    );
  bloqueTempoBala_Mcount_a_xor_28_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(27),
      LI => bloqueTempoBala_Mcount_a_cy_28_rt_555,
      O => Result_28_2
    );
  bloqueTempoBala_Mcount_a_cy_29_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(28),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_29_rt_557,
      O => bloqueTempoBala_Mcount_a_cy(29)
    );
  bloqueTempoBala_Mcount_a_xor_29_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(28),
      LI => bloqueTempoBala_Mcount_a_cy_29_rt_557,
      O => Result_29_2
    );
  bloqueTempoBala_Mcount_a_cy_30_Q : MUXCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(29),
      DI => N0,
      S => bloqueTempoBala_Mcount_a_cy_30_rt_561,
      O => bloqueTempoBala_Mcount_a_cy(30)
    );
  bloqueTempoBala_Mcount_a_xor_30_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(29),
      LI => bloqueTempoBala_Mcount_a_cy_30_rt_561,
      O => Result_30_2
    );
  bloqueTempoBala_Mcount_a_xor_31_Q : XORCY
    port map (
      CI => bloqueTempoBala_Mcount_a_cy(30),
      LI => bloqueTempoBala_Mcount_a_xor_31_rt_609,
      O => Result_31_2
    );
  bloqueMarcianos_Mmux_varindex0001_8 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueMarcianos_Mrom_Color_rom000022_322,
      I2 => bloqueMarcianos_Mrom_Color_rom000023,
      O => bloqueMarcianos_Mmux_varindex0001_8_294
    );
  bloqueMarcianos_Mmux_varindex0001_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueMarcianos_Mrom_Color_rom000011,
      I2 => bloqueMarcianos_Mrom_Color_rom000010,
      O => bloqueMarcianos_Mmux_varindex0001_9_297
    );
  bloqueMarcianos_Mmux_varindex0001_7_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0001_9_297,
      I1 => bloqueMarcianos_Mmux_varindex0001_8_294,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueMarcianos_Mmux_varindex0001_7_f5_293
    );
  bloqueMarcianos_Mmux_varindex0001_10 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueMarcianos_Mrom_Color_rom000015_321,
      I2 => bloqueMarcianos_Mrom_Color_rom000013,
      O => bloqueMarcianos_Mmux_varindex0001_10_278
    );
  bloqueMarcianos_Mmux_varindex0001_8_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0001_10_278,
      I1 => bloqueMarcianos_Mmux_varindex0001_91_298,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueMarcianos_Mmux_varindex0001_8_f5_295
    );
  bloqueMarcianos_Mmux_varindex0001_6_f6 : MUXF6
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0001_8_f5_295,
      I1 => bloqueMarcianos_Mmux_varindex0001_7_f5_293,
      S => bloqueVga_bloqueSyncH_p(2),
      O => bloqueMarcianos_Mmux_varindex0001_6_f6_292
    );
  bloqueMarcianos_Mmux_varindex0001_11 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueMarcianos_Mrom_Color_rom000026_327,
      I2 => bloqueMarcianos_Mrom_Color_rom000027,
      O => bloqueMarcianos_Mmux_varindex0001_11_282
    );
  bloqueMarcianos_Mmux_varindex0001_10_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0001_12_286,
      I1 => bloqueMarcianos_Mmux_varindex0001_11_282,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueMarcianos_Mmux_varindex0001_10_f5_280
    );
  bloqueMarcianos_Mmux_varindex0001_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(3),
      I1 => bloqueMarcianos_Mmux_varindex0001_6_f6_292,
      I2 => bloqueMarcianos_X_2_1,
      O => bloqueMarcianos_Mmux_varindex0001_3_290
    );
  bloqueMarcianos_Mmux_varindex0001_13 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueMarcianos_Mrom_Color_rom000027,
      I2 => bloqueMarcianos_Mrom_Color_rom000026_327,
      O => bloqueMarcianos_Mmux_varindex0001_13_289
    );
  bloqueMarcianos_Mmux_varindex0001_11_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0001_13_289,
      I1 => bloqueMarcianos_Mmux_varindex0001_121_287,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueMarcianos_Mmux_varindex0001_11_f5_285
    );
  bloqueMarcianos_Mmux_varindex0001_101 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueMarcianos_Mrom_Color_rom000013,
      I2 => bloqueMarcianos_Mrom_Color_rom000015_321,
      O => bloqueMarcianos_Mmux_varindex0001_101_279
    );
  bloqueMarcianos_Mmux_varindex0001_9_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0001_111_283,
      I1 => bloqueMarcianos_Mmux_varindex0001_101_279,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueMarcianos_Mmux_varindex0001_9_f5_299
    );
  bloqueMarcianos_Mmux_varindex0001_112 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueMarcianos_Mrom_Color_rom000010,
      I2 => bloqueMarcianos_Mrom_Color_rom000011,
      O => bloqueMarcianos_Mmux_varindex0001_112_284
    );
  bloqueMarcianos_Mmux_varindex0001_122 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueMarcianos_Mrom_Color_rom000023,
      I2 => bloqueMarcianos_Mrom_Color_rom000022_322,
      O => bloqueMarcianos_Mmux_varindex0001_122_288
    );
  bloqueMarcianos_Mmux_varindex0001_10_f5_0 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0001_122_288,
      I1 => bloqueMarcianos_Mmux_varindex0001_112_284,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueMarcianos_Mmux_varindex0001_10_f51
    );
  bloqueMarcianos_Mmux_varindex0001_8_f6 : MUXF6
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0001_10_f51,
      I1 => bloqueMarcianos_Mmux_varindex0001_9_f5_299,
      S => bloqueVga_bloqueSyncH_p(2),
      O => bloqueMarcianos_Mmux_varindex0001_8_f6_296
    );
  bloqueMarcianos_Mmux_varindex0001_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(3),
      I1 => bloqueMarcianos_X_2_2_363,
      I2 => bloqueMarcianos_Mmux_varindex0001_8_f6_296,
      O => bloqueMarcianos_Mmux_varindex0001_4_291
    );
  bloqueMarcianos_Mmux_varindex0001_2_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0001_4_291,
      I1 => bloqueMarcianos_Mmux_varindex0001_3_290,
      S => bloqueVga_bloqueSyncH_p(4),
      O => bloqueMarcianos_varindex00011
    );
  bloqueMarcianos_Mmux_varindex0002_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueBala_xBalaInt(2),
      I1 => bloqueMarcianos_fila(11),
      I2 => bloqueMarcianos_fila(15),
      O => bloqueMarcianos_Mmux_varindex0002_8_310
    );
  bloqueMarcianos_Mmux_varindex0002_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueBala_xBalaInt(2),
      I1 => bloqueMarcianos_fila(3),
      I2 => bloqueMarcianos_fila(7),
      O => bloqueMarcianos_Mmux_varindex0002_9_314
    );
  bloqueMarcianos_Mmux_varindex0002_7_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0002_9_314,
      I1 => bloqueMarcianos_Mmux_varindex0002_8_310,
      S => bloqueBala_xBalaInt(3),
      O => bloqueMarcianos_Mmux_varindex0002_7_f5_308
    );
  bloqueMarcianos_Mmux_varindex0002_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueBala_xBalaInt(2),
      I1 => bloqueMarcianos_fila(10),
      I2 => bloqueMarcianos_fila(14),
      O => bloqueMarcianos_Mmux_varindex0002_91_315
    );
  bloqueMarcianos_Mmux_varindex0002_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueBala_xBalaInt(2),
      I1 => bloqueMarcianos_fila(2),
      I2 => bloqueMarcianos_fila(6),
      O => bloqueMarcianos_Mmux_varindex0002_10_300
    );
  bloqueMarcianos_Mmux_varindex0002_8_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0002_10_300,
      I1 => bloqueMarcianos_Mmux_varindex0002_91_315,
      S => bloqueBala_xBalaInt(3),
      O => bloqueMarcianos_Mmux_varindex0002_8_f5_312
    );
  bloqueMarcianos_Mmux_varindex0002_6_f6 : MUXF6
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0002_8_f5_312,
      I1 => bloqueMarcianos_Mmux_varindex0002_7_f5_308,
      S => bloqueBala_xBalaInt(0),
      O => bloqueMarcianos_Mmux_varindex0002_6_f6_306
    );
  bloqueMarcianos_Mmux_varindex0002_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueBala_xBalaInt(2),
      I1 => bloqueMarcianos_fila(9),
      I2 => bloqueMarcianos_fila(13),
      O => bloqueMarcianos_Mmux_varindex0002_92_316
    );
  bloqueMarcianos_Mmux_varindex0002_101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueBala_xBalaInt(2),
      I1 => bloqueMarcianos_fila(1),
      I2 => bloqueMarcianos_fila(5),
      O => bloqueMarcianos_Mmux_varindex0002_101_301
    );
  bloqueMarcianos_Mmux_varindex0002_8_f5_0 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0002_101_301,
      I1 => bloqueMarcianos_Mmux_varindex0002_92_316,
      S => bloqueBala_xBalaInt(3),
      O => bloqueMarcianos_Mmux_varindex0002_8_f51
    );
  bloqueMarcianos_Mmux_varindex0002_102 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueBala_xBalaInt(2),
      I1 => bloqueMarcianos_fila(8),
      I2 => bloqueMarcianos_fila(12),
      O => bloqueMarcianos_Mmux_varindex0002_102_302
    );
  bloqueMarcianos_Mmux_varindex0002_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueBala_xBalaInt(2),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueMarcianos_fila(4),
      O => bloqueMarcianos_Mmux_varindex0002_11_303
    );
  bloqueMarcianos_Mmux_varindex0002_9_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0002_11_303,
      I1 => bloqueMarcianos_Mmux_varindex0002_102_302,
      S => bloqueBala_xBalaInt(3),
      O => bloqueMarcianos_Mmux_varindex0002_9_f5_317
    );
  bloqueMarcianos_Mmux_varindex0002_7_f6 : MUXF6
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0002_9_f5_317,
      I1 => bloqueMarcianos_Mmux_varindex0002_8_f51,
      S => bloqueBala_xBalaInt(0),
      O => bloqueMarcianos_Mmux_varindex0002_7_f6_309
    );
  bloqueMarcianos_Mmux_varindex0002_5_f7 : MUXF7
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0002_7_f6_309,
      I1 => bloqueMarcianos_Mmux_varindex0002_6_f6_306,
      S => bloqueBala_xBalaInt(1),
      O => bloqueMarcianos_Mmux_varindex0002_5_f7_304
    );
  bloqueMarcianos_Mmux_varindex0002_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueBala_xBalaInt(0),
      I1 => bloqueMarcianos_fila(18),
      I2 => bloqueMarcianos_fila(19),
      O => bloqueMarcianos_Mmux_varindex0002_7_307
    );
  bloqueMarcianos_Mmux_varindex0002_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueBala_xBalaInt(0),
      I1 => bloqueMarcianos_fila(16),
      I2 => bloqueMarcianos_fila(17),
      O => bloqueMarcianos_Mmux_varindex0002_81_311
    );
  bloqueMarcianos_Mmux_varindex0002_6_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0002_81_311,
      I1 => bloqueMarcianos_Mmux_varindex0002_7_307,
      S => bloqueBala_xBalaInt(1),
      O => bloqueMarcianos_Mmux_varindex0002_6_f5_305
    );
  bloqueMarcianos_Mmux_varindex0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueMarcianos_fila(11),
      I2 => bloqueMarcianos_fila(15),
      O => bloqueMarcianos_Mmux_varindex0000_8_270
    );
  bloqueMarcianos_Mmux_varindex0000_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueMarcianos_fila(3),
      I2 => bloqueMarcianos_fila(7),
      O => bloqueMarcianos_Mmux_varindex0000_9_274
    );
  bloqueMarcianos_Mmux_varindex0000_7_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0000_9_274,
      I1 => bloqueMarcianos_Mmux_varindex0000_8_270,
      S => bloqueVga_bloqueSyncH_p(8),
      O => bloqueMarcianos_Mmux_varindex0000_7_f5_268
    );
  bloqueMarcianos_Mmux_varindex0000_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueMarcianos_fila(10),
      I2 => bloqueMarcianos_fila(14),
      O => bloqueMarcianos_Mmux_varindex0000_91_275
    );
  bloqueMarcianos_Mmux_varindex0000_10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueMarcianos_fila(2),
      I2 => bloqueMarcianos_fila(6),
      O => bloqueMarcianos_Mmux_varindex0000_10_260
    );
  bloqueMarcianos_Mmux_varindex0000_8_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0000_10_260,
      I1 => bloqueMarcianos_Mmux_varindex0000_91_275,
      S => bloqueVga_bloqueSyncH_p(8),
      O => bloqueMarcianos_Mmux_varindex0000_8_f5_272
    );
  bloqueMarcianos_Mmux_varindex0000_6_f6 : MUXF6
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0000_8_f5_272,
      I1 => bloqueMarcianos_Mmux_varindex0000_7_f5_268,
      S => bloqueVga_bloqueSyncH_p(5),
      O => bloqueMarcianos_Mmux_varindex0000_6_f6_266
    );
  bloqueMarcianos_Mmux_varindex0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueMarcianos_fila(9),
      I2 => bloqueMarcianos_fila(13),
      O => bloqueMarcianos_Mmux_varindex0000_92_276
    );
  bloqueMarcianos_Mmux_varindex0000_101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueMarcianos_fila(1),
      I2 => bloqueMarcianos_fila(5),
      O => bloqueMarcianos_Mmux_varindex0000_101_261
    );
  bloqueMarcianos_Mmux_varindex0000_8_f5_0 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0000_101_261,
      I1 => bloqueMarcianos_Mmux_varindex0000_92_276,
      S => bloqueVga_bloqueSyncH_p(8),
      O => bloqueMarcianos_Mmux_varindex0000_8_f51
    );
  bloqueMarcianos_Mmux_varindex0000_102 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueMarcianos_fila(8),
      I2 => bloqueMarcianos_fila(12),
      O => bloqueMarcianos_Mmux_varindex0000_102_262
    );
  bloqueMarcianos_Mmux_varindex0000_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueMarcianos_fila(4),
      O => bloqueMarcianos_Mmux_varindex0000_11_263
    );
  bloqueMarcianos_Mmux_varindex0000_9_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0000_11_263,
      I1 => bloqueMarcianos_Mmux_varindex0000_102_262,
      S => bloqueVga_bloqueSyncH_p(8),
      O => bloqueMarcianos_Mmux_varindex0000_9_f5_277
    );
  bloqueMarcianos_Mmux_varindex0000_7_f6 : MUXF6
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0000_9_f5_277,
      I1 => bloqueMarcianos_Mmux_varindex0000_8_f51,
      S => bloqueVga_bloqueSyncH_p(5),
      O => bloqueMarcianos_Mmux_varindex0000_7_f6_269
    );
  bloqueMarcianos_Mmux_varindex0000_5_f7 : MUXF7
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0000_7_f6_269,
      I1 => bloqueMarcianos_Mmux_varindex0000_6_f6_266,
      S => bloqueVga_bloqueSyncH_p(6),
      O => bloqueMarcianos_Mmux_varindex0000_5_f7_264
    );
  bloqueMarcianos_Mmux_varindex0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(5),
      I1 => bloqueMarcianos_fila(18),
      I2 => bloqueMarcianos_fila(19),
      O => bloqueMarcianos_Mmux_varindex0000_7_267
    );
  bloqueMarcianos_Mmux_varindex0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(5),
      I1 => bloqueMarcianos_fila(16),
      I2 => bloqueMarcianos_fila(17),
      O => bloqueMarcianos_Mmux_varindex0000_81_271
    );
  bloqueMarcianos_Mmux_varindex0000_6_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0000_81_271,
      I1 => bloqueMarcianos_Mmux_varindex0000_7_267,
      S => bloqueVga_bloqueSyncH_p(6),
      O => bloqueMarcianos_Mmux_varindex0000_6_f5_265
    );
  bloqueMarcianos_fila_7 : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_7_not0001_420,
      D => bloqueMarcianos_fila_7_mux0000_419,
      PRE => Reset_IBUF_90,
      Q => bloqueMarcianos_fila(7)
    );
  bloqueMarcianos_fila_6 : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_6_not0001_417,
      D => bloqueMarcianos_fila_6_mux0000_416,
      PRE => Reset_IBUF_90,
      Q => bloqueMarcianos_fila(6)
    );
  bloqueMarcianos_fila_5 : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_5_not0001_414,
      D => bloqueMarcianos_fila_5_mux0000_413,
      PRE => Reset_IBUF_90,
      Q => bloqueMarcianos_fila(5)
    );
  bloqueMarcianos_fila_4 : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_4_not0001_411,
      D => bloqueMarcianos_fila_4_mux0000_410,
      PRE => Reset_IBUF_90,
      Q => bloqueMarcianos_fila(4)
    );
  bloqueMarcianos_fila_3 : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_3_not0001_408,
      D => bloqueMarcianos_fila_3_mux0000_407,
      PRE => Reset_IBUF_90,
      Q => bloqueMarcianos_fila(3)
    );
  bloqueMarcianos_fila_2 : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_2_not0001_405,
      D => bloqueMarcianos_fila_2_mux0000_404,
      PRE => Reset_IBUF_90,
      Q => bloqueMarcianos_fila(2)
    );
  bloqueMarcianos_fila_1 : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_1_not0001_402,
      D => bloqueMarcianos_fila_1_mux0000,
      PRE => Reset_IBUF_90,
      Q => bloqueMarcianos_fila(1)
    );
  bloqueMarcianos_fila_0 : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_0_not0001_367,
      D => bloqueMarcianos_fila_0_mux0000,
      PRE => Reset_IBUF_90,
      Q => bloqueMarcianos_fila(0)
    );
  bloqueMarcianos_Tocado : FDE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_Tocado_and0000,
      D => bloqueMarcianos_Tocado_and0001,
      Q => bloqueMarcianos_Tocado_355
    );
  bloqueMarcianos_fila_19 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_19_not0001_398,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_fila_19_mux0000,
      Q => bloqueMarcianos_fila(19)
    );
  bloqueMarcianos_yComun_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_yComun_not0001_438,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_yComun_mux0000(3),
      Q => bloqueMarcianos_yComun(3)
    );
  bloqueMarcianos_yComun_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_yComun_not0001_438,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_yComun_mux0000(2),
      Q => bloqueMarcianos_yComun(2)
    );
  bloqueMarcianos_yComun_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_yComun_not0001_438,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_yComun_mux0000(1),
      Q => bloqueMarcianos_yComun(1)
    );
  bloqueMarcianos_yComun_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_yComun_not0001_438,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_yComun_mux0000(0),
      Q => bloqueMarcianos_yComun(0)
    );
  bloqueMarcianos_fila_18 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_18_not0001_395,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_fila_18_mux0000,
      Q => bloqueMarcianos_fila(18)
    );
  bloqueMarcianos_fila_17 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_17_not0001_392,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_fila_17_mux0000,
      Q => bloqueMarcianos_fila(17)
    );
  bloqueMarcianos_fila_16 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_16_not0001_389,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_fila_16_mux0000,
      Q => bloqueMarcianos_fila(16)
    );
  bloqueMarcianos_fila_15 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_15_not0001_386,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_fila_15_mux0000,
      Q => bloqueMarcianos_fila(15)
    );
  bloqueMarcianos_fila_14 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_14_not0001_383,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_fila_14_mux0000,
      Q => bloqueMarcianos_fila(14)
    );
  bloqueMarcianos_fila_13 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_13_not0001_380,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_fila_13_mux0000,
      Q => bloqueMarcianos_fila(13)
    );
  bloqueMarcianos_fila_12 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_12_not0001_377,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_fila_12_mux0000,
      Q => bloqueMarcianos_fila(12)
    );
  bloqueMarcianos_fila_11 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_11_not0001_374,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_fila_11_mux0000,
      Q => bloqueMarcianos_fila(11)
    );
  bloqueMarcianos_fila_10 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_10_not0001_371,
      CLR => Reset_IBUF_90,
      D => bloqueMarcianos_fila_10_mux0000,
      Q => bloqueMarcianos_fila(10)
    );
  bloqueMarcianos_fila_9 : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_9_not0001_429,
      D => bloqueMarcianos_fila_9_mux0000_428,
      PRE => Reset_IBUF_90,
      Q => bloqueMarcianos_fila(9)
    );
  bloqueMarcianos_fila_8 : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMarcianos_fila_8_not0001_426,
      D => bloqueMarcianos_fila_8_mux0000_425,
      PRE => Reset_IBUF_90,
      Q => bloqueMarcianos_fila(8)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_15_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(14),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(15),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_15_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(30),
      I1 => bloqueTempoMarcianos_mult0001(30),
      I2 => bloqueTempoMarcianos_a(31),
      I3 => bloqueTempoMarcianos_mult0001(31),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(15)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_14_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(13),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(14),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(14)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_14_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(28),
      I1 => bloqueTempoMarcianos_mult0001(28),
      I2 => bloqueTempoMarcianos_a(29),
      I3 => bloqueTempoMarcianos_mult0001(29),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(14)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_13_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(12),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(13),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(13)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_13_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(26),
      I1 => bloqueTempoMarcianos_mult0001(26),
      I2 => bloqueTempoMarcianos_a(27),
      I3 => bloqueTempoMarcianos_mult0001(27),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(13)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_12_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(11),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(12),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(12)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_12_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(24),
      I1 => bloqueTempoMarcianos_mult0001(24),
      I2 => bloqueTempoMarcianos_a(25),
      I3 => bloqueTempoMarcianos_mult0001(25),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(12)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_11_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(10),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(11),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(11)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_11_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(22),
      I1 => bloqueTempoMarcianos_mult0001(22),
      I2 => bloqueTempoMarcianos_a(23),
      I3 => bloqueTempoMarcianos_mult0001(23),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(11)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_10_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(9),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(10),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(10)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_10_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(20),
      I1 => bloqueTempoMarcianos_mult0001(20),
      I2 => bloqueTempoMarcianos_a(21),
      I3 => bloqueTempoMarcianos_mult0001(21),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(10)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_9_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(8),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(9),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(9)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(18),
      I1 => bloqueTempoMarcianos_mult0001(18),
      I2 => bloqueTempoMarcianos_a(19),
      I3 => bloqueTempoMarcianos_mult0001(19),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(9)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_8_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(7),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(8),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(8)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_8_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(16),
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_16,
      I2 => bloqueTempoMarcianos_a(17),
      I3 => bloqueTempoMarcianos_mult0001(17),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(8)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_7_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(6),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(7),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(7)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_7_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(15),
      I1 => bloqueTempoMarcianos_a(14),
      I2 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_14,
      I3 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_15,
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(7)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_6_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(5),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(6),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(6)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_6_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(13),
      I1 => bloqueTempoMarcianos_a(12),
      I2 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_12,
      I3 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_13,
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(6)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_5_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(4),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(5),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(5)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_5_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(11),
      I1 => bloqueTempoMarcianos_a(10),
      I2 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_10,
      I3 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_11,
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(5)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_4_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(3),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(4),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(4)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_4_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(8),
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_8,
      I2 => bloqueTempoMarcianos_a(9),
      I3 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_9,
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(4)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_3_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(2),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(3),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(3)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(6),
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_6,
      I2 => bloqueTempoMarcianos_a(7),
      I3 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_7,
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(3)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_2_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(1),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(2),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(2)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(4),
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_4,
      I2 => bloqueTempoMarcianos_a(5),
      I3 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_5,
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(2)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_1_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(0),
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(1),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(1)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_1_Q : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(3),
      I1 => bloqueTempoMarcianos_a(2),
      I2 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_3,
      I3 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_2,
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(1)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(0),
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(0)
    );
  bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueTempoMarcianos_a(0),
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_0,
      I2 => bloqueTempoMarcianos_a(1),
      I3 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_1,
      O => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_lut(0)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_31_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(30),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(31),
      O => bloqueTempoMarcianos_mult0001(31)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_31_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_14,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_31,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(31)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_30_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(29),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(30),
      O => bloqueTempoMarcianos_mult0001(30)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_30_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(29),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_13,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(30),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(30)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_30_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_13,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_30,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(30)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_29_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(28),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(29),
      O => bloqueTempoMarcianos_mult0001(29)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_29_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(28),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_12,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(29),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(29)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_29_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_12,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_29,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(29)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_28_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(27),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(28),
      O => bloqueTempoMarcianos_mult0001(28)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_28_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(27),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_11,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(28),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(28)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_28_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_11,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_28,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(28)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_27_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(26),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(27),
      O => bloqueTempoMarcianos_mult0001(27)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_27_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(26),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_10,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(27),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(27)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_27_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_10,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_27,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(27)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_26_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(25),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(26),
      O => bloqueTempoMarcianos_mult0001(26)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_26_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(25),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_9,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(26),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(26)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_26_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_9,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_26,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(26)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_25_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(24),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(25),
      O => bloqueTempoMarcianos_mult0001(25)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_25_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(24),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_8,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(25),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(25)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_25_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_8,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_25,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(25)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_24_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(23),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(24),
      O => bloqueTempoMarcianos_mult0001(24)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_24_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(23),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_7,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(24),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(24)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_24_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_7,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_24,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(24)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_23_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(22),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(23),
      O => bloqueTempoMarcianos_mult0001(23)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_23_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(22),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_6,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(23),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(23)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_23_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_6,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_23,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(23)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_22_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(21),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(22),
      O => bloqueTempoMarcianos_mult0001(22)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_22_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(21),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_5,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(22),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(22)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_22_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_5,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_22,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(22)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_21_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(20),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(21),
      O => bloqueTempoMarcianos_mult0001(21)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_21_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(20),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_4,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(21),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(21)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_21_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_4,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_21,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(21)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_20_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(19),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(20),
      O => bloqueTempoMarcianos_mult0001(20)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_20_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(19),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_3,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(20),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(20)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_20_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_3,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_20,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(20)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_19_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(18),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(19),
      O => bloqueTempoMarcianos_mult0001(19)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_19_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(18),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_2,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(19),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(19)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_19_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_2,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_19,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(19)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_18_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(17),
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(18),
      O => bloqueTempoMarcianos_mult0001(18)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_18_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(17),
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_1,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(18),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(18)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_18_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_1,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_18,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(18)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_xor_17_Q : XORCY
    port map (
      CI => N0,
      LI => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(17),
      O => bloqueTempoMarcianos_mult0001(17)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_cy_17_Q : MUXCY
    port map (
      CI => N0,
      DI => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_0,
      S => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(17),
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_cy(17)
    );
  bloqueTempoMarcianos_Mmult_mult00010_Madd_lut_17_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_0,
      I1 => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_17,
      O => bloqueTempoMarcianos_Mmult_mult00010_Madd_lut(17)
    );
  bloqueTempoMarcianos_a_31 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a31,
      Q => bloqueTempoMarcianos_a(31)
    );
  bloqueTempoMarcianos_a_30 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a30,
      Q => bloqueTempoMarcianos_a(30)
    );
  bloqueTempoMarcianos_a_29 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a29,
      Q => bloqueTempoMarcianos_a(29)
    );
  bloqueTempoMarcianos_a_28 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a28,
      Q => bloqueTempoMarcianos_a(28)
    );
  bloqueTempoMarcianos_a_27 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a27,
      Q => bloqueTempoMarcianos_a(27)
    );
  bloqueTempoMarcianos_a_26 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a26,
      Q => bloqueTempoMarcianos_a(26)
    );
  bloqueTempoMarcianos_a_25 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a25,
      Q => bloqueTempoMarcianos_a(25)
    );
  bloqueTempoMarcianos_a_24 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a24,
      Q => bloqueTempoMarcianos_a(24)
    );
  bloqueTempoMarcianos_a_23 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a23,
      Q => bloqueTempoMarcianos_a(23)
    );
  bloqueTempoMarcianos_a_22 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a22,
      Q => bloqueTempoMarcianos_a(22)
    );
  bloqueTempoMarcianos_a_21 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a21,
      Q => bloqueTempoMarcianos_a(21)
    );
  bloqueTempoMarcianos_a_20 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a20,
      Q => bloqueTempoMarcianos_a(20)
    );
  bloqueTempoMarcianos_a_19 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a19,
      Q => bloqueTempoMarcianos_a(19)
    );
  bloqueTempoMarcianos_a_18 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a18,
      Q => bloqueTempoMarcianos_a(18)
    );
  bloqueTempoMarcianos_a_17 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a17,
      Q => bloqueTempoMarcianos_a(17)
    );
  bloqueTempoMarcianos_a_16 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a16,
      Q => bloqueTempoMarcianos_a(16)
    );
  bloqueTempoMarcianos_a_15 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a15,
      Q => bloqueTempoMarcianos_a(15)
    );
  bloqueTempoMarcianos_a_14 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a14,
      Q => bloqueTempoMarcianos_a(14)
    );
  bloqueTempoMarcianos_a_13 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a13,
      Q => bloqueTempoMarcianos_a(13)
    );
  bloqueTempoMarcianos_a_12 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a12,
      Q => bloqueTempoMarcianos_a(12)
    );
  bloqueTempoMarcianos_a_11 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a11,
      Q => bloqueTempoMarcianos_a(11)
    );
  bloqueTempoMarcianos_a_10 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a10,
      Q => bloqueTempoMarcianos_a(10)
    );
  bloqueTempoMarcianos_a_9 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a9,
      Q => bloqueTempoMarcianos_a(9)
    );
  bloqueTempoMarcianos_a_8 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a8,
      Q => bloqueTempoMarcianos_a(8)
    );
  bloqueTempoMarcianos_a_7 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a7,
      Q => bloqueTempoMarcianos_a(7)
    );
  bloqueTempoMarcianos_a_6 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a6,
      Q => bloqueTempoMarcianos_a(6)
    );
  bloqueTempoMarcianos_a_5 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a5,
      Q => bloqueTempoMarcianos_a(5)
    );
  bloqueTempoMarcianos_a_4 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a4,
      Q => bloqueTempoMarcianos_a(4)
    );
  bloqueTempoMarcianos_a_3 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a3,
      Q => bloqueTempoMarcianos_a(3)
    );
  bloqueTempoMarcianos_a_2 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a2,
      Q => bloqueTempoMarcianos_a(2)
    );
  bloqueTempoMarcianos_a_1 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a1,
      Q => bloqueTempoMarcianos_a(1)
    );
  bloqueTempoMarcianos_a_0 : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoMarcianos_Mcount_a,
      Q => bloqueTempoMarcianos_a(0)
    );
  bloqueTempoMarcianos_Mcount_a_xor_31_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(30),
      LI => bloqueTempoMarcianos_Mcount_a_lut(31),
      O => bloqueTempoMarcianos_Mcount_a31
    );
  bloqueTempoMarcianos_Mcount_a_lut_31_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(31),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(31)
    );
  bloqueTempoMarcianos_Mcount_a_xor_30_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(29),
      LI => bloqueTempoMarcianos_Mcount_a_lut(30),
      O => bloqueTempoMarcianos_Mcount_a30
    );
  bloqueTempoMarcianos_Mcount_a_cy_30_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(29),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(30),
      O => bloqueTempoMarcianos_Mcount_a_cy(30)
    );
  bloqueTempoMarcianos_Mcount_a_lut_30_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(30),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(30)
    );
  bloqueTempoMarcianos_Mcount_a_xor_29_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(28),
      LI => bloqueTempoMarcianos_Mcount_a_lut(29),
      O => bloqueTempoMarcianos_Mcount_a29
    );
  bloqueTempoMarcianos_Mcount_a_cy_29_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(28),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(29),
      O => bloqueTempoMarcianos_Mcount_a_cy(29)
    );
  bloqueTempoMarcianos_Mcount_a_lut_29_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(29),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(29)
    );
  bloqueTempoMarcianos_Mcount_a_xor_28_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(27),
      LI => bloqueTempoMarcianos_Mcount_a_lut(28),
      O => bloqueTempoMarcianos_Mcount_a28
    );
  bloqueTempoMarcianos_Mcount_a_cy_28_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(27),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(28),
      O => bloqueTempoMarcianos_Mcount_a_cy(28)
    );
  bloqueTempoMarcianos_Mcount_a_lut_28_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(28),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(28)
    );
  bloqueTempoMarcianos_Mcount_a_xor_27_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(26),
      LI => bloqueTempoMarcianos_Mcount_a_lut(27),
      O => bloqueTempoMarcianos_Mcount_a27
    );
  bloqueTempoMarcianos_Mcount_a_cy_27_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(26),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(27),
      O => bloqueTempoMarcianos_Mcount_a_cy(27)
    );
  bloqueTempoMarcianos_Mcount_a_lut_27_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(27),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(27)
    );
  bloqueTempoMarcianos_Mcount_a_xor_26_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(25),
      LI => bloqueTempoMarcianos_Mcount_a_lut(26),
      O => bloqueTempoMarcianos_Mcount_a26
    );
  bloqueTempoMarcianos_Mcount_a_cy_26_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(25),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(26),
      O => bloqueTempoMarcianos_Mcount_a_cy(26)
    );
  bloqueTempoMarcianos_Mcount_a_lut_26_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(26),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(26)
    );
  bloqueTempoMarcianos_Mcount_a_xor_25_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(24),
      LI => bloqueTempoMarcianos_Mcount_a_lut(25),
      O => bloqueTempoMarcianos_Mcount_a25
    );
  bloqueTempoMarcianos_Mcount_a_cy_25_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(24),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(25),
      O => bloqueTempoMarcianos_Mcount_a_cy(25)
    );
  bloqueTempoMarcianos_Mcount_a_lut_25_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(25),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(25)
    );
  bloqueTempoMarcianos_Mcount_a_xor_24_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(23),
      LI => bloqueTempoMarcianos_Mcount_a_lut(24),
      O => bloqueTempoMarcianos_Mcount_a24
    );
  bloqueTempoMarcianos_Mcount_a_cy_24_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(23),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(24),
      O => bloqueTempoMarcianos_Mcount_a_cy(24)
    );
  bloqueTempoMarcianos_Mcount_a_lut_24_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(24),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(24)
    );
  bloqueTempoMarcianos_Mcount_a_xor_23_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(22),
      LI => bloqueTempoMarcianos_Mcount_a_lut(23),
      O => bloqueTempoMarcianos_Mcount_a23
    );
  bloqueTempoMarcianos_Mcount_a_cy_23_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(22),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(23),
      O => bloqueTempoMarcianos_Mcount_a_cy(23)
    );
  bloqueTempoMarcianos_Mcount_a_lut_23_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(23),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(23)
    );
  bloqueTempoMarcianos_Mcount_a_xor_22_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(21),
      LI => bloqueTempoMarcianos_Mcount_a_lut(22),
      O => bloqueTempoMarcianos_Mcount_a22
    );
  bloqueTempoMarcianos_Mcount_a_cy_22_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(21),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(22),
      O => bloqueTempoMarcianos_Mcount_a_cy(22)
    );
  bloqueTempoMarcianos_Mcount_a_lut_22_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(22),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(22)
    );
  bloqueTempoMarcianos_Mcount_a_xor_21_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(20),
      LI => bloqueTempoMarcianos_Mcount_a_lut(21),
      O => bloqueTempoMarcianos_Mcount_a21
    );
  bloqueTempoMarcianos_Mcount_a_cy_21_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(20),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(21),
      O => bloqueTempoMarcianos_Mcount_a_cy(21)
    );
  bloqueTempoMarcianos_Mcount_a_lut_21_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(21),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(21)
    );
  bloqueTempoMarcianos_Mcount_a_xor_20_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(19),
      LI => bloqueTempoMarcianos_Mcount_a_lut(20),
      O => bloqueTempoMarcianos_Mcount_a20
    );
  bloqueTempoMarcianos_Mcount_a_cy_20_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(19),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(20),
      O => bloqueTempoMarcianos_Mcount_a_cy(20)
    );
  bloqueTempoMarcianos_Mcount_a_lut_20_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(20),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(20)
    );
  bloqueTempoMarcianos_Mcount_a_xor_19_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(18),
      LI => bloqueTempoMarcianos_Mcount_a_lut(19),
      O => bloqueTempoMarcianos_Mcount_a19
    );
  bloqueTempoMarcianos_Mcount_a_cy_19_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(18),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(19),
      O => bloqueTempoMarcianos_Mcount_a_cy(19)
    );
  bloqueTempoMarcianos_Mcount_a_lut_19_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(19),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(19)
    );
  bloqueTempoMarcianos_Mcount_a_xor_18_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(17),
      LI => bloqueTempoMarcianos_Mcount_a_lut(18),
      O => bloqueTempoMarcianos_Mcount_a18
    );
  bloqueTempoMarcianos_Mcount_a_cy_18_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(17),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(18),
      O => bloqueTempoMarcianos_Mcount_a_cy(18)
    );
  bloqueTempoMarcianos_Mcount_a_lut_18_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(18),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(18)
    );
  bloqueTempoMarcianos_Mcount_a_xor_17_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(16),
      LI => bloqueTempoMarcianos_Mcount_a_lut(17),
      O => bloqueTempoMarcianos_Mcount_a17
    );
  bloqueTempoMarcianos_Mcount_a_cy_17_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(16),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(17),
      O => bloqueTempoMarcianos_Mcount_a_cy(17)
    );
  bloqueTempoMarcianos_Mcount_a_lut_17_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(17),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(17)
    );
  bloqueTempoMarcianos_Mcount_a_xor_16_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(15),
      LI => bloqueTempoMarcianos_Mcount_a_lut(16),
      O => bloqueTempoMarcianos_Mcount_a16
    );
  bloqueTempoMarcianos_Mcount_a_cy_16_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(15),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(16),
      O => bloqueTempoMarcianos_Mcount_a_cy(16)
    );
  bloqueTempoMarcianos_Mcount_a_lut_16_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(16),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(16)
    );
  bloqueTempoMarcianos_Mcount_a_xor_15_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(14),
      LI => bloqueTempoMarcianos_Mcount_a_lut(15),
      O => bloqueTempoMarcianos_Mcount_a15
    );
  bloqueTempoMarcianos_Mcount_a_cy_15_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(14),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(15),
      O => bloqueTempoMarcianos_Mcount_a_cy(15)
    );
  bloqueTempoMarcianos_Mcount_a_lut_15_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(15),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(15)
    );
  bloqueTempoMarcianos_Mcount_a_xor_14_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(13),
      LI => bloqueTempoMarcianos_Mcount_a_lut(14),
      O => bloqueTempoMarcianos_Mcount_a14
    );
  bloqueTempoMarcianos_Mcount_a_cy_14_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(13),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(14),
      O => bloqueTempoMarcianos_Mcount_a_cy(14)
    );
  bloqueTempoMarcianos_Mcount_a_lut_14_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(14),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(14)
    );
  bloqueTempoMarcianos_Mcount_a_xor_13_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(12),
      LI => bloqueTempoMarcianos_Mcount_a_lut(13),
      O => bloqueTempoMarcianos_Mcount_a13
    );
  bloqueTempoMarcianos_Mcount_a_cy_13_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(12),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(13),
      O => bloqueTempoMarcianos_Mcount_a_cy(13)
    );
  bloqueTempoMarcianos_Mcount_a_lut_13_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(13),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(13)
    );
  bloqueTempoMarcianos_Mcount_a_xor_12_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(11),
      LI => bloqueTempoMarcianos_Mcount_a_lut(12),
      O => bloqueTempoMarcianos_Mcount_a12
    );
  bloqueTempoMarcianos_Mcount_a_cy_12_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(11),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(12),
      O => bloqueTempoMarcianos_Mcount_a_cy(12)
    );
  bloqueTempoMarcianos_Mcount_a_lut_12_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(12),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(12)
    );
  bloqueTempoMarcianos_Mcount_a_xor_11_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(10),
      LI => bloqueTempoMarcianos_Mcount_a_lut(11),
      O => bloqueTempoMarcianos_Mcount_a11
    );
  bloqueTempoMarcianos_Mcount_a_cy_11_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(10),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(11),
      O => bloqueTempoMarcianos_Mcount_a_cy(11)
    );
  bloqueTempoMarcianos_Mcount_a_lut_11_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(11),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(11)
    );
  bloqueTempoMarcianos_Mcount_a_xor_10_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(9),
      LI => bloqueTempoMarcianos_Mcount_a_lut(10),
      O => bloqueTempoMarcianos_Mcount_a10
    );
  bloqueTempoMarcianos_Mcount_a_cy_10_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(9),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(10),
      O => bloqueTempoMarcianos_Mcount_a_cy(10)
    );
  bloqueTempoMarcianos_Mcount_a_lut_10_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(10),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(10)
    );
  bloqueTempoMarcianos_Mcount_a_xor_9_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(8),
      LI => bloqueTempoMarcianos_Mcount_a_lut(9),
      O => bloqueTempoMarcianos_Mcount_a9
    );
  bloqueTempoMarcianos_Mcount_a_cy_9_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(8),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(9),
      O => bloqueTempoMarcianos_Mcount_a_cy(9)
    );
  bloqueTempoMarcianos_Mcount_a_lut_9_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(9),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(9)
    );
  bloqueTempoMarcianos_Mcount_a_xor_8_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(7),
      LI => bloqueTempoMarcianos_Mcount_a_lut(8),
      O => bloqueTempoMarcianos_Mcount_a8
    );
  bloqueTempoMarcianos_Mcount_a_cy_8_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(7),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(8),
      O => bloqueTempoMarcianos_Mcount_a_cy(8)
    );
  bloqueTempoMarcianos_Mcount_a_lut_8_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(8),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(8)
    );
  bloqueTempoMarcianos_Mcount_a_xor_7_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(6),
      LI => bloqueTempoMarcianos_Mcount_a_lut(7),
      O => bloqueTempoMarcianos_Mcount_a7
    );
  bloqueTempoMarcianos_Mcount_a_cy_7_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(6),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(7),
      O => bloqueTempoMarcianos_Mcount_a_cy(7)
    );
  bloqueTempoMarcianos_Mcount_a_lut_7_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(7),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(7)
    );
  bloqueTempoMarcianos_Mcount_a_xor_6_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(5),
      LI => bloqueTempoMarcianos_Mcount_a_lut(6),
      O => bloqueTempoMarcianos_Mcount_a6
    );
  bloqueTempoMarcianos_Mcount_a_cy_6_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(5),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(6),
      O => bloqueTempoMarcianos_Mcount_a_cy(6)
    );
  bloqueTempoMarcianos_Mcount_a_lut_6_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(6),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(6)
    );
  bloqueTempoMarcianos_Mcount_a_xor_5_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(4),
      LI => bloqueTempoMarcianos_Mcount_a_lut(5),
      O => bloqueTempoMarcianos_Mcount_a5
    );
  bloqueTempoMarcianos_Mcount_a_cy_5_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(4),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(5),
      O => bloqueTempoMarcianos_Mcount_a_cy(5)
    );
  bloqueTempoMarcianos_Mcount_a_lut_5_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(5),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(5)
    );
  bloqueTempoMarcianos_Mcount_a_xor_4_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(3),
      LI => bloqueTempoMarcianos_Mcount_a_lut(4),
      O => bloqueTempoMarcianos_Mcount_a4
    );
  bloqueTempoMarcianos_Mcount_a_cy_4_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(3),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(4),
      O => bloqueTempoMarcianos_Mcount_a_cy(4)
    );
  bloqueTempoMarcianos_Mcount_a_lut_4_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(4),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(4)
    );
  bloqueTempoMarcianos_Mcount_a_xor_3_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(2),
      LI => bloqueTempoMarcianos_Mcount_a_lut(3),
      O => bloqueTempoMarcianos_Mcount_a3
    );
  bloqueTempoMarcianos_Mcount_a_cy_3_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(2),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(3),
      O => bloqueTempoMarcianos_Mcount_a_cy(3)
    );
  bloqueTempoMarcianos_Mcount_a_lut_3_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(3),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(3)
    );
  bloqueTempoMarcianos_Mcount_a_xor_2_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(1),
      LI => bloqueTempoMarcianos_Mcount_a_lut(2),
      O => bloqueTempoMarcianos_Mcount_a2
    );
  bloqueTempoMarcianos_Mcount_a_cy_2_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(1),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(2),
      O => bloqueTempoMarcianos_Mcount_a_cy(2)
    );
  bloqueTempoMarcianos_Mcount_a_lut_2_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(2),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(2)
    );
  bloqueTempoMarcianos_Mcount_a_xor_1_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(0),
      LI => bloqueTempoMarcianos_Mcount_a_lut(1),
      O => bloqueTempoMarcianos_Mcount_a1
    );
  bloqueTempoMarcianos_Mcount_a_cy_1_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_Mcount_a_cy(0),
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(1),
      O => bloqueTempoMarcianos_Mcount_a_cy(1)
    );
  bloqueTempoMarcianos_Mcount_a_lut_1_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(1),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(1)
    );
  bloqueTempoMarcianos_Mcount_a_xor_0_Q : XORCY
    port map (
      CI => bloqueTempoMarcianos_a_cmp_eq0000_inv,
      LI => bloqueTempoMarcianos_Mcount_a_lut(0),
      O => bloqueTempoMarcianos_Mcount_a
    );
  bloqueTempoMarcianos_Mcount_a_cy_0_Q : MUXCY
    port map (
      CI => bloqueTempoMarcianos_a_cmp_eq0000_inv,
      DI => N0,
      S => bloqueTempoMarcianos_Mcount_a_lut(0),
      O => bloqueTempoMarcianos_Mcount_a_cy(0)
    );
  bloqueTempoMarcianos_Mcount_a_lut_0_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N0,
      I1 => bloqueTempoMarcianos_a(0),
      I2 => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_Mcount_a_lut(0)
    );
  bloqueTempoMarcianos_Mmult_mult00011 : MULT18X18SIO
    generic map(
      B_INPUT => "CASCADE",
      BREG => 0,
      AREG => 0,
      PREG => 0
    )
    port map (
      CEA => N0,
      CEB => N0,
      CEP => N0,
      CLK => N0,
      RSTA => N0,
      RSTB => N0,
      RSTP => N0,
      A(17) => N0,
      A(16) => N0,
      A(15) => N0,
      A(14) => N0,
      A(13) => N0,
      A(12) => N0,
      A(11) => N0,
      A(10) => N0,
      A(9) => N0,
      A(8) => N0,
      A(7) => N0,
      A(6) => N0,
      A(5) => N0,
      A(4) => N0,
      A(3) => N0,
      A(2) => N0,
      A(1) => N0,
      A(0) => N0,
      B(17) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_17_UNCONNECTED,
      B(16) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_16_UNCONNECTED,
      B(15) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_15_UNCONNECTED,
      B(14) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_14_UNCONNECTED,
      B(13) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_13_UNCONNECTED,
      B(12) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_12_UNCONNECTED,
      B(11) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_11_UNCONNECTED,
      B(10) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_10_UNCONNECTED,
      B(9) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_9_UNCONNECTED,
      B(8) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_8_UNCONNECTED,
      B(7) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_7_UNCONNECTED,
      B(6) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_6_UNCONNECTED,
      B(5) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_5_UNCONNECTED,
      B(4) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_4_UNCONNECTED,
      B(3) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_3_UNCONNECTED,
      B(2) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_2_UNCONNECTED,
      B(1) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_1_UNCONNECTED,
      B(0) => NLW_bloqueTempoMarcianos_Mmult_mult00011_B_0_UNCONNECTED,
      BCIN(17) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_17,
      BCIN(16) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_16,
      BCIN(15) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_15,
      BCIN(14) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_14,
      BCIN(13) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_13,
      BCIN(12) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_12,
      BCIN(11) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_11,
      BCIN(10) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_10,
      BCIN(9) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_9,
      BCIN(8) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_8,
      BCIN(7) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_7,
      BCIN(6) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_6,
      BCIN(5) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_5,
      BCIN(4) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_4,
      BCIN(3) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_3,
      BCIN(2) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_2,
      BCIN(1) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_1,
      BCIN(0) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_0,
      P(35) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_35_UNCONNECTED,
      P(34) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_34_UNCONNECTED,
      P(33) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_33_UNCONNECTED,
      P(32) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_32_UNCONNECTED,
      P(31) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_31_UNCONNECTED,
      P(30) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_30_UNCONNECTED,
      P(29) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_29_UNCONNECTED,
      P(28) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_28_UNCONNECTED,
      P(27) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_27_UNCONNECTED,
      P(26) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_26_UNCONNECTED,
      P(25) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_25_UNCONNECTED,
      P(24) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_24_UNCONNECTED,
      P(23) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_23_UNCONNECTED,
      P(22) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_22_UNCONNECTED,
      P(21) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_21_UNCONNECTED,
      P(20) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_20_UNCONNECTED,
      P(19) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_19_UNCONNECTED,
      P(18) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_18_UNCONNECTED,
      P(17) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_17_UNCONNECTED,
      P(16) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_16_UNCONNECTED,
      P(15) => NLW_bloqueTempoMarcianos_Mmult_mult00011_P_15_UNCONNECTED,
      P(14) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_14,
      P(13) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_13,
      P(12) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_12,
      P(11) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_11,
      P(10) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_10,
      P(9) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_9,
      P(8) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_8,
      P(7) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_7,
      P(6) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_6,
      P(5) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_5,
      P(4) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_4,
      P(3) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_3,
      P(2) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_2,
      P(1) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_1,
      P(0) => bloqueTempoMarcianos_Mmult_mult00011_P_to_Adder_B_0,
      BCOUT(17) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_bloqueTempoMarcianos_Mmult_mult00011_BCOUT_0_UNCONNECTED
    );
  bloqueTempoMarcianos_Mmult_mult0001 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => N0,
      CEB => N0,
      CEP => N0,
      CLK => N0,
      RSTA => N0,
      RSTB => N0,
      RSTP => N0,
      A(17) => N0,
      A(16) => N0,
      A(15) => N0,
      A(14) => N0,
      A(13) => N0,
      A(12) => N0,
      A(11) => N0,
      A(10) => N0,
      A(9) => N0,
      A(8) => N0,
      A(7) => bloqueTempoMarcianos_Madd_sub0000_cy(6),
      A(6) => bloqueTempoMarcianos_sub0000(6),
      A(5) => bloqueTempoMarcianos_sub0000(5),
      A(4) => bloqueTempoMarcianos_sub0000(4),
      A(3) => bloqueTempoMarcianos_sub0000(3),
      A(2) => bloqueTempoMarcianos_sub0000(2),
      A(1) => bloqueMaquinaEstado_partidosGanados(0),
      A(0) => N0,
      B(17) => N0,
      B(16) => N0,
      B(15) => N1,
      B(14) => N1,
      B(13) => N0,
      B(12) => N0,
      B(11) => N0,
      B(10) => N0,
      B(9) => N1,
      B(8) => N1,
      B(7) => N0,
      B(6) => N1,
      B(5) => N0,
      B(4) => N1,
      B(3) => N0,
      B(2) => N0,
      B(1) => N0,
      B(0) => N0,
      BCIN(17) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_bloqueTempoMarcianos_Mmult_mult0001_BCIN_0_UNCONNECTED,
      P(35) => NLW_bloqueTempoMarcianos_Mmult_mult0001_P_35_UNCONNECTED,
      P(34) => NLW_bloqueTempoMarcianos_Mmult_mult0001_P_34_UNCONNECTED,
      P(33) => NLW_bloqueTempoMarcianos_Mmult_mult0001_P_33_UNCONNECTED,
      P(32) => NLW_bloqueTempoMarcianos_Mmult_mult0001_P_32_UNCONNECTED,
      P(31) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_31,
      P(30) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_30,
      P(29) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_29,
      P(28) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_28,
      P(27) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_27,
      P(26) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_26,
      P(25) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_25,
      P(24) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_24,
      P(23) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_23,
      P(22) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_22,
      P(21) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_21,
      P(20) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_20,
      P(19) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_19,
      P(18) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_18,
      P(17) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_17,
      P(16) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_16,
      P(15) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_15,
      P(14) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_14,
      P(13) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_13,
      P(12) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_12,
      P(11) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_11,
      P(10) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_10,
      P(9) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_9,
      P(8) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_8,
      P(7) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_7,
      P(6) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_6,
      P(5) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_5,
      P(4) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_4,
      P(3) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_3,
      P(2) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_2,
      P(1) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_1,
      P(0) => bloqueTempoMarcianos_Mmult_mult0001_P_to_Adder_A_0,
      BCOUT(17) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_17,
      BCOUT(16) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_16,
      BCOUT(15) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_15,
      BCOUT(14) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_14,
      BCOUT(13) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_13,
      BCOUT(12) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_12,
      BCOUT(11) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_11,
      BCOUT(10) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_10,
      BCOUT(9) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_9,
      BCOUT(8) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_8,
      BCOUT(7) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_7,
      BCOUT(6) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_6,
      BCOUT(5) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_5,
      BCOUT(4) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_4,
      BCOUT(3) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_3,
      BCOUT(2) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_2,
      BCOUT(1) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_1,
      BCOUT(0) => bloqueTempoMarcianos_Mmult_mult0001_BCOUT_to_Mmult_mult00011_BCIN_0
    );
  bloqueTempoMarcianos_EnableMarcianos : FDE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueTempoBala_Reset_inv,
      D => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      Q => bloqueTempoMarcianos_EnableMarcianos_804
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueMaquinaEstado_estadoActual_FSM_FFd2_In_243,
      Q => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueMaquinaEstado_estadoActual_FSM_FFd1_In,
      Q => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd3 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      D => bloqueMaquinaEstado_estadoActual_FSM_FFd3_In,
      PRE => Reset_IBUF_90,
      Q => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244
    );
  bloqueMaquinaEstado_partidosGanados_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMaquinaEstado_partidosGanados_not0001,
      CLR => Reset_IBUF_90,
      D => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_2,
      Q => bloqueMaquinaEstado_partidosGanados(2)
    );
  bloqueMaquinaEstado_partidosGanados_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMaquinaEstado_partidosGanados_not0001,
      CLR => Reset_IBUF_90,
      D => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_1,
      Q => bloqueMaquinaEstado_partidosGanados(1)
    );
  bloqueMaquinaEstado_partidosGanados_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMaquinaEstado_partidosGanados_not0001,
      CLR => Reset_IBUF_90,
      D => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_3_236,
      Q => bloqueMaquinaEstado_partidosGanados(3)
    );
  bloqueMaquinaEstado_partidosGanados_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueMaquinaEstado_partidosGanados_not0001,
      D => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_0,
      PRE => Reset_IBUF_90,
      Q => bloqueMaquinaEstado_partidosGanados(0)
    );
  bloqueMaquinaEstado_InicioAnt : FDC
    port map (
      C => Clk_BUFGP_3,
      CLR => Reset_IBUF_90,
      D => bloqueTempoInicio_Inicio_659,
      Q => bloqueMaquinaEstado_InicioAnt_230
    );
  bloqueVga_bloqueSyncH_p_9 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_bloqueDivisorF_a_1227,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncH_Mcount_p9,
      Q => bloqueVga_bloqueSyncH_p(9)
    );
  bloqueVga_bloqueSyncH_p_8 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_bloqueDivisorF_a_1227,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncH_Mcount_p8,
      Q => bloqueVga_bloqueSyncH_p(8)
    );
  bloqueVga_bloqueSyncH_p_7 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_bloqueDivisorF_a_1227,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncH_Mcount_p7,
      Q => bloqueVga_bloqueSyncH_p(7)
    );
  bloqueVga_bloqueSyncH_p_6 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_bloqueDivisorF_a_1227,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncH_Mcount_p6,
      Q => bloqueVga_bloqueSyncH_p(6)
    );
  bloqueVga_bloqueSyncH_p_5 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_bloqueDivisorF_a_1227,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncH_Mcount_p5,
      Q => bloqueVga_bloqueSyncH_p(5)
    );
  bloqueVga_bloqueSyncH_p_4 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_bloqueDivisorF_a_1227,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncH_Mcount_p4,
      Q => bloqueVga_bloqueSyncH_p(4)
    );
  bloqueVga_bloqueSyncH_p_3 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_bloqueDivisorF_a_1227,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncH_Mcount_p3,
      Q => bloqueVga_bloqueSyncH_p(3)
    );
  bloqueVga_bloqueSyncH_p_2 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_bloqueDivisorF_a_1227,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncH_Mcount_p2,
      Q => bloqueVga_bloqueSyncH_p(2)
    );
  bloqueVga_bloqueSyncH_p_1 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_bloqueDivisorF_a_1227,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncH_Mcount_p1,
      Q => bloqueVga_bloqueSyncH_p(1)
    );
  bloqueVga_bloqueSyncH_p_0 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_bloqueDivisorF_a_1227,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncH_Mcount_p,
      Q => bloqueVga_bloqueSyncH_p(0)
    );
  bloqueVga_bloqueSyncH_Mcount_p_xor_9_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(8),
      LI => bloqueVga_bloqueSyncH_Mcount_p_lut(9),
      O => bloqueVga_bloqueSyncH_Mcount_p9
    );
  bloqueVga_bloqueSyncH_Mcount_p_xor_8_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(7),
      LI => bloqueVga_bloqueSyncH_Mcount_p_lut(8),
      O => bloqueVga_bloqueSyncH_Mcount_p8
    );
  bloqueVga_bloqueSyncH_Mcount_p_cy_8_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(7),
      DI => N0,
      S => bloqueVga_bloqueSyncH_Mcount_p_lut(8),
      O => bloqueVga_bloqueSyncH_Mcount_p_cy(8)
    );
  bloqueVga_bloqueSyncH_Mcount_p_xor_7_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(6),
      LI => bloqueVga_bloqueSyncH_Mcount_p_lut(7),
      O => bloqueVga_bloqueSyncH_Mcount_p7
    );
  bloqueVga_bloqueSyncH_Mcount_p_cy_7_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(6),
      DI => N0,
      S => bloqueVga_bloqueSyncH_Mcount_p_lut(7),
      O => bloqueVga_bloqueSyncH_Mcount_p_cy(7)
    );
  bloqueVga_bloqueSyncH_Mcount_p_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncH_p(7),
      I2 => N0,
      O => bloqueVga_bloqueSyncH_Mcount_p_lut(7)
    );
  bloqueVga_bloqueSyncH_Mcount_p_xor_6_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(5),
      LI => bloqueVga_bloqueSyncH_Mcount_p_lut(6),
      O => bloqueVga_bloqueSyncH_Mcount_p6
    );
  bloqueVga_bloqueSyncH_Mcount_p_cy_6_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(5),
      DI => N0,
      S => bloqueVga_bloqueSyncH_Mcount_p_lut(6),
      O => bloqueVga_bloqueSyncH_Mcount_p_cy(6)
    );
  bloqueVga_bloqueSyncH_Mcount_p_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncH_p(6),
      I2 => N0,
      O => bloqueVga_bloqueSyncH_Mcount_p_lut(6)
    );
  bloqueVga_bloqueSyncH_Mcount_p_xor_5_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(4),
      LI => bloqueVga_bloqueSyncH_Mcount_p_lut(5),
      O => bloqueVga_bloqueSyncH_Mcount_p5
    );
  bloqueVga_bloqueSyncH_Mcount_p_cy_5_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(4),
      DI => N0,
      S => bloqueVga_bloqueSyncH_Mcount_p_lut(5),
      O => bloqueVga_bloqueSyncH_Mcount_p_cy(5)
    );
  bloqueVga_bloqueSyncH_Mcount_p_xor_4_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(3),
      LI => bloqueVga_bloqueSyncH_Mcount_p_lut(4),
      O => bloqueVga_bloqueSyncH_Mcount_p4
    );
  bloqueVga_bloqueSyncH_Mcount_p_cy_4_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(3),
      DI => N0,
      S => bloqueVga_bloqueSyncH_Mcount_p_lut(4),
      O => bloqueVga_bloqueSyncH_Mcount_p_cy(4)
    );
  bloqueVga_bloqueSyncH_Mcount_p_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncH_p(4),
      I2 => N0,
      O => bloqueVga_bloqueSyncH_Mcount_p_lut(4)
    );
  bloqueVga_bloqueSyncH_Mcount_p_xor_3_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(2),
      LI => bloqueVga_bloqueSyncH_Mcount_p_lut(3),
      O => bloqueVga_bloqueSyncH_Mcount_p3
    );
  bloqueVga_bloqueSyncH_Mcount_p_cy_3_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(2),
      DI => N0,
      S => bloqueVga_bloqueSyncH_Mcount_p_lut(3),
      O => bloqueVga_bloqueSyncH_Mcount_p_cy(3)
    );
  bloqueVga_bloqueSyncH_Mcount_p_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncH_p(3),
      I2 => N0,
      O => bloqueVga_bloqueSyncH_Mcount_p_lut(3)
    );
  bloqueVga_bloqueSyncH_Mcount_p_xor_2_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(1),
      LI => bloqueVga_bloqueSyncH_Mcount_p_lut(2),
      O => bloqueVga_bloqueSyncH_Mcount_p2
    );
  bloqueVga_bloqueSyncH_Mcount_p_cy_2_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(1),
      DI => N0,
      S => bloqueVga_bloqueSyncH_Mcount_p_lut(2),
      O => bloqueVga_bloqueSyncH_Mcount_p_cy(2)
    );
  bloqueVga_bloqueSyncH_Mcount_p_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncH_p(2),
      I2 => N0,
      O => bloqueVga_bloqueSyncH_Mcount_p_lut(2)
    );
  bloqueVga_bloqueSyncH_Mcount_p_xor_1_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(0),
      LI => bloqueVga_bloqueSyncH_Mcount_p_lut(1),
      O => bloqueVga_bloqueSyncH_Mcount_p1
    );
  bloqueVga_bloqueSyncH_Mcount_p_cy_1_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncH_Mcount_p_cy(0),
      DI => N0,
      S => bloqueVga_bloqueSyncH_Mcount_p_lut(1),
      O => bloqueVga_bloqueSyncH_Mcount_p_cy(1)
    );
  bloqueVga_bloqueSyncH_Mcount_p_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncH_p(1),
      I2 => N0,
      O => bloqueVga_bloqueSyncH_Mcount_p_lut(1)
    );
  bloqueVga_bloqueSyncH_Mcount_p_xor_0_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncH_p_cmp_ge0000_inv,
      LI => bloqueVga_bloqueSyncH_Mcount_p_lut(0),
      O => bloqueVga_bloqueSyncH_Mcount_p
    );
  bloqueVga_bloqueSyncH_Mcount_p_cy_0_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncH_p_cmp_ge0000_inv,
      DI => N0,
      S => bloqueVga_bloqueSyncH_Mcount_p_lut(0),
      O => bloqueVga_bloqueSyncH_Mcount_p_cy(0)
    );
  bloqueVga_bloqueSyncH_Mcount_p_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncH_p(0),
      I2 => N0,
      O => bloqueVga_bloqueSyncH_Mcount_p_lut(0)
    );
  bloqueVga_bloqueSyncV_p_9 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_EnableV_Int,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncV_Mcount_p9,
      Q => bloqueVga_bloqueSyncV_p(9)
    );
  bloqueVga_bloqueSyncV_p_8 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_EnableV_Int,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncV_Mcount_p8,
      Q => bloqueVga_bloqueSyncV_p(8)
    );
  bloqueVga_bloqueSyncV_p_7 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_EnableV_Int,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncV_Mcount_p7,
      Q => bloqueVga_bloqueSyncV_p(7)
    );
  bloqueVga_bloqueSyncV_p_6 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_EnableV_Int,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncV_Mcount_p6,
      Q => bloqueVga_bloqueSyncV_p(6)
    );
  bloqueVga_bloqueSyncV_p_5 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_EnableV_Int,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncV_Mcount_p5,
      Q => bloqueVga_bloqueSyncV_p(5)
    );
  bloqueVga_bloqueSyncV_p_4 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_EnableV_Int,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncV_Mcount_p4,
      Q => bloqueVga_bloqueSyncV_p(4)
    );
  bloqueVga_bloqueSyncV_p_3 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_EnableV_Int,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncV_Mcount_p3,
      Q => bloqueVga_bloqueSyncV_p(3)
    );
  bloqueVga_bloqueSyncV_p_2 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_EnableV_Int,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncV_Mcount_p2,
      Q => bloqueVga_bloqueSyncV_p(2)
    );
  bloqueVga_bloqueSyncV_p_1 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_EnableV_Int,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncV_Mcount_p1,
      Q => bloqueVga_bloqueSyncV_p(1)
    );
  bloqueVga_bloqueSyncV_p_0 : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueVga_EnableV_Int,
      CLR => Reset_IBUF_90,
      D => bloqueVga_bloqueSyncV_Mcount_p,
      Q => bloqueVga_bloqueSyncV_p(0)
    );
  bloqueVga_bloqueSyncV_Mcount_p_xor_9_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(8),
      LI => bloqueVga_bloqueSyncV_Mcount_p_lut(9),
      O => bloqueVga_bloqueSyncV_Mcount_p9
    );
  bloqueVga_bloqueSyncV_Mcount_p_xor_8_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(7),
      LI => bloqueVga_bloqueSyncV_Mcount_p_lut(8),
      O => bloqueVga_bloqueSyncV_Mcount_p8
    );
  bloqueVga_bloqueSyncV_Mcount_p_cy_8_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(7),
      DI => N0,
      S => bloqueVga_bloqueSyncV_Mcount_p_lut(8),
      O => bloqueVga_bloqueSyncV_Mcount_p_cy(8)
    );
  bloqueVga_bloqueSyncV_Mcount_p_lut_8_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncV_p(8),
      I2 => N0,
      O => bloqueVga_bloqueSyncV_Mcount_p_lut(8)
    );
  bloqueVga_bloqueSyncV_Mcount_p_xor_7_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(6),
      LI => bloqueVga_bloqueSyncV_Mcount_p_lut(7),
      O => bloqueVga_bloqueSyncV_Mcount_p7
    );
  bloqueVga_bloqueSyncV_Mcount_p_cy_7_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(6),
      DI => N0,
      S => bloqueVga_bloqueSyncV_Mcount_p_lut(7),
      O => bloqueVga_bloqueSyncV_Mcount_p_cy(7)
    );
  bloqueVga_bloqueSyncV_Mcount_p_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncV_p(7),
      I2 => N0,
      O => bloqueVga_bloqueSyncV_Mcount_p_lut(7)
    );
  bloqueVga_bloqueSyncV_Mcount_p_xor_6_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(5),
      LI => bloqueVga_bloqueSyncV_Mcount_p_lut(6),
      O => bloqueVga_bloqueSyncV_Mcount_p6
    );
  bloqueVga_bloqueSyncV_Mcount_p_cy_6_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(5),
      DI => N0,
      S => bloqueVga_bloqueSyncV_Mcount_p_lut(6),
      O => bloqueVga_bloqueSyncV_Mcount_p_cy(6)
    );
  bloqueVga_bloqueSyncV_Mcount_p_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncV_p(6),
      I2 => N0,
      O => bloqueVga_bloqueSyncV_Mcount_p_lut(6)
    );
  bloqueVga_bloqueSyncV_Mcount_p_xor_5_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(4),
      LI => bloqueVga_bloqueSyncV_Mcount_p_lut(5),
      O => bloqueVga_bloqueSyncV_Mcount_p5
    );
  bloqueVga_bloqueSyncV_Mcount_p_cy_5_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(4),
      DI => N0,
      S => bloqueVga_bloqueSyncV_Mcount_p_lut(5),
      O => bloqueVga_bloqueSyncV_Mcount_p_cy(5)
    );
  bloqueVga_bloqueSyncV_Mcount_p_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncV_p(5),
      I2 => N0,
      O => bloqueVga_bloqueSyncV_Mcount_p_lut(5)
    );
  bloqueVga_bloqueSyncV_Mcount_p_xor_4_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(3),
      LI => bloqueVga_bloqueSyncV_Mcount_p_lut(4),
      O => bloqueVga_bloqueSyncV_Mcount_p4
    );
  bloqueVga_bloqueSyncV_Mcount_p_cy_4_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(3),
      DI => N0,
      S => bloqueVga_bloqueSyncV_Mcount_p_lut(4),
      O => bloqueVga_bloqueSyncV_Mcount_p_cy(4)
    );
  bloqueVga_bloqueSyncV_Mcount_p_xor_3_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(2),
      LI => bloqueVga_bloqueSyncV_Mcount_p_lut(3),
      O => bloqueVga_bloqueSyncV_Mcount_p3
    );
  bloqueVga_bloqueSyncV_Mcount_p_cy_3_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(2),
      DI => N0,
      S => bloqueVga_bloqueSyncV_Mcount_p_lut(3),
      O => bloqueVga_bloqueSyncV_Mcount_p_cy(3)
    );
  bloqueVga_bloqueSyncV_Mcount_p_xor_2_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(1),
      LI => bloqueVga_bloqueSyncV_Mcount_p_lut(2),
      O => bloqueVga_bloqueSyncV_Mcount_p2
    );
  bloqueVga_bloqueSyncV_Mcount_p_cy_2_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(1),
      DI => N0,
      S => bloqueVga_bloqueSyncV_Mcount_p_lut(2),
      O => bloqueVga_bloqueSyncV_Mcount_p_cy(2)
    );
  bloqueVga_bloqueSyncV_Mcount_p_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => N0,
      O => bloqueVga_bloqueSyncV_Mcount_p_lut(2)
    );
  bloqueVga_bloqueSyncV_Mcount_p_xor_1_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(0),
      LI => bloqueVga_bloqueSyncV_Mcount_p_lut(1),
      O => bloqueVga_bloqueSyncV_Mcount_p1
    );
  bloqueVga_bloqueSyncV_Mcount_p_cy_1_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncV_Mcount_p_cy(0),
      DI => N0,
      S => bloqueVga_bloqueSyncV_Mcount_p_lut(1),
      O => bloqueVga_bloqueSyncV_Mcount_p_cy(1)
    );
  bloqueVga_bloqueSyncV_Mcount_p_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncV_p(1),
      I2 => N0,
      O => bloqueVga_bloqueSyncV_Mcount_p_lut(1)
    );
  bloqueVga_bloqueSyncV_Mcount_p_xor_0_Q : XORCY
    port map (
      CI => bloqueVga_bloqueSyncV_p_cmp_ge0000_inv_1331,
      LI => bloqueVga_bloqueSyncV_Mcount_p_lut(0),
      O => bloqueVga_bloqueSyncV_Mcount_p
    );
  bloqueVga_bloqueSyncV_Mcount_p_cy_0_Q : MUXCY
    port map (
      CI => bloqueVga_bloqueSyncV_p_cmp_ge0000_inv_1331,
      DI => N0,
      S => bloqueVga_bloqueSyncV_Mcount_p_lut(0),
      O => bloqueVga_bloqueSyncV_Mcount_p_cy(0)
    );
  bloqueVga_bloqueSyncV_Mcount_p_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p_cmp_ge0000,
      I1 => bloqueVga_bloqueSyncV_p(0),
      I2 => N0,
      O => bloqueVga_bloqueSyncV_Mcount_p_lut(0)
    );
  bloqueNave_Mmux_varindex0000_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000027,
      I2 => bloqueNave_Mmux_varindex0000_10,
      O => bloqueNave_Mmux_varindex0000_7_462
    );
  bloqueNave_Mmux_varindex0000_5_f5 : MUXF5
    port map (
      I0 => bloqueNave_Mmux_varindex0000_7_462,
      I1 => bloqueNave_Mmux_varindex0000_5_f51_455,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueNave_Mmux_varindex0000_5_f5_454
    );
  bloqueNave_Mmux_varindex0000_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000025,
      I2 => bloqueNave_Mrom_Color_rom000027,
      O => bloqueNave_Mmux_varindex0000_71_463
    );
  bloqueNave_Mmux_varindex0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000024,
      I2 => bloqueNave_Mrom_Color_rom000025,
      O => bloqueNave_Mmux_varindex0000_8_469
    );
  bloqueNave_Mmux_varindex0000_6_f5 : MUXF5
    port map (
      I0 => bloqueNave_Mmux_varindex0000_8_469,
      I1 => bloqueNave_Mmux_varindex0000_71_463,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueNave_Mmux_varindex0000_6_f5_458
    );
  bloqueNave_Mmux_varindex0000_4_f6 : MUXF6
    port map (
      I0 => bloqueNave_Mmux_varindex0000_6_f5_458,
      I1 => bloqueNave_Mmux_varindex0000_5_f5_454,
      S => bloqueVga_bloqueSyncH_p(2),
      O => bloqueNave_Mmux_varindex0000_4_f6_452
    );
  bloqueNave_Mmux_varindex0000_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000011_481,
      I2 => bloqueNave_Mrom_Color_rom000010,
      O => bloqueNave_Mmux_varindex0000_81_470
    );
  bloqueNave_Mmux_varindex0000_6_f5_0 : MUXF5
    port map (
      I0 => bloqueNave_Mmux_varindex0000_81_470,
      I1 => bloqueNave_Mmux_varindex0000_72_464,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueNave_Mmux_varindex0000_6_f51
    );
  bloqueNave_Mmux_varindex0000_82 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000013,
      I2 => bloqueNave_Mrom_Color_rom000012,
      O => bloqueNave_Mmux_varindex0000_82_471
    );
  bloqueNave_Mmux_varindex0000_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000015,
      I2 => bloqueNave_Mrom_Color_rom000014_484,
      O => bloqueNave_Mmux_varindex0000_9_476
    );
  bloqueNave_Mmux_varindex0000_7_f5 : MUXF5
    port map (
      I0 => bloqueNave_Mmux_varindex0000_9_476,
      I1 => bloqueNave_Mmux_varindex0000_82_471,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueNave_Mmux_varindex0000_7_f5_466
    );
  bloqueNave_Mmux_varindex0000_5_f6 : MUXF6
    port map (
      I0 => bloqueNave_Mmux_varindex0000_7_f5_466,
      I1 => bloqueNave_Mmux_varindex0000_6_f51,
      S => bloqueVga_bloqueSyncH_p(2),
      O => bloqueNave_Mmux_varindex0000_5_f6_456
    );
  bloqueNave_Mmux_varindex0000_3_f7 : MUXF7
    port map (
      I0 => bloqueNave_Mmux_varindex0000_5_f6_456,
      I1 => bloqueNave_Mmux_varindex0000_4_f6_452,
      S => bloqueVga_bloqueSyncH_p(3),
      O => bloqueNave_Mmux_varindex0000_3_f7_451
    );
  bloqueNave_Mmux_varindex0000_73 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000014_484,
      I2 => bloqueNave_Mrom_Color_rom000015,
      O => bloqueNave_Mmux_varindex0000_73_465
    );
  bloqueNave_Mmux_varindex0000_83 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000012,
      I2 => bloqueNave_Mrom_Color_rom000013,
      O => bloqueNave_Mmux_varindex0000_83_472
    );
  bloqueNave_Mmux_varindex0000_6_f5_1 : MUXF5
    port map (
      I0 => bloqueNave_Mmux_varindex0000_83_472,
      I1 => bloqueNave_Mmux_varindex0000_73_465,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueNave_Mmux_varindex0000_6_f52
    );
  bloqueNave_Mmux_varindex0000_84 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000010,
      I2 => bloqueNave_Mrom_Color_rom000011_481,
      O => bloqueNave_Mmux_varindex0000_84_473
    );
  bloqueNave_Mmux_varindex0000_7_f5_0 : MUXF5
    port map (
      I0 => bloqueNave_Mmux_varindex0000_91_477,
      I1 => bloqueNave_Mmux_varindex0000_84_473,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueNave_Mmux_varindex0000_7_f51
    );
  bloqueNave_Mmux_varindex0000_5_f6_0 : MUXF6
    port map (
      I0 => bloqueNave_Mmux_varindex0000_7_f51,
      I1 => bloqueNave_Mmux_varindex0000_6_f52,
      S => bloqueVga_bloqueSyncH_p(2),
      O => bloqueNave_Mmux_varindex0000_5_f61
    );
  bloqueNave_Mmux_varindex0000_85 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000025,
      I2 => bloqueNave_Mrom_Color_rom000024,
      O => bloqueNave_Mmux_varindex0000_85_474
    );
  bloqueNave_Mmux_varindex0000_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mrom_Color_rom000027,
      I2 => bloqueNave_Mrom_Color_rom000025,
      O => bloqueNave_Mmux_varindex0000_92_478
    );
  bloqueNave_Mmux_varindex0000_7_f5_1 : MUXF5
    port map (
      I0 => bloqueNave_Mmux_varindex0000_92_478,
      I1 => bloqueNave_Mmux_varindex0000_85_474,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueNave_Mmux_varindex0000_7_f52
    );
  bloqueNave_Mmux_varindex0000_93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_Mmux_varindex0000_10,
      I2 => bloqueNave_Mrom_Color_rom000027,
      O => bloqueNave_Mmux_varindex0000_93_479
    );
  bloqueNave_Mmux_varindex0000_8_f5 : MUXF5
    port map (
      I0 => bloqueNave_Mmux_varindex0000_10,
      I1 => bloqueNave_Mmux_varindex0000_93_479,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueNave_Mmux_varindex0000_8_f5_475
    );
  bloqueNave_Mmux_varindex0000_6_f6 : MUXF6
    port map (
      I0 => bloqueNave_Mmux_varindex0000_8_f5_475,
      I1 => bloqueNave_Mmux_varindex0000_7_f52,
      S => bloqueVga_bloqueSyncH_p(2),
      O => bloqueNave_Mmux_varindex0000_6_f6_461
    );
  bloqueNave_Mmux_varindex0000_4_f7 : MUXF7
    port map (
      I0 => bloqueNave_Mmux_varindex0000_6_f6_461,
      I1 => bloqueNave_Mmux_varindex0000_5_f61,
      S => bloqueVga_bloqueSyncH_p(3),
      O => bloqueNave_Mmux_varindex0000_4_f7_453
    );
  bloqueNave_Mmux_varindex0000_2_f8 : MUXF8
    port map (
      I0 => bloqueNave_Mmux_varindex0000_4_f7_453,
      I1 => bloqueNave_Mmux_varindex0000_3_f7_451,
      S => bloqueVga_bloqueSyncH_p(4),
      O => bloqueNave_varindex0000
    );
  bloqueNave_xNave_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueNave_xNave_not0001,
      CLR => Reset_IBUF_90,
      D => bloqueNave_xNave_mux0000(2),
      Q => bloqueNave_xNave(2)
    );
  bloqueNave_xNave_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueNave_xNave_not0001,
      CLR => Reset_IBUF_90,
      D => bloqueNave_xNave_mux0000(0),
      Q => bloqueNave_xNave(0)
    );
  bloqueNave_xNave_1 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueNave_xNave_not0001,
      D => bloqueNave_xNave_mux0000(1),
      PRE => Reset_IBUF_90,
      Q => bloqueNave_xNave(1)
    );
  bloqueNave_xNave_3 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueNave_xNave_not0001,
      D => bloqueNave_xNave_mux0000(3),
      PRE => Reset_IBUF_90,
      Q => bloqueNave_xNave(3)
    );
  bloqueNave_xNave_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueNave_xNave_not0001,
      CLR => Reset_IBUF_90,
      D => bloqueNave_xNave_mux0000(4),
      Q => bloqueNave_xNave(4)
    );
  bloqueNave_DerechaAnt : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueTempoNave_EnableNave_1080,
      CLR => Reset_IBUF_90,
      D => Derecha_IBUF_5,
      Q => bloqueNave_DerechaAnt_444
    );
  bloqueNave_IzquierdaAnt : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueTempoNave_EnableNave_1080,
      CLR => Reset_IBUF_90,
      D => Izquierda_IBUF_15,
      Q => bloqueNave_IzquierdaAnt_446
    );
  bloqueBala_Mmux_varindex0000_8 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueBala_Mrom_Color_rom000013,
      I2 => bloqueBala_Mrom_Color_rom000012,
      O => bloqueBala_Mmux_varindex0000_8_203
    );
  bloqueBala_Mmux_varindex0000_9 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueBala_Mrom_Color_rom000015,
      I2 => bloqueBala_Mrom_Color_rom000013,
      O => bloqueBala_Mmux_varindex0000_9_204
    );
  bloqueBala_Mmux_varindex0000_7_f5 : MUXF5
    port map (
      I0 => bloqueBala_Mmux_varindex0000_9_204,
      I1 => bloqueBala_Mmux_varindex0000_8_203,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueBala_Mmux_varindex0000_7_f5_202
    );
  bloqueBala_Mmux_varindex0000_3 : LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      I0 => bloqueBala_X_1_1_212,
      I1 => bloqueVga_bloqueSyncH_p(2),
      I2 => bloqueBala_Mmux_varindex0000_7_f5_202,
      I3 => bloqueVga_bloqueSyncH_p(3),
      O => bloqueBala_Mmux_varindex0000_3_200
    );
  bloqueBala_Mmux_varindex0000_11 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueBala_Mrom_Color_rom000013,
      I2 => bloqueBala_Mrom_Color_rom000015,
      O => bloqueBala_Mmux_varindex0000_11_198
    );
  bloqueBala_Mmux_varindex0000_12 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueBala_Mrom_Color_rom000012,
      I2 => bloqueBala_Mrom_Color_rom000013,
      O => bloqueBala_Mmux_varindex0000_12_199
    );
  bloqueBala_Mmux_varindex0000_10_f5 : MUXF5
    port map (
      I0 => bloqueBala_Mmux_varindex0000_12_199,
      I1 => bloqueBala_Mmux_varindex0000_11_198,
      S => bloqueVga_bloqueSyncH_p(1),
      O => bloqueBala_Mmux_varindex0000_10_f5_197
    );
  bloqueBala_Mmux_varindex0000_4 : LUT4
    generic map(
      INIT => X"EF4F"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(2),
      I1 => bloqueBala_X_1_2,
      I2 => bloqueVga_bloqueSyncH_p(3),
      I3 => bloqueBala_Mmux_varindex0000_10_f5_197,
      O => bloqueBala_Mmux_varindex0000_4_201
    );
  bloqueBala_Mmux_varindex0000_2_f5 : MUXF5
    port map (
      I0 => bloqueBala_Mmux_varindex0000_4_201,
      I1 => bloqueBala_Mmux_varindex0000_3_200,
      S => bloqueVga_bloqueSyncH_p(4),
      O => bloqueBala_varindex00001
    );
  bloqueBala_yBalaInt_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueBala_yBalaInt_not0001_229,
      CLR => Reset_IBUF_90,
      D => bloqueBala_yBalaInt_mux0000(0),
      Q => bloqueBala_yBalaInt(0)
    );
  bloqueBala_yBalaInt_1 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueBala_yBalaInt_not0001_229,
      D => bloqueBala_yBalaInt_mux0000(1),
      PRE => Reset_IBUF_90,
      Q => bloqueBala_yBalaInt(1)
    );
  bloqueBala_yBalaInt_2 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueBala_yBalaInt_not0001_229,
      D => bloqueBala_yBalaInt_mux0000(2),
      PRE => Reset_IBUF_90,
      Q => bloqueBala_yBalaInt(2)
    );
  bloqueBala_yBalaInt_3 : FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueBala_yBalaInt_not0001_229,
      D => bloqueBala_yBalaInt_mux0000(3),
      PRE => Reset_IBUF_90,
      Q => bloqueBala_yBalaInt(3)
    );
  bloqueBala_DisparoAnt : FDCE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueTempoBala_EnableBala_514,
      CLR => Reset_IBUF_90,
      D => Disparo_IBUF_7,
      Q => bloqueBala_DisparoAnt_193
    );
  bloqueBala_Inicial : FDPE
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueBala_Inicial_not0001,
      D => bloqueBala_Inicial_mux0004_195,
      PRE => Reset_IBUF_90,
      Q => bloqueBala_Inicial_194
    );
  bloqueBala_xBalaInt_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueBala_xBalaInt_and0000,
      D => bloqueNave_xNave(4),
      Q => bloqueBala_xBalaInt(4)
    );
  bloqueBala_xBalaInt_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueBala_xBalaInt_and0000,
      D => bloqueNave_xNave(3),
      Q => bloqueBala_xBalaInt(3)
    );
  bloqueBala_xBalaInt_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueBala_xBalaInt_and0000,
      D => bloqueNave_xNave(2),
      Q => bloqueBala_xBalaInt(2)
    );
  bloqueBala_xBalaInt_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueBala_xBalaInt_and0000,
      D => bloqueNave_xNave(1),
      Q => bloqueBala_xBalaInt(1)
    );
  bloqueBala_xBalaInt_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_3,
      CE => bloqueBala_xBalaInt_and0000,
      D => bloqueNave_xNave(0),
      Q => bloqueBala_xBalaInt(0)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueTempoNave_a(8),
      I1 => bloqueTempoNave_a(9),
      I2 => bloqueTempoNave_a(7),
      I3 => bloqueTempoNave_a(10),
      O => bloqueTempoNave_a_cmp_eq0000_wg_lut(0)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => bloqueTempoNave_a_cmp_eq0000_wg_lut(0),
      O => bloqueTempoNave_a_cmp_eq0000_wg_cy(0)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueTempoNave_a(11),
      I1 => bloqueTempoNave_a(6),
      I2 => bloqueTempoNave_a(12),
      I3 => bloqueTempoNave_a(13),
      O => bloqueTempoNave_a_cmp_eq0000_wg_lut(1)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => bloqueTempoNave_a_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => bloqueTempoNave_a_cmp_eq0000_wg_lut(1),
      O => bloqueTempoNave_a_cmp_eq0000_wg_cy(1)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueTempoNave_a(14),
      I1 => bloqueTempoNave_a(15),
      I2 => bloqueTempoNave_a(5),
      I3 => bloqueTempoNave_a(16),
      O => bloqueTempoNave_a_cmp_eq0000_wg_lut(2)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => bloqueTempoNave_a_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => bloqueTempoNave_a_cmp_eq0000_wg_lut(2),
      O => bloqueTempoNave_a_cmp_eq0000_wg_cy(2)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => bloqueTempoNave_a(17),
      I1 => bloqueTempoNave_a(18),
      I2 => bloqueTempoNave_a(4),
      I3 => bloqueTempoNave_a(19),
      O => bloqueTempoNave_a_cmp_eq0000_wg_lut(3)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => bloqueTempoNave_a_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => bloqueTempoNave_a_cmp_eq0000_wg_lut(3),
      O => bloqueTempoNave_a_cmp_eq0000_wg_cy(3)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueTempoNave_a(20),
      I1 => bloqueTempoNave_a(21),
      I2 => bloqueTempoNave_a(3),
      I3 => bloqueTempoNave_a(22),
      O => bloqueTempoNave_a_cmp_eq0000_wg_lut(4)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => bloqueTempoNave_a_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => bloqueTempoNave_a_cmp_eq0000_wg_lut(4),
      O => bloqueTempoNave_a_cmp_eq0000_wg_cy(4)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueTempoNave_a(23),
      I1 => bloqueTempoNave_a(24),
      I2 => bloqueTempoNave_a(2),
      I3 => bloqueTempoNave_a(25),
      O => bloqueTempoNave_a_cmp_eq0000_wg_lut(5)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => bloqueTempoNave_a_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => bloqueTempoNave_a_cmp_eq0000_wg_lut(5),
      O => bloqueTempoNave_a_cmp_eq0000_wg_cy(5)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueTempoNave_a(26),
      I1 => bloqueTempoNave_a(27),
      I2 => bloqueTempoNave_a(1),
      I3 => bloqueTempoNave_a(28),
      O => bloqueTempoNave_a_cmp_eq0000_wg_lut(6)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => bloqueTempoNave_a_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => bloqueTempoNave_a_cmp_eq0000_wg_lut(6),
      O => bloqueTempoNave_a_cmp_eq0000_wg_cy(6)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueTempoNave_a(29),
      I1 => bloqueTempoNave_a(30),
      I2 => bloqueTempoNave_a(0),
      I3 => bloqueTempoNave_a(31),
      O => bloqueTempoNave_a_cmp_eq0000_wg_lut(7)
    );
  bloqueTempoNave_a_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => bloqueTempoNave_a_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => bloqueTempoNave_a_cmp_eq0000_wg_lut(7),
      O => bloqueTempoNave_a_cmp_eq0000
    );
  bloqueTempoBala_a_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => bloqueTempoBala_a(7),
      I1 => bloqueTempoBala_a(8),
      I2 => bloqueTempoBala_a(9),
      I3 => bloqueTempoBala_a(10),
      O => bloqueTempoBala_a_cmp_eq0000_wg_lut(0)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => bloqueTempoBala_a_cmp_eq0000_wg_lut(0),
      O => bloqueTempoBala_a_cmp_eq0000_wg_cy(0)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueTempoBala_a(11),
      I1 => bloqueTempoBala_a(13),
      I2 => bloqueTempoBala_a(12),
      I3 => bloqueTempoBala_a(6),
      O => bloqueTempoBala_a_cmp_eq0000_wg_lut(1)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => bloqueTempoBala_a_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => bloqueTempoBala_a_cmp_eq0000_wg_lut(1),
      O => bloqueTempoBala_a_cmp_eq0000_wg_cy(1)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueTempoBala_a(14),
      I1 => bloqueTempoBala_a(5),
      I2 => bloqueTempoBala_a(15),
      I3 => bloqueTempoBala_a(16),
      O => bloqueTempoBala_a_cmp_eq0000_wg_lut(2)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => bloqueTempoBala_a_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => bloqueTempoBala_a_cmp_eq0000_wg_lut(2),
      O => bloqueTempoBala_a_cmp_eq0000_wg_cy(2)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueTempoBala_a(17),
      I1 => bloqueTempoBala_a(4),
      I2 => bloqueTempoBala_a(19),
      I3 => bloqueTempoBala_a(18),
      O => bloqueTempoBala_a_cmp_eq0000_wg_lut(3)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => bloqueTempoBala_a_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => bloqueTempoBala_a_cmp_eq0000_wg_lut(3),
      O => bloqueTempoBala_a_cmp_eq0000_wg_cy(3)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueTempoBala_a(20),
      I1 => bloqueTempoBala_a(21),
      I2 => bloqueTempoBala_a(3),
      I3 => bloqueTempoBala_a(22),
      O => bloqueTempoBala_a_cmp_eq0000_wg_lut(4)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => bloqueTempoBala_a_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => bloqueTempoBala_a_cmp_eq0000_wg_lut(4),
      O => bloqueTempoBala_a_cmp_eq0000_wg_cy(4)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueTempoBala_a(23),
      I1 => bloqueTempoBala_a(24),
      I2 => bloqueTempoBala_a(2),
      I3 => bloqueTempoBala_a(25),
      O => bloqueTempoBala_a_cmp_eq0000_wg_lut(5)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => bloqueTempoBala_a_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => bloqueTempoBala_a_cmp_eq0000_wg_lut(5),
      O => bloqueTempoBala_a_cmp_eq0000_wg_cy(5)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueTempoBala_a(26),
      I1 => bloqueTempoBala_a(27),
      I2 => bloqueTempoBala_a(1),
      I3 => bloqueTempoBala_a(28),
      O => bloqueTempoBala_a_cmp_eq0000_wg_lut(6)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => bloqueTempoBala_a_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => bloqueTempoBala_a_cmp_eq0000_wg_lut(6),
      O => bloqueTempoBala_a_cmp_eq0000_wg_cy(6)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueTempoBala_a(29),
      I1 => bloqueTempoBala_a(30),
      I2 => bloqueTempoBala_a(0),
      I3 => bloqueTempoBala_a(31),
      O => bloqueTempoBala_a_cmp_eq0000_wg_lut(7)
    );
  bloqueTempoBala_a_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => bloqueTempoBala_a_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => bloqueTempoBala_a_cmp_eq0000_wg_lut(7),
      O => bloqueTempoBala_a_cmp_eq0000
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueTempoInicio_a(8),
      I1 => bloqueTempoInicio_a(7),
      I2 => bloqueTempoInicio_a(10),
      I3 => bloqueTempoInicio_a(9),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_lut(0)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => bloqueTempoInicio_a_cmp_eq0000_wg_lut(0),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_cy(0)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueTempoInicio_a(6),
      I1 => bloqueTempoInicio_a(12),
      I2 => bloqueTempoInicio_a(13),
      I3 => bloqueTempoInicio_a(11),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_lut(1)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_a_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => bloqueTempoInicio_a_cmp_eq0000_wg_lut(1),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_cy(1)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueTempoInicio_a(15),
      I1 => bloqueTempoInicio_a(14),
      I2 => bloqueTempoInicio_a(5),
      I3 => bloqueTempoInicio_a(16),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_lut(2)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_a_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => bloqueTempoInicio_a_cmp_eq0000_wg_lut(2),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_cy(2)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueTempoInicio_a(18),
      I1 => bloqueTempoInicio_a(17),
      I2 => bloqueTempoInicio_a(4),
      I3 => bloqueTempoInicio_a(19),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_lut(3)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_a_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => bloqueTempoInicio_a_cmp_eq0000_wg_lut(3),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_cy(3)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueTempoInicio_a(20),
      I1 => bloqueTempoInicio_a(22),
      I2 => bloqueTempoInicio_a(21),
      I3 => bloqueTempoInicio_a(3),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_lut(4)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_a_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => bloqueTempoInicio_a_cmp_eq0000_wg_lut(4),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_cy(4)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueTempoInicio_a(23),
      I1 => bloqueTempoInicio_a(24),
      I2 => bloqueTempoInicio_a(2),
      I3 => bloqueTempoInicio_a(25),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_lut(5)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_a_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => bloqueTempoInicio_a_cmp_eq0000_wg_lut(5),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_cy(5)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueTempoInicio_a(26),
      I1 => bloqueTempoInicio_a(27),
      I2 => bloqueTempoInicio_a(1),
      I3 => bloqueTempoInicio_a(28),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_lut(6)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_a_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => bloqueTempoInicio_a_cmp_eq0000_wg_lut(6),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_cy(6)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueTempoInicio_a(29),
      I1 => bloqueTempoInicio_a(30),
      I2 => bloqueTempoInicio_a(0),
      I3 => bloqueTempoInicio_a(31),
      O => bloqueTempoInicio_a_cmp_eq0000_wg_lut(7)
    );
  bloqueTempoInicio_a_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => bloqueTempoInicio_a_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => bloqueTempoInicio_a_cmp_eq0000_wg_lut(7),
      O => bloqueTempoInicio_a_cmp_eq0000
    );
  bloqueMarcianos_Resultado_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueMarcianos_fila(12),
      I1 => bloqueMarcianos_fila(14),
      I2 => bloqueMarcianos_fila(15),
      I3 => bloqueMarcianos_fila(13),
      O => bloqueMarcianos_Resultado_cmp_eq0000_wg_lut(0)
    );
  bloqueMarcianos_Resultado_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => bloqueMarcianos_Resultado_cmp_eq0000_wg_lut(0),
      O => bloqueMarcianos_Resultado_cmp_eq0000_wg_cy(0)
    );
  bloqueMarcianos_Resultado_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueMarcianos_fila(11),
      I1 => bloqueMarcianos_fila(10),
      I2 => bloqueMarcianos_fila(16),
      I3 => bloqueMarcianos_fila(7),
      O => bloqueMarcianos_Resultado_cmp_eq0000_wg_lut(1)
    );
  bloqueMarcianos_Resultado_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => bloqueMarcianos_Resultado_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => bloqueMarcianos_Resultado_cmp_eq0000_wg_lut(1),
      O => bloqueMarcianos_Resultado_cmp_eq0000_wg_cy(1)
    );
  bloqueMarcianos_Resultado_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueMarcianos_fila(9),
      I1 => bloqueMarcianos_fila(8),
      I2 => bloqueMarcianos_fila(18),
      I3 => bloqueMarcianos_fila(6),
      O => bloqueMarcianos_Resultado_cmp_eq0000_wg_lut(2)
    );
  bloqueMarcianos_Resultado_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => bloqueMarcianos_Resultado_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => bloqueMarcianos_Resultado_cmp_eq0000_wg_lut(2),
      O => bloqueMarcianos_Resultado_cmp_eq0000_wg_cy(2)
    );
  bloqueMarcianos_Resultado_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueMarcianos_fila(5),
      I1 => bloqueMarcianos_fila(2),
      I2 => bloqueMarcianos_fila(19),
      I3 => bloqueMarcianos_fila(4),
      O => bloqueMarcianos_Resultado_cmp_eq0000_wg_lut(3)
    );
  bloqueMarcianos_Resultado_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => bloqueMarcianos_Resultado_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => bloqueMarcianos_Resultado_cmp_eq0000_wg_lut(3),
      O => bloqueMarcianos_Resultado_cmp_eq0000_wg_cy(3)
    );
  bloqueMarcianos_Resultado_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bloqueMarcianos_fila(3),
      I1 => bloqueMarcianos_fila(1),
      I2 => bloqueMarcianos_fila(17),
      I3 => bloqueMarcianos_fila(0),
      O => bloqueMarcianos_Resultado_cmp_eq0000_wg_lut(4)
    );
  bloqueMarcianos_Resultado_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => bloqueMarcianos_Resultado_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => bloqueMarcianos_Resultado_cmp_eq0000_wg_lut(4),
      O => bloqueMarcianos_Resultado_cmp_eq0000
    );
  bloqueMaquinaEstado_Mcount_partidosGanados_eqn_01 : LUT3
    generic map(
      INIT => X"75"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(0),
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      O => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_0
    );
  bloqueMaquinaEstado_Mcount_partidosGanados_eqn_11 : LUT4
    generic map(
      INIT => X"6606"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(0),
      I1 => bloqueMaquinaEstado_partidosGanados(1),
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      O => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_1
    );
  bloqueVga_bloqueSyncH_SyncH26 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(2),
      I1 => bloqueVga_bloqueSyncH_p(1),
      I2 => bloqueVga_bloqueSyncH_p(3),
      O => bloqueVga_bloqueSyncH_SyncH26_1273
    );
  bloqueMarcianos_fila_0_mux00001 : LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => bloqueMarcianos_N7,
      I1 => bloqueMarcianos_fila(1),
      I2 => JuegoInt,
      O => bloqueMarcianos_fila_0_mux0000
    );
  bloqueMarcianos_yComun_mux0000_1_1 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => JuegoInt,
      I1 => bloqueMarcianos_yComun(0),
      I2 => bloqueMarcianos_yComun(1),
      O => bloqueMarcianos_yComun_mux0000(1)
    );
  bloqueMarcianos_yComun_mux0000_3_1 : LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => JuegoInt,
      I1 => bloqueMarcianos_yComun(3),
      I2 => bloqueMarcianos_yComun(0),
      I3 => bloqueMarcianos_N48,
      O => bloqueMarcianos_yComun_mux0000(3)
    );
  bloqueMarcianos_yComun_mux0000_2_1 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => JuegoInt,
      I1 => bloqueMarcianos_yComun(2),
      I2 => bloqueMarcianos_yComun(0),
      I3 => bloqueMarcianos_yComun(1),
      O => bloqueMarcianos_yComun_mux0000(2)
    );
  bloqueVga_bloqueSyncH_ApagarH1 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueVga_bloqueSyncH_p(9),
      I2 => bloqueVga_bloqueSyncH_p(8),
      O => bloqueVga_ApagarH_Int
    );
  bloqueBala_Inicial_not00011 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => bloqueMarcianos_Tocado_355,
      I1 => bloqueBala_Inicial_194,
      I2 => bloqueBala_N2,
      I3 => JuegoInt,
      O => bloqueBala_Inicial_not0001
    );
  bloqueVga_bloqueSyncH_EnableV_SW0 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(8),
      I1 => bloqueVga_bloqueSyncH_p(5),
      I2 => bloqueVga_bloqueDivisorF_a_1227,
      I3 => bloqueVga_bloqueSyncH_p(7),
      O => N24
    );
  bloqueVga_bloqueSyncH_EnableV : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_EnableV_bdd2,
      I1 => bloqueVga_bloqueSyncH_p(6),
      I2 => N24,
      I3 => bloqueVga_bloqueSyncH_p(9),
      O => bloqueVga_EnableV_Int
    );
  bloqueMaquinaEstado_Mcount_partidosGanados_eqn_3_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(2),
      I1 => bloqueMaquinaEstado_partidosGanados(1),
      I2 => bloqueMaquinaEstado_partidosGanados(0),
      O => N42
    );
  bloqueMaquinaEstado_Mcount_partidosGanados_eqn_3 : LUT4
    generic map(
      INIT => X"82C3"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I1 => bloqueMaquinaEstado_partidosGanados(3),
      I2 => N42,
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      O => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_3_236
    );
  bloqueBala_Inicial_mux0004_SW0 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => bloqueBala_N2,
      I1 => bloqueBala_yBalaInt(3),
      I2 => bloqueBala_yBalaInt(2),
      I3 => bloqueBala_Inicial_194,
      O => N44
    );
  bloqueBala_Inicial_mux0004 : LUT4
    generic map(
      INIT => X"BAFF"
    )
    port map (
      I0 => bloqueMarcianos_Tocado_355,
      I1 => bloqueBala_N16,
      I2 => N44,
      I3 => JuegoInt,
      O => bloqueBala_Inicial_mux0004_195
    );
  bloqueBala_yBalaInt_mux0000_2_11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => bloqueBala_yBalaInt(0),
      I1 => bloqueBala_yBalaInt(1),
      O => bloqueBala_N16
    );
  bloqueMarcianos_fila_0_not000121 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => JuegoInt,
      I1 => bloqueMarcianos_N12,
      I2 => bloqueMarcianos_N7,
      O => bloqueMarcianos_N4
    );
  bloqueBala_yBalaInt_not0001 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => bloqueBala_yBalaInt(3),
      I1 => bloqueTempoBala_EnableBala_514,
      I2 => N46,
      I3 => bloqueBala_N5,
      O => bloqueBala_yBalaInt_not0001_229
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd2_In31 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => bloqueTempoInicio_Inicio_659,
      I1 => bloqueMaquinaEstado_InicioAnt_230,
      O => bloqueMaquinaEstado_N7
    );
  bloqueMarcianos_fila_10_mux000021 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => bloqueTempoMarcianos_EnableMarcianos_804,
      I1 => bloqueMarcianos_fila(19),
      I2 => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_N12
    );
  bloqueMarcianos_fila_10_mux000011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMarcianos_yComun(0),
      I1 => bloqueTempoMarcianos_EnableMarcianos_804,
      I2 => bloqueMarcianos_fila(0),
      O => bloqueMarcianos_N7
    );
  bloqueBala_yBalaInt_mux0000_1_1 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => bloqueBala_yBalaInt(0),
      I1 => bloqueBala_yBalaInt(1),
      I2 => bloqueBala_N5,
      O => bloqueBala_yBalaInt_mux0000(1)
    );
  bloqueMarcianos_fila_18_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => bloqueMarcianos_fila(17),
      I1 => bloqueMarcianos_N17,
      I2 => bloqueMarcianos_fila(19),
      I3 => bloqueMarcianos_N19,
      O => bloqueMarcianos_fila_18_mux0000
    );
  bloqueMarcianos_fila_17_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => bloqueMarcianos_fila(16),
      I1 => bloqueMarcianos_N17,
      I2 => bloqueMarcianos_fila(18),
      I3 => bloqueMarcianos_N19,
      O => bloqueMarcianos_fila_17_mux0000
    );
  bloqueMarcianos_fila_16_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => bloqueMarcianos_fila(15),
      I1 => bloqueMarcianos_N17,
      I2 => bloqueMarcianos_fila(17),
      I3 => bloqueMarcianos_N19,
      O => bloqueMarcianos_fila_16_mux0000
    );
  bloqueMarcianos_fila_15_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => bloqueMarcianos_fila(14),
      I1 => bloqueMarcianos_N17,
      I2 => bloqueMarcianos_fila(16),
      I3 => bloqueMarcianos_N19,
      O => bloqueMarcianos_fila_15_mux0000
    );
  bloqueMarcianos_fila_14_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => bloqueMarcianos_fila(13),
      I1 => bloqueMarcianos_N17,
      I2 => bloqueMarcianos_fila(15),
      I3 => bloqueMarcianos_N19,
      O => bloqueMarcianos_fila_14_mux0000
    );
  bloqueMarcianos_fila_13_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => bloqueMarcianos_fila(12),
      I1 => bloqueMarcianos_N17,
      I2 => bloqueMarcianos_fila(14),
      I3 => bloqueMarcianos_N19,
      O => bloqueMarcianos_fila_13_mux0000
    );
  bloqueMarcianos_fila_12_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => bloqueMarcianos_fila(11),
      I1 => bloqueMarcianos_N17,
      I2 => bloqueMarcianos_fila(13),
      I3 => bloqueMarcianos_N19,
      O => bloqueMarcianos_fila_12_mux0000
    );
  bloqueMarcianos_fila_11_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => bloqueMarcianos_fila(10),
      I1 => bloqueMarcianos_N17,
      I2 => bloqueMarcianos_fila(12),
      I3 => bloqueMarcianos_N19,
      O => bloqueMarcianos_fila_11_mux0000
    );
  bloqueMarcianos_fila_10_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => bloqueMarcianos_fila(9),
      I1 => bloqueMarcianos_N17,
      I2 => bloqueMarcianos_fila(11),
      I3 => bloqueMarcianos_N19,
      O => bloqueMarcianos_fila_10_mux0000
    );
  bloqueBala_yBalaInt_mux0000_3_3 : LUT4
    generic map(
      INIT => X"FFE1"
    )
    port map (
      I0 => bloqueBala_N16,
      I1 => bloqueBala_yBalaInt(2),
      I2 => bloqueBala_yBalaInt(3),
      I3 => bloqueBala_N5,
      O => bloqueBala_yBalaInt_mux0000(3)
    );
  bloqueMaquinaEstado_estadoActual_FSM_Out31 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      O => modoPantallaInt(2)
    );
  bloqueBala_yBalaInt_mux0000_3_11 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Disparo_IBUF_7,
      I1 => bloqueBala_DisparoAnt_193,
      O => bloqueBala_N2
    );
  bloqueBala_xBalaInt_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueBala_N5,
      I1 => Reset_IBUF_90,
      O => bloqueBala_xBalaInt_and0000
    );
  bloqueBala_yBalaInt_mux0000_3_21 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => JuegoInt,
      I1 => bloqueMarcianos_Tocado_355,
      I2 => bloqueBala_N2,
      I3 => bloqueBala_Inicial_194,
      O => bloqueBala_N5
    );
  bloqueVga_bloqueSyncV_p_cmp_ge0000_inv_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(8),
      I1 => bloqueVga_bloqueSyncV_p(7),
      I2 => bloqueVga_bloqueSyncV_p(6),
      I3 => bloqueVga_bloqueSyncV_p(5),
      O => N51
    );
  bloqueVga_bloqueSyncV_p_cmp_ge0000_inv : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => N51,
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncV_p(3),
      I3 => bloqueVga_bloqueSyncV_p(9),
      O => bloqueVga_bloqueSyncV_p_cmp_ge0000_inv_1331
    );
  bloqueMaquinaEstado_estadoActual_FSM_Out41 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      O => modoPantallaInt(1)
    );
  bloqueMaquinaEstado_estadoActual_FSM_Out51 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      O => modoPantallaInt(0)
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd2_In21 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      O => JuegoInt
    );
  bloqueNave_xNave_not000125 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => bloqueNave_xNave(1),
      I1 => bloqueNave_xNave(2),
      I2 => bloqueNave_xNave(3),
      I3 => bloqueNave_xNave(0),
      O => bloqueNave_xNave_not000125_508
    );
  bloqueNave_xNave_not000144 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => bloqueNave_xNave(4),
      I1 => bloqueNave_xNave_not000141_509,
      I2 => bloqueNave_xNave_not000125_508,
      O => bloqueNave_xNave_not000144_510
    );
  bloqueNave_xNave_not000170 : LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => bloqueNave_EnableIzquierda,
      I1 => bloqueNave_xNave_not00016,
      I2 => bloqueTempoNave_EnableNave_1080,
      I3 => bloqueNave_xNave_not000144_510,
      O => bloqueNave_xNave_not000170_513
    );
  bloqueTempoNave_Mcount_a_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_9_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_9
    );
  bloqueTempoNave_Mcount_a_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_8_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_8
    );
  bloqueTempoNave_Mcount_a_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_7_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_7
    );
  bloqueTempoNave_Mcount_a_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_6_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_6
    );
  bloqueTempoNave_Mcount_a_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_5_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_5
    );
  bloqueTempoNave_Mcount_a_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_4_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_4
    );
  bloqueTempoNave_Mcount_a_eqn_32 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_3_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_3
    );
  bloqueTempoNave_Mcount_a_eqn_210 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_2_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_2
    );
  bloqueTempoNave_Mcount_a_eqn_110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_1_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_1
    );
  bloqueTempoNave_Mcount_a_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_0_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_0
    );
  bloqueTempoInicio_Mcount_a_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(9),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_9
    );
  bloqueTempoInicio_Mcount_a_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(8),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_8
    );
  bloqueTempoInicio_Mcount_a_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_7
    );
  bloqueTempoInicio_Mcount_a_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_6
    );
  bloqueTempoInicio_Mcount_a_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_5
    );
  bloqueTempoInicio_Mcount_a_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_4
    );
  bloqueTempoInicio_Mcount_a_eqn_32 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_3
    );
  bloqueTempoInicio_Mcount_a_eqn_210 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_2
    );
  bloqueTempoInicio_Mcount_a_eqn_110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_1
    );
  bloqueTempoInicio_Mcount_a_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(0),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_0
    );
  bloqueTempoInicio_Inicio_mux00021 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => bloqueTempoInicio_a_cmp_eq0000,
      I1 => Inicio_IBUF_13,
      O => bloqueTempoInicio_Inicio_mux0002
    );
  bloqueTempoBala_Mcount_a_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_9_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_9
    );
  bloqueTempoBala_Mcount_a_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_8_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_8
    );
  bloqueTempoBala_Mcount_a_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_7_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_7
    );
  bloqueTempoBala_Mcount_a_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_6_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_6
    );
  bloqueTempoBala_Mcount_a_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_5_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_5
    );
  bloqueTempoBala_Mcount_a_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_4_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_4
    );
  bloqueTempoBala_Mcount_a_eqn_32 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_3_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_3
    );
  bloqueTempoBala_Mcount_a_eqn_210 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_2_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_2
    );
  bloqueTempoBala_Mcount_a_eqn_110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_1_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_1
    );
  bloqueTempoBala_Mcount_a_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_0_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_0
    );
  bloqueTempoNave_Mcount_a_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_10_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_10
    );
  bloqueTempoInicio_Mcount_a_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(10),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_10
    );
  bloqueTempoBala_Mcount_a_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_10_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_10
    );
  bloqueTempoNave_Mcount_a_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_11_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_11
    );
  bloqueTempoInicio_Mcount_a_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(11),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_11
    );
  bloqueTempoBala_Mcount_a_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_11_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_11
    );
  bloqueTempoNave_Mcount_a_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_12_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_12
    );
  bloqueTempoInicio_Mcount_a_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(12),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_12
    );
  bloqueTempoBala_Mcount_a_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_12_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_12
    );
  bloqueTempoNave_Mcount_a_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_13_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_13
    );
  bloqueTempoInicio_Mcount_a_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(13),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_13
    );
  bloqueTempoBala_Mcount_a_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_13_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_13
    );
  bloqueMarcianos_fila_12_not000111 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMarcianos_N0,
      I1 => bloqueMarcianos_fila_8_cmp_ne0000,
      I2 => bloqueBala_xBalaInt(4),
      I3 => bloqueBala_xBalaInt(2),
      O => bloqueMarcianos_N13
    );
  bloqueMarcianos_fila_0_not000141 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueMarcianos_fila_8_cmp_ne0000,
      I1 => bloqueMarcianos_N0,
      I2 => bloqueBala_xBalaInt(2),
      I3 => bloqueBala_xBalaInt(4),
      O => bloqueMarcianos_N14
    );
  bloqueMarcianos_fila_0_not000111 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => bloqueBala_yBalaInt(1),
      I1 => bloqueBala_yBalaInt(0),
      I2 => bloqueBala_yBalaInt(3),
      I3 => bloqueBala_yBalaInt(2),
      O => bloqueMarcianos_N0
    );
  bloqueMarcianos_fila_9_not0001_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(3),
      I1 => bloqueMarcianos_fila(9),
      I2 => bloqueMarcianos_N14,
      O => N55
    );
  bloqueMarcianos_fila_9_not0001 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N55,
      I1 => bloqueBala_xBalaInt(0),
      I2 => bloqueBala_xBalaInt(1),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_9_not0001_429
    );
  bloqueMarcianos_fila_8_not0001_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(3),
      I1 => bloqueMarcianos_fila(8),
      I2 => bloqueMarcianos_N14,
      O => N57
    );
  bloqueMarcianos_fila_8_not0001 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => N57,
      I1 => bloqueBala_xBalaInt(1),
      I2 => bloqueBala_xBalaInt(0),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_8_not0001_426
    );
  bloqueMarcianos_fila_7_not0001_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMarcianos_N13,
      I1 => bloqueMarcianos_fila(7),
      I2 => bloqueBala_xBalaInt(3),
      O => N59
    );
  bloqueMarcianos_fila_7_not0001 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(1),
      I1 => bloqueBala_xBalaInt(0),
      I2 => N59,
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_7_not0001_420
    );
  bloqueMarcianos_fila_6_not0001_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMarcianos_N13,
      I1 => bloqueMarcianos_fila(6),
      I2 => bloqueBala_xBalaInt(3),
      O => N61
    );
  bloqueMarcianos_fila_6_not0001 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N61,
      I1 => bloqueBala_xBalaInt(1),
      I2 => bloqueBala_xBalaInt(0),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_6_not0001_417
    );
  bloqueMarcianos_fila_5_not0001_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMarcianos_N13,
      I1 => bloqueMarcianos_fila(5),
      I2 => bloqueBala_xBalaInt(3),
      O => N63
    );
  bloqueMarcianos_fila_5_not0001 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N63,
      I1 => bloqueBala_xBalaInt(0),
      I2 => bloqueBala_xBalaInt(1),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_5_not0001_414
    );
  bloqueMarcianos_fila_4_not0001_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMarcianos_N13,
      I1 => bloqueMarcianos_fila(4),
      I2 => bloqueBala_xBalaInt(3),
      O => N65
    );
  bloqueMarcianos_fila_4_not0001 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => N65,
      I1 => bloqueBala_xBalaInt(1),
      I2 => bloqueBala_xBalaInt(0),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_4_not0001_411
    );
  bloqueMarcianos_fila_3_not0001_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMarcianos_N14,
      I1 => bloqueMarcianos_fila(3),
      I2 => bloqueBala_xBalaInt(3),
      O => N67
    );
  bloqueMarcianos_fila_3_not0001 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(1),
      I1 => bloqueBala_xBalaInt(0),
      I2 => N67,
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_3_not0001_408
    );
  bloqueMarcianos_fila_2_not0001_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMarcianos_N14,
      I1 => bloqueMarcianos_fila(2),
      I2 => bloqueBala_xBalaInt(3),
      O => N69
    );
  bloqueMarcianos_fila_2_not0001 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N69,
      I1 => bloqueBala_xBalaInt(1),
      I2 => bloqueBala_xBalaInt(0),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_2_not0001_405
    );
  bloqueMarcianos_fila_1_not0001_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMarcianos_N14,
      I1 => bloqueMarcianos_fila(1),
      I2 => bloqueBala_xBalaInt(3),
      O => N71
    );
  bloqueMarcianos_fila_1_not0001 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N71,
      I1 => bloqueBala_xBalaInt(0),
      I2 => bloqueBala_xBalaInt(1),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_1_not0001_402
    );
  bloqueMarcianos_fila_15_not0001_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(3),
      I1 => bloqueMarcianos_fila(15),
      I2 => bloqueMarcianos_N13,
      O => N73
    );
  bloqueMarcianos_fila_15_not0001 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(1),
      I1 => bloqueBala_xBalaInt(0),
      I2 => N73,
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_15_not0001_386
    );
  bloqueMarcianos_fila_14_not0001_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(3),
      I1 => bloqueMarcianos_fila(14),
      I2 => bloqueMarcianos_N13,
      O => N75
    );
  bloqueMarcianos_fila_14_not0001 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N75,
      I1 => bloqueBala_xBalaInt(1),
      I2 => bloqueBala_xBalaInt(0),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_14_not0001_383
    );
  bloqueMarcianos_fila_13_not0001_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(3),
      I1 => bloqueMarcianos_fila(13),
      I2 => bloqueMarcianos_N13,
      O => N77
    );
  bloqueMarcianos_fila_13_not0001 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N77,
      I1 => bloqueBala_xBalaInt(0),
      I2 => bloqueBala_xBalaInt(1),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_13_not0001_380
    );
  bloqueMarcianos_fila_12_not0001_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(3),
      I1 => bloqueMarcianos_fila(12),
      I2 => bloqueMarcianos_N13,
      O => N79
    );
  bloqueMarcianos_fila_12_not0001 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => N79,
      I1 => bloqueBala_xBalaInt(1),
      I2 => bloqueBala_xBalaInt(0),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_12_not0001_377
    );
  bloqueMarcianos_fila_11_not0001_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(3),
      I1 => bloqueMarcianos_fila(11),
      I2 => bloqueMarcianos_N14,
      O => N81
    );
  bloqueMarcianos_fila_11_not0001 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(1),
      I1 => bloqueBala_xBalaInt(0),
      I2 => N81,
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_11_not0001_374
    );
  bloqueMarcianos_fila_10_not0001_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(3),
      I1 => bloqueMarcianos_fila(10),
      I2 => bloqueMarcianos_N14,
      O => N83
    );
  bloqueMarcianos_fila_10_not0001 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N83,
      I1 => bloqueBala_xBalaInt(1),
      I2 => bloqueBala_xBalaInt(0),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_10_not0001_371
    );
  bloqueMarcianos_fila_0_not0001_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMarcianos_N14,
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueBala_xBalaInt(3),
      O => N85
    );
  bloqueMarcianos_fila_0_not0001 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => N85,
      I1 => bloqueBala_xBalaInt(1),
      I2 => bloqueBala_xBalaInt(0),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_0_not0001_367
    );
  bloqueTempoNave_Mcount_a_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_14_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_14
    );
  bloqueTempoInicio_Mcount_a_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(14),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_14
    );
  bloqueTempoBala_Mcount_a_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_14_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_14
    );
  bloqueTempoNave_Mcount_a_eqn_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_15_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_15
    );
  bloqueTempoInicio_Mcount_a_eqn_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(15),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_15
    );
  bloqueTempoBala_Mcount_a_eqn_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_15_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_15
    );
  bloqueTempoNave_Mcount_a_eqn_161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_16_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_16
    );
  bloqueTempoInicio_Mcount_a_eqn_161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(16),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_16
    );
  bloqueTempoBala_Mcount_a_eqn_161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_16_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_16
    );
  bloqueMarcianos_yComun_mux0000_3_211 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => bloqueMarcianos_yComun(1),
      I1 => bloqueMarcianos_yComun(2),
      O => bloqueMarcianos_N48
    );
  bloqueTempoNave_Mcount_a_eqn_171 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_17_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_17
    );
  bloqueTempoInicio_Mcount_a_eqn_171 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(17),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_17
    );
  bloqueTempoBala_Mcount_a_eqn_171 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_17_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_17
    );
  bloqueMaquinaEstado_partidosGanados_not000118 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(3),
      I1 => Test_IBUF_190,
      I2 => bloqueMaquinaEstado_partidosGanados(1),
      I3 => bloqueMaquinaEstado_partidosGanados(2),
      O => bloqueMaquinaEstado_partidosGanados_not000118_254
    );
  bloqueTempoNave_Mcount_a_eqn_181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_18_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_18
    );
  bloqueTempoInicio_Mcount_a_eqn_181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(18),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_18
    );
  bloqueTempoBala_Mcount_a_eqn_181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_18_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_18
    );
  bloqueTempoNave_Mcount_a_eqn_191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_19_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_19
    );
  bloqueTempoInicio_Mcount_a_eqn_191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(19),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_19
    );
  bloqueTempoBala_Mcount_a_eqn_191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_19_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_19
    );
  bloqueTempoNave_Mcount_a_eqn_201 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_20_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_20
    );
  bloqueTempoInicio_Mcount_a_eqn_201 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(20),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_20
    );
  bloqueTempoBala_Mcount_a_eqn_201 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_20_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_20
    );
  bloqueTempoNave_Mcount_a_eqn_211 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_21_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_21
    );
  bloqueTempoInicio_Mcount_a_eqn_211 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(21),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_21
    );
  bloqueTempoBala_Mcount_a_eqn_211 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_21_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_21
    );
  bloqueMarcianos_Resultado_0_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueMarcianos_yComun(0),
      I1 => bloqueMarcianos_yComun(3),
      I2 => bloqueMarcianos_Resultado_cmp_eq0000,
      I3 => bloqueMarcianos_N48,
      O => ResultadoInt(0)
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd1_In11 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(3),
      I1 => bloqueMaquinaEstado_partidosGanados(0),
      I2 => bloqueMaquinaEstado_partidosGanados(2),
      I3 => bloqueMaquinaEstado_partidosGanados(1),
      O => bloqueMaquinaEstado_estadoActual_FSM_FFd1_In11_240
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd1_In24 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_In11_240,
      I1 => JuegoInt,
      I2 => ResultadoInt(1),
      I3 => ResultadoInt(0),
      O => bloqueMaquinaEstado_estadoActual_FSM_FFd1_In24_241
    );
  bloqueTempoNave_Mcount_a_eqn_221 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_22_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_22
    );
  bloqueTempoInicio_Mcount_a_eqn_221 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(22),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_22
    );
  bloqueTempoBala_Mcount_a_eqn_221 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_22_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_22
    );
  bloqueTempoNave_Mcount_a_eqn_231 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_23_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_23
    );
  bloqueTempoInicio_Mcount_a_eqn_231 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(23),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_23
    );
  bloqueTempoBala_Mcount_a_eqn_231 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_23_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_23
    );
  bloqueVga_bloqueSyncV_p_cmp_ge00001 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(9),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncV_p(3),
      I3 => N51,
      O => bloqueVga_bloqueSyncV_p_cmp_ge0000
    );
  bloqueTempoNave_Mcount_a_eqn_241 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_24_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_24
    );
  bloqueTempoInicio_Mcount_a_eqn_241 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(24),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_24
    );
  bloqueTempoBala_Mcount_a_eqn_241 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_24_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_24
    );
  bloqueVga_bloqueSyncH_p_cmp_ge0000_inv21 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(8),
      I1 => bloqueVga_bloqueSyncH_p_cmp_ge0000_bdd0,
      I2 => bloqueVga_bloqueSyncH_p(5),
      I3 => bloqueVga_bloqueSyncH_p(9),
      O => bloqueVga_bloqueSyncH_p_cmp_ge0000_inv
    );
  bloqueTempoNave_Mcount_a_eqn_251 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_25_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_25
    );
  bloqueTempoInicio_Mcount_a_eqn_251 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(25),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_25
    );
  bloqueTempoBala_Mcount_a_eqn_251 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_25_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_25
    );
  bloqueTempoNave_Mcount_a_eqn_261 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_26_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_26
    );
  bloqueTempoInicio_Mcount_a_eqn_261 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(26),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_26
    );
  bloqueTempoBala_Mcount_a_eqn_261 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_26_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_26
    );
  bloqueTempoNave_Mcount_a_eqn_271 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_27_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_27
    );
  bloqueTempoInicio_Mcount_a_eqn_271 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(27),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_27
    );
  bloqueTempoBala_Mcount_a_eqn_271 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_27_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_27
    );
  bloqueTempoNave_Mcount_a_eqn_281 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_28_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_28
    );
  bloqueTempoInicio_Mcount_a_eqn_281 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(28),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_28
    );
  bloqueTempoBala_Mcount_a_eqn_281 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_28_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_28
    );
  bloqueMarcianos_fila_19_not0001 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => bloqueBala_xBalaInt(1),
      I1 => bloqueBala_xBalaInt(0),
      I2 => N89,
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_19_not0001_398
    );
  bloqueMarcianos_fila_18_not0001 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => bloqueBala_xBalaInt(1),
      I1 => bloqueBala_xBalaInt(0),
      I2 => N91,
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_18_not0001_395
    );
  bloqueMarcianos_fila_17_not0001 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N93,
      I1 => bloqueBala_xBalaInt(0),
      I2 => bloqueBala_xBalaInt(1),
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_17_not0001_392
    );
  bloqueMarcianos_fila_16_not0001 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => bloqueBala_xBalaInt(1),
      I1 => bloqueBala_xBalaInt(0),
      I2 => N95,
      I3 => bloqueMarcianos_N4,
      O => bloqueMarcianos_fila_16_not0001_389
    );
  bloqueMarcianos_fila_8_cmp_ne000032 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => bloqueBala_yBalaInt(1),
      I1 => bloqueMarcianos_yComun(1),
      I2 => bloqueBala_yBalaInt(2),
      I3 => bloqueMarcianos_yComun(2),
      O => bloqueMarcianos_fila_8_cmp_ne000032_423
    );
  bloqueMarcianos_fila_8_cmp_ne000065 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => bloqueBala_yBalaInt(3),
      I1 => bloqueMarcianos_yComun(3),
      I2 => bloqueBala_yBalaInt(0),
      I3 => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_fila_8_cmp_ne000065_424
    );
  bloqueMarcianos_fila_8_cmp_ne000066 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => bloqueMarcianos_fila_8_cmp_ne000032_423,
      I1 => bloqueMarcianos_fila_8_cmp_ne000065_424,
      O => bloqueMarcianos_fila_8_cmp_ne0000
    );
  bloqueMarcianos_Resultado_1_1 : LUT4
    generic map(
      INIT => X"5455"
    )
    port map (
      I0 => bloqueMarcianos_Resultado_cmp_eq0000,
      I1 => bloqueMarcianos_yComun(0),
      I2 => bloqueMarcianos_N48,
      I3 => bloqueMarcianos_yComun(3),
      O => ResultadoInt(1)
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd3_In14 : LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(0),
      I1 => bloqueMaquinaEstado_partidosGanados(1),
      I2 => bloqueMaquinaEstado_partidosGanados(3),
      I3 => bloqueMaquinaEstado_partidosGanados(2),
      O => bloqueMaquinaEstado_estadoActual_FSM_FFd3_In14_246
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd3_In53 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_In8_248,
      I1 => Test_IBUF_190,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_In26_247,
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      O => bloqueMaquinaEstado_estadoActual_FSM_FFd3_In
    );
  bloqueTempoNave_Mcount_a_eqn_291 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_29_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_29
    );
  bloqueTempoInicio_Mcount_a_eqn_291 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(29),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_29
    );
  bloqueTempoBala_Mcount_a_eqn_291 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_29_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_29
    );
  bloqueTempoNave_Mcount_a_eqn_301 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_30_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_30
    );
  bloqueTempoInicio_Mcount_a_eqn_301 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(30),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_30
    );
  bloqueTempoBala_Mcount_a_eqn_301 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_30_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_30
    );
  bloqueTempoNave_Mcount_a_eqn_311 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_31_1,
      I1 => bloqueTempoNave_a_cmp_eq0000,
      O => bloqueTempoNave_Mcount_a_eqn_31
    );
  bloqueTempoInicio_Mcount_a_eqn_311 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(31),
      I1 => bloqueTempoInicio_a_cmp_eq0000,
      O => bloqueTempoInicio_Mcount_a_eqn_31
    );
  bloqueTempoBala_Mcount_a_eqn_311 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_31_2,
      I1 => bloqueTempoBala_a_cmp_eq0000,
      O => bloqueTempoBala_Mcount_a_eqn_31
    );
  bloqueMarcianos_X_2_1111 : LUT4
    generic map(
      INIT => X"8999"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncV_p(1),
      I3 => bloqueVga_bloqueSyncV_p(2),
      O => bloqueMarcianos_N34
    );
  bloqueVga_bloqueSyncH_p_cmp_ge000011 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(6),
      I1 => bloqueVga_bloqueSyncH_p(7),
      I2 => bloqueVga_bloqueSyncH_EnableV_bdd2,
      O => bloqueVga_bloqueSyncH_p_cmp_ge0000_bdd0
    );
  bloqueVga_bloqueSyncH_p_cmp_ge00001 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(5),
      I1 => bloqueVga_bloqueSyncH_p(9),
      I2 => bloqueVga_bloqueSyncH_p(8),
      I3 => bloqueVga_bloqueSyncH_p_cmp_ge0000_bdd0,
      O => bloqueVga_bloqueSyncH_p_cmp_ge0000
    );
  bloqueBala_X_1_1_SW0 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncH_p(1),
      I3 => bloqueVga_bloqueSyncV_p(3),
      O => N99
    );
  bloqueBala_X_1_1 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(1),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(0),
      I3 => N99,
      O => bloqueBala_X_1_2
    );
  bloqueNave_EnableIzquierda_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Izquierda_IBUF_15,
      I1 => bloqueNave_IzquierdaAnt_446,
      O => bloqueNave_EnableIzquierda
    );
  bloqueNave_xNave_mux0000_4_1 : LUT4
    generic map(
      INIT => X"8228"
    )
    port map (
      I0 => JuegoInt,
      I1 => bloqueNave_xNave(4),
      I2 => bloqueNave_EnableIzquierda,
      I3 => bloqueNave_Maddsub_xNave_addsub0000_cy(3),
      O => bloqueNave_xNave_mux0000(4)
    );
  bloqueBala_X_1_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(4),
      I1 => bloqueVga_bloqueSyncV_p(3),
      I2 => bloqueVga_bloqueSyncH_p(0),
      I3 => bloqueVga_bloqueSyncH_p(1),
      O => N101
    );
  bloqueBala_X_1_Q : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(1),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(0),
      I3 => N101,
      O => bloqueBala_X_1_1_212
    );
  bloqueMarcianos_Mrom_Color_rom0000101 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => bloqueMarcianos_N10,
      I1 => bloqueVga_bloqueSyncV_p(0),
      I2 => bloqueMarcianos_N16,
      I3 => bloqueMarcianos_N111,
      O => bloqueMarcianos_Mrom_Color_rom000010
    );
  bloqueMarcianos_Mrom_Color_rom000012_SW0 : LUT4
    generic map(
      INIT => X"D9DF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(1),
      I2 => bloqueVga_bloqueSyncV_p(4),
      I3 => bloqueVga_bloqueSyncV_p(0),
      O => N103
    );
  bloqueMarcianos_Mrom_Color_rom0000131 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(2),
      I1 => bloqueMarcianos_N10,
      I2 => bloqueMarcianos_N111,
      O => bloqueMarcianos_Mrom_Color_rom000013
    );
  bloqueMarcianos_Mrom_Color_rom00001211 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(1),
      O => bloqueMarcianos_N16
    );
  bloqueMarcianos_Mrom_Color_rom0000111 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => bloqueMarcianos_N111,
      I1 => bloqueMarcianos_N10,
      I2 => bloqueVga_bloqueSyncV_p(0),
      I3 => bloqueMarcianos_N16,
      O => bloqueMarcianos_Mrom_Color_rom000011
    );
  bloqueVga_bloqueRgbMux_gOut44 : LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => colorNaveInt(0),
      I1 => bloqueVga_bloqueRgbMux_gOut11_1232,
      I2 => bloqueVga_bloqueRgbMux_gOut41_1236,
      I3 => bloqueVga_bloqueRgbMux_gOut26,
      O => G_OBUF_9
    );
  bloqueNave_Mrom_Color_rom0000151 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncV_p(2),
      I3 => bloqueVga_bloqueSyncV_p(1),
      O => bloqueNave_Mrom_Color_rom000015
    );
  bloqueNave_Mrom_Color_rom0000271 : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(2),
      I1 => bloqueVga_bloqueSyncV_p(1),
      I2 => bloqueVga_bloqueSyncV_p(4),
      I3 => bloqueVga_bloqueSyncV_p(3),
      O => bloqueNave_Mrom_Color_rom000027
    );
  bloqueMarcianos_Mrom_Color_rom00002411 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(4),
      I1 => bloqueVga_bloqueSyncV_p(3),
      I2 => bloqueVga_bloqueSyncV_p(1),
      O => bloqueMarcianos_N10
    );
  bloqueMarcianos_Mrom_Color_rom00002221 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(0),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncV_p(3),
      I3 => bloqueVga_bloqueSyncV_p(1),
      O => bloqueMarcianos_N111
    );
  bloqueBala_Mrom_Color_rom0000121 : LUT4
    generic map(
      INIT => X"2600"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(1),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(0),
      I3 => bloqueBala_N22,
      O => bloqueBala_Mrom_Color_rom000012
    );
  bloqueBala_Mrom_Color_rom00001221 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(4),
      I1 => bloqueVga_bloqueSyncV_p(3),
      O => bloqueBala_N22
    );
  bloqueBala_Mrom_Color_rom0000151 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(2),
      I1 => bloqueBala_N22,
      I2 => bloqueVga_bloqueSyncV_p(0),
      I3 => bloqueVga_bloqueSyncV_p(1),
      O => bloqueBala_Mrom_Color_rom000015
    );
  bloqueBala_Mrom_Color_rom0000131 : LUT4
    generic map(
      INIT => X"50E0"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(1),
      I1 => bloqueVga_bloqueSyncV_p(0),
      I2 => bloqueBala_N22,
      I3 => bloqueVga_bloqueSyncV_p(2),
      O => bloqueBala_Mrom_Color_rom000013
    );
  bloqueVga_bloqueRgbMux_bOut28 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => bloqueVga_ApagarH_Int,
      I1 => modoPantallaInt(2),
      I2 => bloqueVga_ApagarV_Int,
      O => bloqueVga_bloqueRgbMux_bOut28_1230
    );
  bloqueVga_bloqueRgbMux_bOut31 : LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => modoPantallaInt(0),
      I1 => bloqueVga_bloqueRgbMux_bOut5_1231,
      I2 => bloqueVga_bloqueRgbMux_bOut28_1230,
      I3 => bloqueVga_bloqueRgbMux_bOut12_1229,
      O => B_OBUF_1
    );
  bloqueMarcianos_Color_and00007 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(9),
      I1 => bloqueMarcianos_Mmux_varindex0000_5_f7_264,
      I2 => bloqueMarcianos_Mmux_varindex0000_6_f5_265,
      O => bloqueMarcianos_Color_and00007_258
    );
  bloqueMarcianos_Color_and000059 : LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      I0 => bloqueMarcianos_yComun(3),
      I1 => bloqueVga_bloqueSyncV_p(8),
      I2 => bloqueVga_bloqueSyncV_p(9),
      O => bloqueMarcianos_Color_and000059_257
    );
  bloqueMarcianos_Color_and0000100 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueMarcianos_Color_and00007_258,
      I1 => bloqueMarcianos_Color_and000072_259,
      I2 => bloqueMarcianos_varindex00011,
      O => colorMarcianosInt(0)
    );
  bloqueNave_Mrom_Color_rom00001211 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(4),
      O => bloqueNave_N3
    );
  bloqueNave_Mrom_Color_rom0000241 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(0),
      I1 => bloqueNave_N3,
      I2 => bloqueVga_bloqueSyncV_p(1),
      I3 => bloqueNave_Mrom_Color_rom000023,
      O => bloqueNave_Mrom_Color_rom000024
    );
  bloqueNave_Mrom_Color_rom0000231 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(1),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncV_p(3),
      I3 => bloqueVga_bloqueSyncV_p(2),
      O => bloqueNave_Mrom_Color_rom000023
    );
  bloqueNave_Mrom_Color_rom0000131 : LUT4
    generic map(
      INIT => X"66E6"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueNave_N8,
      I3 => bloqueVga_bloqueSyncV_p(2),
      O => bloqueNave_Mrom_Color_rom000013
    );
  bloqueNave_Mrom_Color_rom0000121 : LUT4
    generic map(
      INIT => X"66A6"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(4),
      I1 => bloqueVga_bloqueSyncV_p(3),
      I2 => bloqueNave_N8,
      I3 => bloqueVga_bloqueSyncV_p(2),
      O => bloqueNave_Mrom_Color_rom000012
    );
  bloqueNave_Mrom_Color_rom0000_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(4),
      I1 => bloqueVga_bloqueSyncV_p(3),
      O => N124
    );
  bloqueNave_Mrom_Color_rom000011111 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(0),
      I1 => bloqueVga_bloqueSyncV_p(1),
      O => bloqueNave_N8
    );
  bloqueNave_Color_and000026 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(5),
      I1 => bloqueNave_xNave(0),
      I2 => bloqueVga_bloqueSyncH_p(6),
      I3 => bloqueNave_xNave(1),
      O => bloqueNave_Color_and000026_440
    );
  bloqueNave_Color_and000053 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueNave_xNave(2),
      I2 => bloqueVga_bloqueSyncH_p(8),
      I3 => bloqueNave_xNave(3),
      O => bloqueNave_Color_and000053_441
    );
  bloqueNave_Color_and000085 : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(9),
      I1 => bloqueNave_xNave(4),
      I2 => bloqueVga_bloqueSyncV_p(6),
      I3 => bloqueVga_bloqueSyncV_p(9),
      O => bloqueNave_Color_and000085_442
    );
  bloqueNave_Color_and000090 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(7),
      I1 => bloqueVga_bloqueSyncV_p(8),
      I2 => bloqueVga_bloqueSyncV_p(5),
      O => bloqueNave_Color_and000090_443
    );
  bloqueNave_Color_and0000104 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => bloqueNave_Color_and000026_440,
      I1 => bloqueNave_Color_and000053_441,
      I2 => bloqueNave_Color_and000085_442,
      I3 => bloqueNave_Color_and000090_443,
      O => bloqueNave_Color_and0000104_439
    );
  bloqueNave_Color_and0000113 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => bloqueNave_varindex0000,
      I1 => bloqueNave_Color_and0000104_439,
      O => colorNaveInt(0)
    );
  bloqueVga_bloqueRgbMux_rOut26 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(5),
      I1 => bloqueBala_xBalaInt(0),
      I2 => bloqueVga_bloqueSyncV_p(8),
      I3 => bloqueBala_yBalaInt(3),
      O => bloqueVga_bloqueRgbMux_rOut26_1239
    );
  bloqueVga_bloqueRgbMux_rOut53 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(7),
      I1 => bloqueBala_yBalaInt(2),
      I2 => bloqueVga_bloqueSyncV_p(6),
      I3 => bloqueBala_yBalaInt(1),
      O => bloqueVga_bloqueRgbMux_rOut53_1240
    );
  bloqueVga_bloqueRgbMux_rOut93 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(9),
      I1 => bloqueBala_xBalaInt(4),
      I2 => bloqueVga_bloqueSyncH_p(6),
      I3 => bloqueBala_xBalaInt(1),
      O => bloqueVga_bloqueRgbMux_rOut93_1241
    );
  bloqueVga_bloqueRgbMux_rOut165 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => bloqueVga_bloqueRgbMux_rOut26_1239,
      I1 => bloqueVga_bloqueRgbMux_rOut53_1240,
      I2 => bloqueVga_bloqueRgbMux_rOut93_1241,
      I3 => bloqueVga_bloqueRgbMux_rOut137_1237,
      O => bloqueVga_bloqueRgbMux_rOut165_1238
    );
  bloqueTempoMarcianos_Madd_sub0000_xor_2_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(1),
      I1 => bloqueMaquinaEstado_partidosGanados(0),
      O => bloqueTempoMarcianos_sub0000(2)
    );
  bloqueTempoMarcianos_sub0000_3_1 : LUT3
    generic map(
      INIT => X"65"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(2),
      I1 => bloqueMaquinaEstado_partidosGanados(0),
      I2 => bloqueMaquinaEstado_partidosGanados(1),
      O => bloqueTempoMarcianos_sub0000(3)
    );
  bloqueTempoMarcianos_Madd_sub0000_cy_6_1 : LUT4
    generic map(
      INIT => X"DDD5"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(3),
      I1 => bloqueMaquinaEstado_partidosGanados(2),
      I2 => bloqueMaquinaEstado_partidosGanados(1),
      I3 => bloqueMaquinaEstado_partidosGanados(0),
      O => bloqueTempoMarcianos_Madd_sub0000_cy(6)
    );
  bloqueTempoMarcianos_sub0000_6_1 : LUT4
    generic map(
      INIT => X"2A2B"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(3),
      I1 => bloqueMaquinaEstado_partidosGanados(2),
      I2 => bloqueMaquinaEstado_partidosGanados(1),
      I3 => bloqueMaquinaEstado_partidosGanados(0),
      O => bloqueTempoMarcianos_sub0000(6)
    );
  bloqueTempoMarcianos_sub0000_4_1 : LUT4
    generic map(
      INIT => X"A59A"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(3),
      I1 => bloqueMaquinaEstado_partidosGanados(2),
      I2 => bloqueMaquinaEstado_partidosGanados(1),
      I3 => bloqueMaquinaEstado_partidosGanados(0),
      O => bloqueTempoMarcianos_sub0000(4)
    );
  bloqueTempoMarcianos_sub0000_5_1 : LUT4
    generic map(
      INIT => X"93B6"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(3),
      I1 => bloqueMaquinaEstado_partidosGanados(2),
      I2 => bloqueMaquinaEstado_partidosGanados(1),
      I3 => bloqueMaquinaEstado_partidosGanados(0),
      O => bloqueTempoMarcianos_sub0000(5)
    );
  Reset_IBUF : IBUF
    port map (
      I => Reset,
      O => Reset_IBUF_90
    );
  Izquierda_IBUF : IBUF
    port map (
      I => Izquierda,
      O => Izquierda_IBUF_15
    );
  Derecha_IBUF : IBUF
    port map (
      I => Derecha,
      O => Derecha_IBUF_5
    );
  Disparo_IBUF : IBUF
    port map (
      I => Disparo,
      O => Disparo_IBUF_7
    );
  Inicio_IBUF : IBUF
    port map (
      I => Inicio,
      O => Inicio_IBUF_13
    );
  Test_IBUF : IBUF
    port map (
      I => Test,
      O => Test_IBUF_190
    );
  VSync_OBUF : OBUF
    port map (
      I => VSync_OBUF_192,
      O => VSync
    );
  B_OBUF : OBUF
    port map (
      I => B_OBUF_1,
      O => B
    );
  G_OBUF : OBUF
    port map (
      I => G_OBUF_9,
      O => G
    );
  R_OBUF : OBUF
    port map (
      I => R_OBUF_88,
      O => R
    );
  HSync_OBUF : OBUF
    port map (
      I => HSync_OBUF_11,
      O => HSync
    );
  bloqueTempoInicio_Mcount_a_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(1),
      O => bloqueTempoInicio_Mcount_a_cy_1_rt_683
    );
  bloqueTempoInicio_Mcount_a_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(2),
      O => bloqueTempoInicio_Mcount_a_cy_2_rt_705
    );
  bloqueTempoInicio_Mcount_a_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(3),
      O => bloqueTempoInicio_Mcount_a_cy_3_rt_709
    );
  bloqueTempoInicio_Mcount_a_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(4),
      O => bloqueTempoInicio_Mcount_a_cy_4_rt_711
    );
  bloqueTempoInicio_Mcount_a_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(5),
      O => bloqueTempoInicio_Mcount_a_cy_5_rt_713
    );
  bloqueTempoInicio_Mcount_a_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(6),
      O => bloqueTempoInicio_Mcount_a_cy_6_rt_715
    );
  bloqueTempoInicio_Mcount_a_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(7),
      O => bloqueTempoInicio_Mcount_a_cy_7_rt_717
    );
  bloqueTempoInicio_Mcount_a_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(8),
      O => bloqueTempoInicio_Mcount_a_cy_8_rt_719
    );
  bloqueTempoInicio_Mcount_a_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(9),
      O => bloqueTempoInicio_Mcount_a_cy_9_rt_721
    );
  bloqueTempoInicio_Mcount_a_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(10),
      O => bloqueTempoInicio_Mcount_a_cy_10_rt_663
    );
  bloqueTempoInicio_Mcount_a_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(11),
      O => bloqueTempoInicio_Mcount_a_cy_11_rt_665
    );
  bloqueTempoInicio_Mcount_a_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(12),
      O => bloqueTempoInicio_Mcount_a_cy_12_rt_667
    );
  bloqueTempoInicio_Mcount_a_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(13),
      O => bloqueTempoInicio_Mcount_a_cy_13_rt_669
    );
  bloqueTempoInicio_Mcount_a_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(14),
      O => bloqueTempoInicio_Mcount_a_cy_14_rt_671
    );
  bloqueTempoInicio_Mcount_a_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(15),
      O => bloqueTempoInicio_Mcount_a_cy_15_rt_673
    );
  bloqueTempoInicio_Mcount_a_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(16),
      O => bloqueTempoInicio_Mcount_a_cy_16_rt_675
    );
  bloqueTempoInicio_Mcount_a_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(17),
      O => bloqueTempoInicio_Mcount_a_cy_17_rt_677
    );
  bloqueTempoInicio_Mcount_a_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(18),
      O => bloqueTempoInicio_Mcount_a_cy_18_rt_679
    );
  bloqueTempoInicio_Mcount_a_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(19),
      O => bloqueTempoInicio_Mcount_a_cy_19_rt_681
    );
  bloqueTempoInicio_Mcount_a_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(20),
      O => bloqueTempoInicio_Mcount_a_cy_20_rt_685
    );
  bloqueTempoInicio_Mcount_a_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(21),
      O => bloqueTempoInicio_Mcount_a_cy_21_rt_687
    );
  bloqueTempoInicio_Mcount_a_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(22),
      O => bloqueTempoInicio_Mcount_a_cy_22_rt_689
    );
  bloqueTempoInicio_Mcount_a_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(23),
      O => bloqueTempoInicio_Mcount_a_cy_23_rt_691
    );
  bloqueTempoInicio_Mcount_a_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(24),
      O => bloqueTempoInicio_Mcount_a_cy_24_rt_693
    );
  bloqueTempoInicio_Mcount_a_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(25),
      O => bloqueTempoInicio_Mcount_a_cy_25_rt_695
    );
  bloqueTempoInicio_Mcount_a_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(26),
      O => bloqueTempoInicio_Mcount_a_cy_26_rt_697
    );
  bloqueTempoInicio_Mcount_a_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(27),
      O => bloqueTempoInicio_Mcount_a_cy_27_rt_699
    );
  bloqueTempoInicio_Mcount_a_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(28),
      O => bloqueTempoInicio_Mcount_a_cy_28_rt_701
    );
  bloqueTempoInicio_Mcount_a_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(29),
      O => bloqueTempoInicio_Mcount_a_cy_29_rt_703
    );
  bloqueTempoInicio_Mcount_a_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(30),
      O => bloqueTempoInicio_Mcount_a_cy_30_rt_707
    );
  bloqueTempoNave_Mcount_a_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(1),
      O => bloqueTempoNave_Mcount_a_cy_1_rt_1103
    );
  bloqueTempoNave_Mcount_a_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(2),
      O => bloqueTempoNave_Mcount_a_cy_2_rt_1125
    );
  bloqueTempoNave_Mcount_a_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(3),
      O => bloqueTempoNave_Mcount_a_cy_3_rt_1129
    );
  bloqueTempoNave_Mcount_a_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(4),
      O => bloqueTempoNave_Mcount_a_cy_4_rt_1131
    );
  bloqueTempoNave_Mcount_a_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(5),
      O => bloqueTempoNave_Mcount_a_cy_5_rt_1133
    );
  bloqueTempoNave_Mcount_a_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(6),
      O => bloqueTempoNave_Mcount_a_cy_6_rt_1135
    );
  bloqueTempoNave_Mcount_a_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(7),
      O => bloqueTempoNave_Mcount_a_cy_7_rt_1137
    );
  bloqueTempoNave_Mcount_a_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(8),
      O => bloqueTempoNave_Mcount_a_cy_8_rt_1139
    );
  bloqueTempoNave_Mcount_a_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(9),
      O => bloqueTempoNave_Mcount_a_cy_9_rt_1141
    );
  bloqueTempoNave_Mcount_a_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(10),
      O => bloqueTempoNave_Mcount_a_cy_10_rt_1083
    );
  bloqueTempoNave_Mcount_a_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(11),
      O => bloqueTempoNave_Mcount_a_cy_11_rt_1085
    );
  bloqueTempoNave_Mcount_a_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(12),
      O => bloqueTempoNave_Mcount_a_cy_12_rt_1087
    );
  bloqueTempoNave_Mcount_a_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(13),
      O => bloqueTempoNave_Mcount_a_cy_13_rt_1089
    );
  bloqueTempoNave_Mcount_a_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(14),
      O => bloqueTempoNave_Mcount_a_cy_14_rt_1091
    );
  bloqueTempoNave_Mcount_a_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(15),
      O => bloqueTempoNave_Mcount_a_cy_15_rt_1093
    );
  bloqueTempoNave_Mcount_a_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(16),
      O => bloqueTempoNave_Mcount_a_cy_16_rt_1095
    );
  bloqueTempoNave_Mcount_a_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(17),
      O => bloqueTempoNave_Mcount_a_cy_17_rt_1097
    );
  bloqueTempoNave_Mcount_a_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(18),
      O => bloqueTempoNave_Mcount_a_cy_18_rt_1099
    );
  bloqueTempoNave_Mcount_a_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(19),
      O => bloqueTempoNave_Mcount_a_cy_19_rt_1101
    );
  bloqueTempoNave_Mcount_a_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(20),
      O => bloqueTempoNave_Mcount_a_cy_20_rt_1105
    );
  bloqueTempoNave_Mcount_a_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(21),
      O => bloqueTempoNave_Mcount_a_cy_21_rt_1107
    );
  bloqueTempoNave_Mcount_a_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(22),
      O => bloqueTempoNave_Mcount_a_cy_22_rt_1109
    );
  bloqueTempoNave_Mcount_a_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(23),
      O => bloqueTempoNave_Mcount_a_cy_23_rt_1111
    );
  bloqueTempoNave_Mcount_a_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(24),
      O => bloqueTempoNave_Mcount_a_cy_24_rt_1113
    );
  bloqueTempoNave_Mcount_a_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(25),
      O => bloqueTempoNave_Mcount_a_cy_25_rt_1115
    );
  bloqueTempoNave_Mcount_a_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(26),
      O => bloqueTempoNave_Mcount_a_cy_26_rt_1117
    );
  bloqueTempoNave_Mcount_a_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(27),
      O => bloqueTempoNave_Mcount_a_cy_27_rt_1119
    );
  bloqueTempoNave_Mcount_a_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(28),
      O => bloqueTempoNave_Mcount_a_cy_28_rt_1121
    );
  bloqueTempoNave_Mcount_a_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(29),
      O => bloqueTempoNave_Mcount_a_cy_29_rt_1123
    );
  bloqueTempoNave_Mcount_a_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(30),
      O => bloqueTempoNave_Mcount_a_cy_30_rt_1127
    );
  bloqueTempoBala_Mcount_a_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(1),
      O => bloqueTempoBala_Mcount_a_cy_1_rt_537
    );
  bloqueTempoBala_Mcount_a_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(2),
      O => bloqueTempoBala_Mcount_a_cy_2_rt_559
    );
  bloqueTempoBala_Mcount_a_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(3),
      O => bloqueTempoBala_Mcount_a_cy_3_rt_563
    );
  bloqueTempoBala_Mcount_a_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(4),
      O => bloqueTempoBala_Mcount_a_cy_4_rt_565
    );
  bloqueTempoBala_Mcount_a_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(5),
      O => bloqueTempoBala_Mcount_a_cy_5_rt_567
    );
  bloqueTempoBala_Mcount_a_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(6),
      O => bloqueTempoBala_Mcount_a_cy_6_rt_569
    );
  bloqueTempoBala_Mcount_a_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(7),
      O => bloqueTempoBala_Mcount_a_cy_7_rt_571
    );
  bloqueTempoBala_Mcount_a_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(8),
      O => bloqueTempoBala_Mcount_a_cy_8_rt_573
    );
  bloqueTempoBala_Mcount_a_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(9),
      O => bloqueTempoBala_Mcount_a_cy_9_rt_575
    );
  bloqueTempoBala_Mcount_a_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(10),
      O => bloqueTempoBala_Mcount_a_cy_10_rt_517
    );
  bloqueTempoBala_Mcount_a_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(11),
      O => bloqueTempoBala_Mcount_a_cy_11_rt_519
    );
  bloqueTempoBala_Mcount_a_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(12),
      O => bloqueTempoBala_Mcount_a_cy_12_rt_521
    );
  bloqueTempoBala_Mcount_a_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(13),
      O => bloqueTempoBala_Mcount_a_cy_13_rt_523
    );
  bloqueTempoBala_Mcount_a_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(14),
      O => bloqueTempoBala_Mcount_a_cy_14_rt_525
    );
  bloqueTempoBala_Mcount_a_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(15),
      O => bloqueTempoBala_Mcount_a_cy_15_rt_527
    );
  bloqueTempoBala_Mcount_a_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(16),
      O => bloqueTempoBala_Mcount_a_cy_16_rt_529
    );
  bloqueTempoBala_Mcount_a_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(17),
      O => bloqueTempoBala_Mcount_a_cy_17_rt_531
    );
  bloqueTempoBala_Mcount_a_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(18),
      O => bloqueTempoBala_Mcount_a_cy_18_rt_533
    );
  bloqueTempoBala_Mcount_a_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(19),
      O => bloqueTempoBala_Mcount_a_cy_19_rt_535
    );
  bloqueTempoBala_Mcount_a_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(20),
      O => bloqueTempoBala_Mcount_a_cy_20_rt_539
    );
  bloqueTempoBala_Mcount_a_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(21),
      O => bloqueTempoBala_Mcount_a_cy_21_rt_541
    );
  bloqueTempoBala_Mcount_a_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(22),
      O => bloqueTempoBala_Mcount_a_cy_22_rt_543
    );
  bloqueTempoBala_Mcount_a_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(23),
      O => bloqueTempoBala_Mcount_a_cy_23_rt_545
    );
  bloqueTempoBala_Mcount_a_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(24),
      O => bloqueTempoBala_Mcount_a_cy_24_rt_547
    );
  bloqueTempoBala_Mcount_a_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(25),
      O => bloqueTempoBala_Mcount_a_cy_25_rt_549
    );
  bloqueTempoBala_Mcount_a_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(26),
      O => bloqueTempoBala_Mcount_a_cy_26_rt_551
    );
  bloqueTempoBala_Mcount_a_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(27),
      O => bloqueTempoBala_Mcount_a_cy_27_rt_553
    );
  bloqueTempoBala_Mcount_a_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(28),
      O => bloqueTempoBala_Mcount_a_cy_28_rt_555
    );
  bloqueTempoBala_Mcount_a_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(29),
      O => bloqueTempoBala_Mcount_a_cy_29_rt_557
    );
  bloqueTempoBala_Mcount_a_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(30),
      O => bloqueTempoBala_Mcount_a_cy_30_rt_561
    );
  bloqueTempoInicio_Mcount_a_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoInicio_a(31),
      O => bloqueTempoInicio_Mcount_a_xor_31_rt_755
    );
  bloqueTempoNave_Mcount_a_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoNave_a(31),
      O => bloqueTempoNave_Mcount_a_xor_31_rt_1175
    );
  bloqueTempoBala_Mcount_a_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueTempoBala_a(31),
      O => bloqueTempoBala_Mcount_a_xor_31_rt_609
    );
  bloqueVga_bloqueSyncH_SyncH47_SW0 : LUT4
    generic map(
      INIT => X"8180"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(4),
      I1 => bloqueVga_bloqueSyncH_p(5),
      I2 => bloqueVga_bloqueSyncH_p(6),
      I3 => bloqueVga_bloqueSyncH_SyncH26_1273,
      O => N133
    );
  bloqueVga_bloqueSyncH_SyncH47 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(7),
      I1 => bloqueVga_bloqueSyncH_p(8),
      I2 => bloqueVga_bloqueSyncH_p(9),
      I3 => N133,
      O => HSync_OBUF_11
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd1_In44 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_In24_241,
      I1 => Test_IBUF_190,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I3 => bloqueMaquinaEstado_N7,
      O => bloqueMaquinaEstado_estadoActual_FSM_FFd1_In
    );
  bloqueMarcianos_Color_and000072_SW0 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => bloqueMarcianos_yComun(2),
      I1 => bloqueVga_bloqueSyncV_p(7),
      I2 => bloqueMarcianos_yComun(1),
      I3 => bloqueVga_bloqueSyncV_p(6),
      O => N135
    );
  bloqueMarcianos_Color_and000072 : LUT4
    generic map(
      INIT => X"9000"
    )
    port map (
      I0 => bloqueMarcianos_yComun(0),
      I1 => bloqueVga_bloqueSyncV_p(5),
      I2 => bloqueMarcianos_Color_and000059_257,
      I3 => N135,
      O => bloqueMarcianos_Color_and000072_259
    );
  bloqueVga_bloqueRgbMux_rOut137_SW0 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => bloqueBala_yBalaInt(0),
      I1 => bloqueVga_bloqueSyncV_p(5),
      I2 => bloqueBala_xBalaInt(2),
      I3 => bloqueVga_bloqueSyncH_p(7),
      O => N137
    );
  bloqueVga_bloqueRgbMux_rOut137 : LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      I0 => bloqueBala_xBalaInt(3),
      I1 => bloqueVga_bloqueSyncH_p(8),
      I2 => bloqueVga_bloqueSyncV_p(9),
      I3 => N137,
      O => bloqueVga_bloqueRgbMux_rOut137_1237
    );
  bloqueVga_bloqueSyncH_Mcount_p_lut_5_Q : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(8),
      I1 => bloqueVga_bloqueSyncH_p(5),
      I2 => bloqueVga_bloqueSyncH_p(9),
      O => bloqueVga_bloqueSyncH_Mcount_p_lut(5)
    );
  bloqueVga_bloqueSyncV_Mcount_p_lut_3_Q : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(9),
      O => bloqueVga_bloqueSyncV_Mcount_p_lut(3)
    );
  bloqueVga_bloqueSyncV_Mcount_p_lut_4_Q : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(4),
      I1 => bloqueVga_bloqueSyncV_p(9),
      O => bloqueVga_bloqueSyncV_Mcount_p_lut(4)
    );
  bloqueVga_bloqueSyncH_Mcount_p_lut_8_Q : LUT4
    generic map(
      INIT => X"444C"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(9),
      I1 => bloqueVga_bloqueSyncH_p(8),
      I2 => bloqueVga_bloqueSyncH_p(5),
      I3 => bloqueVga_bloqueSyncH_p_cmp_ge0000_bdd0,
      O => bloqueVga_bloqueSyncH_Mcount_p_lut(8)
    );
  bloqueMarcianos_fila_19_not0001_SW0 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMarcianos_fila(19),
      I1 => bloqueBala_xBalaInt(2),
      I2 => bloqueBala_xBalaInt(3),
      I3 => bloqueMarcianos_N47,
      O => N89
    );
  bloqueMarcianos_fila_17_not0001_SW0 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMarcianos_fila(17),
      I1 => bloqueBala_xBalaInt(2),
      I2 => bloqueBala_xBalaInt(3),
      I3 => bloqueMarcianos_N47,
      O => N93
    );
  bloqueVga_bloqueSyncH_Mcount_p_lut_9_Q : LUT4
    generic map(
      INIT => X"444C"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(8),
      I1 => bloqueVga_bloqueSyncH_p(9),
      I2 => bloqueVga_bloqueSyncH_p(5),
      I3 => bloqueVga_bloqueSyncH_p_cmp_ge0000_bdd0,
      O => bloqueVga_bloqueSyncH_Mcount_p_lut(9)
    );
  bloqueVga_bloqueSyncV_Mcount_p_lut_9_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(4),
      I1 => bloqueVga_bloqueSyncV_p(9),
      I2 => bloqueVga_bloqueSyncV_p(3),
      I3 => N51,
      O => bloqueVga_bloqueSyncV_Mcount_p_lut(9)
    );
  bloqueMarcianos_fila_18_not0001_SW0 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => bloqueMarcianos_fila(18),
      I1 => bloqueBala_xBalaInt(2),
      I2 => bloqueMarcianos_N47,
      I3 => bloqueBala_xBalaInt(3),
      O => N91
    );
  bloqueMarcianos_fila_16_not0001_SW0 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => bloqueMarcianos_fila(16),
      I1 => bloqueBala_xBalaInt(2),
      I2 => bloqueMarcianos_N47,
      I3 => bloqueBala_xBalaInt(3),
      O => N95
    );
  bloqueNave_xNave_not000141 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => Izquierda_IBUF_15,
      I1 => Derecha_IBUF_5,
      I2 => bloqueNave_DerechaAnt_444,
      I3 => bloqueNave_IzquierdaAnt_446,
      O => bloqueNave_xNave_not000141_509
    );
  bloqueMarcianos_fila_19_mux00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bloqueMarcianos_fila(18),
      I1 => JuegoInt,
      I2 => bloqueMarcianos_N12,
      O => bloqueMarcianos_fila_19_mux0000
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd3_In26 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => bloqueMarcianos_Resultado_cmp_eq0000,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_In14_246,
      O => bloqueMaquinaEstado_estadoActual_FSM_FFd3_In26_247
    );
  bloqueMarcianos_Tocado_and000111 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMarcianos_N0,
      I1 => bloqueMarcianos_fila_8_cmp_ne000032_423,
      I2 => bloqueMarcianos_fila_8_cmp_ne000065_424,
      I3 => bloqueBala_xBalaInt(4),
      O => bloqueMarcianos_N47
    );
  bloqueBala_yBalaInt_not0001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => bloqueBala_yBalaInt(2),
      I1 => bloqueBala_yBalaInt(0),
      I2 => bloqueBala_yBalaInt(1),
      O => N46
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd3_In8 : LUT4
    generic map(
      INIT => X"02FF"
    )
    port map (
      I0 => bloqueTempoInicio_Inicio_659,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I2 => bloqueMaquinaEstado_InicioAnt_230,
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      O => bloqueMaquinaEstado_estadoActual_FSM_FFd3_In8_248
    );
  bloqueMarcianos_Tocado_and00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I2 => Reset_IBUF_90,
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      O => bloqueMarcianos_Tocado_and0000
    );
  bloqueMarcianos_yComun_mux0000_0_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I2 => bloqueMarcianos_yComun(0),
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      O => bloqueMarcianos_yComun_mux0000(0)
    );
  bloqueNave_xNave_not000183 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I3 => bloqueNave_xNave_not000170_513,
      O => bloqueNave_xNave_not0001
    );
  bloqueMarcianos_fila_10_mux000041 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I3 => bloqueMarcianos_N7,
      O => bloqueMarcianos_N19
    );
  bloqueBala_yBalaInt_mux0000_2_1 : LUT4
    generic map(
      INIT => X"FFE1"
    )
    port map (
      I0 => bloqueBala_yBalaInt(0),
      I1 => bloqueBala_yBalaInt(1),
      I2 => bloqueBala_yBalaInt(2),
      I3 => bloqueBala_N5,
      O => bloqueBala_yBalaInt_mux0000(2)
    );
  bloqueMarcianos_yComun_not0001_SW1 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => bloqueMarcianos_yComun(0),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => bloqueMarcianos_fila(19),
      O => N139
    );
  bloqueMarcianos_yComun_not0001 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I3 => N139,
      O => bloqueMarcianos_yComun_not0001_438
    );
  bloqueVga_bloqueRgbMux_gOut11 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I2 => colorMarcianosInt(0),
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      O => bloqueVga_bloqueRgbMux_gOut11_1232
    );
  bloqueNave_Mrom_Color_rom0000101 : LUT4
    generic map(
      INIT => X"2444"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncV_p(1),
      I3 => bloqueVga_bloqueSyncV_p(2),
      O => bloqueNave_Mrom_Color_rom000010
    );
  bloqueMarcianos_Mrom_Color_rom000025_SW1 : LUT4
    generic map(
      INIT => X"ADFD"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(2),
      I1 => bloqueVga_bloqueSyncV_p(0),
      I2 => bloqueVga_bloqueSyncV_p(3),
      I3 => bloqueVga_bloqueSyncV_p(4),
      O => N145
    );
  bloqueNave_Mmux_varindex0000_72 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => bloqueNave_N3,
      I1 => bloqueVga_bloqueSyncH_p(0),
      I2 => bloqueNave_N8,
      I3 => bloqueNave_Mrom_Color_rom000023,
      O => bloqueNave_Mmux_varindex0000_72_464
    );
  bloqueNave_Mmux_varindex0000_91 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueNave_N3,
      I2 => bloqueNave_N8,
      I3 => bloqueNave_Mrom_Color_rom000023,
      O => bloqueNave_Mmux_varindex0000_91_477
    );
  bloqueNave_Mrom_Color_rom0000 : LUT4
    generic map(
      INIT => X"1202"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(2),
      I1 => N124,
      I2 => bloqueVga_bloqueSyncV_p(1),
      I3 => bloqueVga_bloqueSyncV_p(0),
      O => bloqueNave_Mmux_varindex0000_10
    );
  bloqueNave_Mmux_varindex0000_5_f51 : LUT4
    generic map(
      INIT => X"1202"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(2),
      I1 => N124,
      I2 => bloqueVga_bloqueSyncV_p(1),
      I3 => bloqueVga_bloqueSyncV_p(0),
      O => bloqueNave_Mmux_varindex0000_5_f51_455
    );
  bloqueMarcianos_Mmux_varindex0001_91 : LUT4
    generic map(
      INIT => X"A8FD"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => N103,
      I2 => bloqueVga_bloqueSyncV_p(2),
      I3 => bloqueMarcianos_Mrom_Color_rom000013,
      O => bloqueMarcianos_Mmux_varindex0001_91_298
    );
  bloqueMarcianos_Mmux_varindex0001_111 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => N103,
      I2 => bloqueMarcianos_Mrom_Color_rom000013,
      I3 => bloqueVga_bloqueSyncV_p(2),
      O => bloqueMarcianos_Mmux_varindex0001_111_283
    );
  bloqueVga_bloqueRgbMux_gOut41 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(9),
      I1 => bloqueVga_ApagarV_Int,
      I2 => bloqueVga_bloqueSyncH_p(7),
      I3 => bloqueVga_bloqueSyncH_p(8),
      O => bloqueVga_bloqueRgbMux_gOut41_1236
    );
  bloqueVga_bloqueRgbMux_bOut5 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => modoPantallaInt(1),
      I1 => colorMarcianosInt(0),
      I2 => bloqueNave_varindex0000,
      I3 => bloqueNave_Color_and0000104_439,
      O => bloqueVga_bloqueRgbMux_bOut5_1231
    );
  bloqueVga_bloqueRgbMux_bOut12 : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(5),
      I1 => bloqueVga_bloqueSyncV_p(5),
      I2 => modoPantallaInt(1),
      O => bloqueVga_bloqueRgbMux_bOut12_1229
    );
  bloqueVga_bloqueRgbMux_rOut258_SW0 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => bloqueVga_bloqueRgbMux_rOut165_1238,
      I1 => bloqueBala_varindex00001,
      I2 => bloqueNave_varindex0000,
      I3 => bloqueNave_Color_and0000104_439,
      O => N147
    );
  bloqueBala_yBalaInt_mux0000_0_SW1 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I1 => bloqueMarcianos_Tocado_355,
      I2 => bloqueBala_Inicial_194,
      I3 => bloqueBala_N2,
      O => N149
    );
  bloqueBala_yBalaInt_mux0000_0_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => bloqueBala_yBalaInt(0),
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I3 => N149,
      O => bloqueBala_yBalaInt_mux0000(0)
    );
  bloqueNave_Maddsub_xNave_addsub0000_cy_1_11 : LUT4
    generic map(
      INIT => X"BA20"
    )
    port map (
      I0 => bloqueNave_xNave(1),
      I1 => bloqueNave_IzquierdaAnt_446,
      I2 => Izquierda_IBUF_15,
      I3 => bloqueNave_xNave(0),
      O => bloqueNave_Maddsub_xNave_addsub0000_cy(1)
    );
  bloqueNave_xNave_mux0000_0_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I2 => bloqueNave_xNave(0),
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      O => bloqueNave_xNave_mux0000(0)
    );
  bloqueNave_Maddsub_xNave_addsub0000_cy_3_11 : LUT4
    generic map(
      INIT => X"BA20"
    )
    port map (
      I0 => bloqueNave_xNave(3),
      I1 => bloqueNave_IzquierdaAnt_446,
      I2 => Izquierda_IBUF_15,
      I3 => bloqueNave_Maddsub_xNave_addsub0000_cy(2),
      O => bloqueNave_Maddsub_xNave_addsub0000_cy(3)
    );
  bloqueNave_Maddsub_xNave_addsub0000_cy_2_11 : LUT4
    generic map(
      INIT => X"BA20"
    )
    port map (
      I0 => bloqueNave_xNave(2),
      I1 => bloqueNave_IzquierdaAnt_446,
      I2 => Izquierda_IBUF_15,
      I3 => bloqueNave_Maddsub_xNave_addsub0000_cy(1),
      O => bloqueNave_Maddsub_xNave_addsub0000_cy(2)
    );
  bloqueMarcianos_fila_10_mux000031 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I3 => bloqueMarcianos_N12,
      O => bloqueMarcianos_N17
    );
  bloqueMarcianos_Mmux_varindex0001_12 : LUT4
    generic map(
      INIT => X"A8FD"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => N145,
      I2 => bloqueVga_bloqueSyncV_p(1),
      I3 => bloqueMarcianos_Mrom_Color_rom000024_326,
      O => bloqueMarcianos_Mmux_varindex0001_12_286
    );
  bloqueMarcianos_Mmux_varindex0001_121 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => N145,
      I2 => bloqueMarcianos_Mrom_Color_rom000024_326,
      I3 => bloqueVga_bloqueSyncV_p(1),
      O => bloqueMarcianos_Mmux_varindex0001_121_287
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd2_In : MUXF5
    port map (
      I0 => N153,
      I1 => N154,
      S => bloqueMaquinaEstado_N7,
      O => bloqueMaquinaEstado_estadoActual_FSM_FFd2_In_243
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd2_In_F : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I2 => Test_IBUF_190,
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      O => N153
    );
  bloqueMaquinaEstado_estadoActual_FSM_FFd2_In_G : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => Test_IBUF_190,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      O => N154
    );
  bloqueNave_Mrom_Color_rom000014 : MUXF5
    port map (
      I0 => N155,
      I1 => N156,
      S => bloqueVga_bloqueSyncV_p(4),
      O => bloqueNave_Mrom_Color_rom000014_484
    );
  bloqueNave_Mrom_Color_rom000014_F : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(1),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(0),
      I3 => bloqueVga_bloqueSyncV_p(3),
      O => N155
    );
  bloqueNave_Mrom_Color_rom000014_G : LUT3
    generic map(
      INIT => X"75"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueNave_N8,
      O => N156
    );
  bloqueMarcianos_Mrom_Color_rom000015 : MUXF5
    port map (
      I0 => N157,
      I1 => N158,
      S => bloqueVga_bloqueSyncV_p(4),
      O => bloqueMarcianos_Mrom_Color_rom000015_321
    );
  bloqueMarcianos_Mrom_Color_rom000015_F : LUT4
    generic map(
      INIT => X"0480"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(2),
      I1 => bloqueVga_bloqueSyncV_p(0),
      I2 => bloqueVga_bloqueSyncV_p(3),
      I3 => bloqueVga_bloqueSyncV_p(1),
      O => N157
    );
  bloqueMarcianos_Mrom_Color_rom000015_G : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(1),
      O => N158
    );
  bloqueMarcianos_Mrom_Color_rom000022 : MUXF5
    port map (
      I0 => N159,
      I1 => N160,
      S => bloqueVga_bloqueSyncV_p(3),
      O => bloqueMarcianos_Mrom_Color_rom000022_322
    );
  bloqueMarcianos_Mrom_Color_rom000022_F : LUT4
    generic map(
      INIT => X"2600"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(0),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncV_p(2),
      I3 => bloqueVga_bloqueSyncV_p(1),
      O => N159
    );
  bloqueMarcianos_Mrom_Color_rom000022_G : LUT3
    generic map(
      INIT => X"2B"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(4),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(1),
      O => N160
    );
  bloqueNave_Mrom_Color_rom000011 : MUXF5
    port map (
      I0 => N161,
      I1 => N162,
      S => bloqueVga_bloqueSyncV_p(2),
      O => bloqueNave_Mrom_Color_rom000011_481
    );
  bloqueNave_Mrom_Color_rom000011_F : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueNave_N8,
      O => N161
    );
  bloqueNave_Mrom_Color_rom000011_G : LUT4
    generic map(
      INIT => X"6664"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncV_p(1),
      I3 => bloqueVga_bloqueSyncV_p(0),
      O => N162
    );
  bloqueMarcianos_Mrom_Color_rom000026 : MUXF5
    port map (
      I0 => N163,
      I1 => N164,
      S => bloqueVga_bloqueSyncV_p(1),
      O => bloqueMarcianos_Mrom_Color_rom000026_327
    );
  bloqueMarcianos_Mrom_Color_rom000026_F : LUT3
    generic map(
      INIT => X"18"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(4),
      I1 => bloqueVga_bloqueSyncV_p(3),
      I2 => bloqueVga_bloqueSyncV_p(2),
      O => N163
    );
  bloqueMarcianos_Mrom_Color_rom000026_G : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(0),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(3),
      I3 => bloqueVga_bloqueSyncV_p(4),
      O => N164
    );
  bloqueVga_bloqueRgbMux_rOut312 : MUXF5
    port map (
      I0 => N165,
      I1 => N166,
      S => modoPantallaInt(0),
      O => R_OBUF_88
    );
  bloqueVga_bloqueRgbMux_rOut312_F : LUT4
    generic map(
      INIT => X"AA28"
    )
    port map (
      I0 => bloqueVga_bloqueRgbMux_bOut28_1230,
      I1 => bloqueVga_bloqueSyncH_p(5),
      I2 => bloqueVga_bloqueSyncV_p(5),
      I3 => modoPantallaInt(1),
      O => N165
    );
  bloqueVga_bloqueRgbMux_rOut312_G : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => N147,
      I1 => modoPantallaInt(1),
      I2 => colorMarcianosInt(0),
      I3 => bloqueVga_bloqueRgbMux_bOut28_1230,
      O => N166
    );
  bloqueMarcianos_Mrom_Color_rom000024 : MUXF5
    port map (
      I0 => N167,
      I1 => N168,
      S => bloqueVga_bloqueSyncV_p(0),
      O => bloqueMarcianos_Mrom_Color_rom000024_326
    );
  bloqueMarcianos_Mrom_Color_rom000024_F : LUT4
    generic map(
      INIT => X"1202"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(2),
      I1 => bloqueVga_bloqueSyncV_p(1),
      I2 => bloqueVga_bloqueSyncV_p(3),
      I3 => bloqueVga_bloqueSyncV_p(4),
      O => N167
    );
  bloqueMarcianos_Mrom_Color_rom000024_G : LUT4
    generic map(
      INIT => X"4062"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(1),
      I1 => bloqueVga_bloqueSyncV_p(3),
      I2 => bloqueVga_bloqueSyncV_p(4),
      I3 => bloqueVga_bloqueSyncV_p(2),
      O => N168
    );
  bloqueMarcianos_fila_9_mux0000 : MUXF5
    port map (
      I0 => N169,
      I1 => N170,
      S => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_fila_9_mux0000_428
    );
  bloqueMarcianos_fila_9_mux0000_F : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(8),
      I1 => bloqueMarcianos_fila(19),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N169
    );
  bloqueMarcianos_fila_9_mux0000_G : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(10),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N170
    );
  bloqueMarcianos_fila_8_mux0000 : MUXF5
    port map (
      I0 => N171,
      I1 => N172,
      S => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_fila_8_mux0000_425
    );
  bloqueMarcianos_fila_8_mux0000_F : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(7),
      I1 => bloqueMarcianos_fila(19),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N171
    );
  bloqueMarcianos_fila_8_mux0000_G : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(9),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N172
    );
  bloqueMarcianos_fila_7_mux0000 : MUXF5
    port map (
      I0 => N173,
      I1 => N174,
      S => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_fila_7_mux0000_419
    );
  bloqueMarcianos_fila_7_mux0000_F : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(6),
      I1 => bloqueMarcianos_fila(19),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N173
    );
  bloqueMarcianos_fila_7_mux0000_G : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(8),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N174
    );
  bloqueMarcianos_fila_6_mux0000 : MUXF5
    port map (
      I0 => N175,
      I1 => N176,
      S => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_fila_6_mux0000_416
    );
  bloqueMarcianos_fila_6_mux0000_F : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(5),
      I1 => bloqueMarcianos_fila(19),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N175
    );
  bloqueMarcianos_fila_6_mux0000_G : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(7),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N176
    );
  bloqueMarcianos_fila_5_mux0000 : MUXF5
    port map (
      I0 => N177,
      I1 => N178,
      S => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_fila_5_mux0000_413
    );
  bloqueMarcianos_fila_5_mux0000_F : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(4),
      I1 => bloqueMarcianos_fila(19),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N177
    );
  bloqueMarcianos_fila_5_mux0000_G : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(6),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N178
    );
  bloqueMarcianos_fila_4_mux0000 : MUXF5
    port map (
      I0 => N179,
      I1 => N180,
      S => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_fila_4_mux0000_410
    );
  bloqueMarcianos_fila_4_mux0000_F : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(3),
      I1 => bloqueMarcianos_fila(19),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N179
    );
  bloqueMarcianos_fila_4_mux0000_G : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(5),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N180
    );
  bloqueMarcianos_fila_3_mux0000 : MUXF5
    port map (
      I0 => N181,
      I1 => N182,
      S => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_fila_3_mux0000_407
    );
  bloqueMarcianos_fila_3_mux0000_F : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(2),
      I1 => bloqueMarcianos_fila(19),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N181
    );
  bloqueMarcianos_fila_3_mux0000_G : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(4),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N182
    );
  bloqueMarcianos_fila_2_mux0000 : MUXF5
    port map (
      I0 => N183,
      I1 => N184,
      S => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_fila_2_mux0000_404
    );
  bloqueMarcianos_fila_2_mux0000_F : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(1),
      I1 => bloqueMarcianos_fila(19),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N183
    );
  bloqueMarcianos_fila_2_mux0000_G : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueMarcianos_fila(3),
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueTempoMarcianos_EnableMarcianos_804,
      I3 => JuegoInt,
      O => N184
    );
  Clk_BUFGP : BUFGP
    port map (
      I => Clk,
      O => Clk_BUFGP_3
    );
  bloqueTempoInicio_Mcount_a_lut_0_INV_0 : INV
    port map (
      I => bloqueTempoInicio_a(0),
      O => bloqueTempoInicio_Mcount_a_lut(0)
    );
  bloqueTempoNave_Mcount_a_lut_0_INV_0 : INV
    port map (
      I => bloqueTempoNave_a(0),
      O => bloqueTempoNave_Mcount_a_lut(0)
    );
  bloqueTempoBala_Mcount_a_lut_0_INV_0 : INV
    port map (
      I => bloqueTempoBala_a(0),
      O => bloqueTempoBala_Mcount_a_lut(0)
    );
  bloqueTempoMarcianos_Reset_inv1_INV_0 : INV
    port map (
      I => Reset_IBUF_90,
      O => bloqueTempoBala_Reset_inv
    );
  bloqueVga_bloqueDivisorF_a_not00011_INV_0 : INV
    port map (
      I => bloqueVga_bloqueDivisorF_a_1227,
      O => bloqueVga_bloqueDivisorF_a_not0001
    );
  bloqueTempoMarcianos_a_cmp_eq0000_inv1_INV_0 : INV
    port map (
      I => bloqueTempoMarcianos_Mcompar_a_cmp_eq0000_cy(15),
      O => bloqueTempoMarcianos_a_cmp_eq0000_inv
    );
  bloqueVga_bloqueSyncV_SyncV131 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(4),
      I2 => bloqueVga_bloqueSyncV_p(1),
      I3 => bloqueVga_bloqueSyncV_p(2),
      O => bloqueVga_bloqueSyncV_SyncV131_1318
    );
  bloqueVga_bloqueSyncV_SyncV13_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => bloqueVga_bloqueSyncV_SyncV131_1318,
      S => bloqueVga_bloqueSyncV_p(5),
      O => bloqueVga_bloqueSyncV_SyncV13
    );
  bloqueVga_bloqueSyncV_SyncV281 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(9),
      I1 => bloqueVga_bloqueSyncV_p(8),
      I2 => bloqueVga_bloqueSyncV_p(7),
      I3 => bloqueVga_bloqueSyncV_p(6),
      O => bloqueVga_bloqueSyncV_SyncV28
    );
  bloqueVga_bloqueSyncV_SyncV28_f5 : MUXF5
    port map (
      I0 => bloqueVga_bloqueSyncV_SyncV28,
      I1 => N1,
      S => bloqueVga_bloqueSyncV_SyncV13,
      O => VSync_OBUF_192
    );
  bloqueMaquinaEstado_Mcount_partidosGanados_eqn_21 : LUT4
    generic map(
      INIT => X"23AF"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I1 => bloqueMaquinaEstado_partidosGanados(0),
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I3 => bloqueMaquinaEstado_partidosGanados(1),
      O => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_21_234
    );
  bloqueMaquinaEstado_Mcount_partidosGanados_eqn_22 : LUT4
    generic map(
      INIT => X"A020"
    )
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados(1),
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I2 => bloqueMaquinaEstado_partidosGanados(0),
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      O => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_22_235
    );
  bloqueMaquinaEstado_Mcount_partidosGanados_eqn_2_f5 : MUXF5
    port map (
      I0 => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_22_235,
      I1 => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_21_234,
      S => bloqueMaquinaEstado_partidosGanados(2),
      O => bloqueMaquinaEstado_Mcount_partidosGanados_eqn_2
    );
  bloqueVga_bloqueSyncV_ApagarV1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(8),
      I1 => bloqueVga_bloqueSyncV_p(7),
      I2 => bloqueVga_bloqueSyncV_p(6),
      I3 => bloqueVga_bloqueSyncV_p(5),
      O => bloqueVga_bloqueSyncV_ApagarV
    );
  bloqueVga_bloqueSyncV_ApagarV_f5 : MUXF5
    port map (
      I0 => bloqueVga_bloqueSyncV_ApagarV,
      I1 => N1,
      S => bloqueVga_bloqueSyncV_p(9),
      O => bloqueVga_ApagarV_Int
    );
  bloqueNave_xNave_not000161 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => bloqueNave_xNave(1),
      I1 => bloqueNave_xNave(2),
      I2 => bloqueNave_xNave(0),
      I3 => bloqueNave_xNave(3),
      O => bloqueNave_xNave_not000161_512
    );
  bloqueNave_xNave_not00016_f5 : MUXF5
    port map (
      I0 => bloqueNave_xNave_not000161_512,
      I1 => N1,
      S => bloqueNave_xNave(4),
      O => bloqueNave_xNave_not00016
    );
  bloqueNave_xNave_mux0000_1_11 : LUT4
    generic map(
      INIT => X"5A96"
    )
    port map (
      I0 => bloqueNave_xNave(1),
      I1 => Izquierda_IBUF_15,
      I2 => bloqueNave_xNave(0),
      I3 => bloqueNave_IzquierdaAnt_446,
      O => bloqueNave_xNave_mux0000_1_1
    );
  bloqueNave_xNave_mux0000_1_1_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => bloqueNave_xNave_mux0000_1_1,
      S => JuegoInt,
      O => bloqueNave_xNave_mux0000(1)
    );
  bloqueNave_xNave_mux0000_2_11 : LUT4
    generic map(
      INIT => X"5A96"
    )
    port map (
      I0 => bloqueNave_xNave(2),
      I1 => Izquierda_IBUF_15,
      I2 => bloqueNave_Maddsub_xNave_addsub0000_cy(1),
      I3 => bloqueNave_IzquierdaAnt_446,
      O => bloqueNave_xNave_mux0000_2_1
    );
  bloqueNave_xNave_mux0000_2_1_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => bloqueNave_xNave_mux0000_2_1,
      S => JuegoInt,
      O => bloqueNave_xNave_mux0000(2)
    );
  bloqueNave_xNave_mux0000_3_11 : LUT4
    generic map(
      INIT => X"5A96"
    )
    port map (
      I0 => bloqueNave_Maddsub_xNave_addsub0000_cy(2),
      I1 => Izquierda_IBUF_15,
      I2 => bloqueNave_xNave(3),
      I3 => bloqueNave_IzquierdaAnt_446,
      O => bloqueNave_xNave_mux0000_3_1
    );
  bloqueNave_xNave_mux0000_3_1_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => bloqueNave_xNave_mux0000_3_1,
      S => JuegoInt,
      O => bloqueNave_xNave_mux0000(3)
    );
  bloqueVga_bloqueSyncH_EnableV21 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueVga_bloqueSyncH_p(1),
      I2 => bloqueVga_bloqueSyncH_p(3),
      I3 => bloqueVga_bloqueSyncH_p(2),
      O => bloqueVga_bloqueSyncH_EnableV2
    );
  bloqueVga_bloqueSyncH_EnableV2_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => bloqueVga_bloqueSyncH_EnableV2,
      S => bloqueVga_bloqueSyncH_p(4),
      O => bloqueVga_bloqueSyncH_EnableV_bdd2
    );
  bloqueMarcianos_X_2_2 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(0),
      I1 => bloqueVga_bloqueSyncH_p(1),
      I2 => bloqueMarcianos_N34,
      O => bloqueMarcianos_X(2)
    );
  bloqueMarcianos_X_2_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0001_10_f5_280,
      I1 => bloqueMarcianos_X(2),
      S => bloqueVga_bloqueSyncH_p(2),
      O => bloqueMarcianos_X_2_1
    );
  bloqueMarcianos_X_2_11 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(1),
      I1 => bloqueVga_bloqueSyncH_p(0),
      I2 => bloqueMarcianos_N34,
      O => bloqueMarcianos_X_2_11_362
    );
  bloqueMarcianos_X_2_1_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_X_2_11_362,
      I1 => bloqueMarcianos_Mmux_varindex0001_11_f5_285,
      S => bloqueVga_bloqueSyncH_p(2),
      O => bloqueMarcianos_X_2_2_363
    );
  bloqueMarcianos_Mrom_Color_rom0000271 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(0),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(1),
      I3 => bloqueVga_bloqueSyncV_p(3),
      O => bloqueMarcianos_Mrom_Color_rom0000271_329
    );
  bloqueMarcianos_Mrom_Color_rom0000272 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(1),
      I1 => bloqueVga_bloqueSyncV_p(2),
      I2 => bloqueVga_bloqueSyncV_p(0),
      I3 => bloqueVga_bloqueSyncV_p(3),
      O => bloqueMarcianos_Mrom_Color_rom0000272_330
    );
  bloqueMarcianos_Mrom_Color_rom000027_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mrom_Color_rom0000272_330,
      I1 => bloqueMarcianos_Mrom_Color_rom0000271_329,
      S => bloqueVga_bloqueSyncV_p(4),
      O => bloqueMarcianos_Mrom_Color_rom000027
    );
  bloqueNave_Mrom_Color_rom0000251 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(0),
      I2 => bloqueVga_bloqueSyncV_p(2),
      I3 => bloqueVga_bloqueSyncV_p(1),
      O => bloqueNave_Mrom_Color_rom0000251_489
    );
  bloqueNave_Mrom_Color_rom000025_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => bloqueNave_Mrom_Color_rom0000251_489,
      S => bloqueVga_bloqueSyncV_p(4),
      O => bloqueNave_Mrom_Color_rom000025
    );
  bloqueMaquinaEstado_partidosGanados_not0001481 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I2 => bloqueMarcianos_Resultado_cmp_eq0000,
      I3 => bloqueMaquinaEstado_partidosGanados_not000118_254,
      O => bloqueMaquinaEstado_partidosGanados_not000148
    );
  bloqueMaquinaEstado_partidosGanados_not0001482 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      O => bloqueMaquinaEstado_partidosGanados_not0001481_256
    );
  bloqueMaquinaEstado_partidosGanados_not000148_f5 : MUXF5
    port map (
      I0 => bloqueMaquinaEstado_partidosGanados_not0001481_256,
      I1 => bloqueMaquinaEstado_partidosGanados_not000148,
      S => JuegoInt,
      O => bloqueMaquinaEstado_partidosGanados_not0001
    );
  bloqueMarcianos_fila_1_mux00001 : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueTempoMarcianos_EnableMarcianos_804,
      I1 => bloqueMarcianos_fila(0),
      I2 => bloqueMarcianos_fila(2),
      I3 => JuegoInt,
      O => bloqueMarcianos_fila_1_mux00001_400
    );
  bloqueMarcianos_fila_1_mux00002 : LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => bloqueTempoMarcianos_EnableMarcianos_804,
      I1 => bloqueMarcianos_fila(19),
      I2 => bloqueMarcianos_fila(0),
      I3 => JuegoInt,
      O => bloqueMarcianos_fila_1_mux00002_401
    );
  bloqueMarcianos_fila_1_mux0000_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_fila_1_mux00002_401,
      I1 => bloqueMarcianos_fila_1_mux00001_400,
      S => bloqueMarcianos_yComun(0),
      O => bloqueMarcianos_fila_1_mux0000
    );
  bloqueVga_bloqueRgbMux_gOut261 : LUT4
    generic map(
      INIT => X"4445"
    )
    port map (
      I0 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I3 => bloqueVga_bloqueSyncH_p(5),
      O => bloqueVga_bloqueRgbMux_gOut261_1234
    );
  bloqueVga_bloqueRgbMux_gOut262 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => bloqueVga_bloqueSyncH_p(5),
      I1 => bloqueMaquinaEstado_estadoActual_FSM_FFd2_242,
      I2 => bloqueMaquinaEstado_estadoActual_FSM_FFd3_244,
      I3 => bloqueMaquinaEstado_estadoActual_FSM_FFd1_238,
      O => bloqueVga_bloqueRgbMux_gOut262_1235
    );
  bloqueVga_bloqueRgbMux_gOut26_f5 : MUXF5
    port map (
      I0 => bloqueVga_bloqueRgbMux_gOut262_1235,
      I1 => bloqueVga_bloqueRgbMux_gOut261_1234,
      S => bloqueVga_bloqueSyncV_p(5),
      O => bloqueVga_bloqueRgbMux_gOut26
    );
  bloqueMarcianos_Tocado_and00011 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMarcianos_Mmux_varindex0002_6_f5_305,
      I1 => bloqueMarcianos_fila_8_cmp_ne000032_423,
      I2 => bloqueMarcianos_fila_8_cmp_ne000065_424,
      I3 => bloqueMarcianos_N0,
      O => bloqueMarcianos_Tocado_and00011_358
    );
  bloqueMarcianos_Tocado_and00012 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => bloqueMarcianos_N0,
      I1 => bloqueMarcianos_fila_8_cmp_ne000032_423,
      I2 => bloqueMarcianos_fila_8_cmp_ne000065_424,
      I3 => bloqueMarcianos_Mmux_varindex0002_5_f7_304,
      O => bloqueMarcianos_Tocado_and00012_359
    );
  bloqueMarcianos_Tocado_and0001_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Tocado_and00012_359,
      I1 => bloqueMarcianos_Tocado_and00011_358,
      S => bloqueBala_xBalaInt(4),
      O => bloqueMarcianos_Tocado_and0001
    );
  bloqueMarcianos_Mrom_Color_rom0000231 : LUT3
    generic map(
      INIT => X"46"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(1),
      I1 => bloqueVga_bloqueSyncV_p(3),
      I2 => bloqueVga_bloqueSyncV_p(2),
      O => bloqueMarcianos_Mrom_Color_rom0000231_324
    );
  bloqueMarcianos_Mrom_Color_rom0000232 : LUT4
    generic map(
      INIT => X"4140"
    )
    port map (
      I0 => bloqueVga_bloqueSyncV_p(3),
      I1 => bloqueVga_bloqueSyncV_p(1),
      I2 => bloqueVga_bloqueSyncV_p(0),
      I3 => bloqueVga_bloqueSyncV_p(2),
      O => bloqueMarcianos_Mrom_Color_rom0000232_325
    );
  bloqueMarcianos_Mrom_Color_rom000023_f5 : MUXF5
    port map (
      I0 => bloqueMarcianos_Mrom_Color_rom0000232_325,
      I1 => bloqueMarcianos_Mrom_Color_rom0000231_324,
      S => bloqueVga_bloqueSyncV_p(4),
      O => bloqueMarcianos_Mrom_Color_rom000023
    );

end Structure;

