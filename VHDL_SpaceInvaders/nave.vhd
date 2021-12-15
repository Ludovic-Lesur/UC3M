----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:04:28 11/03/2015 
-- Design Name: 
-- Module Name:    nave - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE ;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.STD_LOGIC_ARITH.ALL ;
use IEEE.STD_LOGIC_UNSIGNED.ALL ; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL ;


entity nave is
	Port(Clk : in STD_LOGIC ;
        Reset : in STD_LOGIC ;
		  EnableNave : in STD_LOGIC ;
		  Izquierda : in STD_LOGIC ;
		  Derecha : in STD_LOGIC ;
		  X : in STD_LOGIC_VECTOR (9 downto 0) ;
        Y : in STD_LOGIC_VECTOR (9 downto 0) ;
		  Color : out STD_LOGIC_VECTOR (2 downto 0) ;
		  -- Relación con el bloque de la bala
		  xNaveB : out integer range 0 to 19 ;
		  -- Señal que abilita el juego
		  Juego : in STD_LOGIC) ;
end nave ;


architecture Behavioral of nave is

	-- Posición de la nave (siempre está abajo de la pantalla)
	constant yNave : integer range 0 to 14 := 14 ;
	signal xNave : integer range 0 to 19 ;
	
	-- 5 primeros bits de X y Y (posición en la matriz 20x15)
	signal xMSB : integer range 0 to 31 ;
	signal yMSB : integer range 0 to 31 ;
	-- 5 últimos bits de X y Y (posición precisa en un cuadrado de la matriz)
	signal xLSB : integer range 0 to 31 ;
	signal yLSB : integer range 0 to 31 ;
	
	-- Detector de flanco para el botón "Izquierda"
	signal IzquierdaAnt : STD_LOGIC ;
	signal EnableIzquierda : STD_LOGIC ;
	-- Detector de flanco para el botón "Derecha"
	signal DerechaAnt : STD_LOGIC ;
	signal EnableDerecha : STD_LOGIC ;
	
	-- Dibujo de la nave
	constant colorNave : STD_LOGIC_VECTOR (2 downto 0) := "111" ;
	type Nave is array(0 to 31) of std_logic_vector(0 to 31) ;
	constant dibujoNave : Nave := ("00000000000000011000000000000000",
											 "00000000000000011000000000000000",
										    "00000000000000011000000000000000",
											 "00000000000000011000000000000000",
											 "00000000000000011000000000000000",
											 "00000000000000111100000000000000",
											 "00000000000000111100000000000000",
											 "00000000000000111100000000000000",
											 "00000000000001111110000000000000",
											 "00000000000001111110000000000000",
											 "00000000000001111110000000000000",
											 "00000000000011111111000000000000",
											 "00000000000011111111000000000000",
											 "00000001000111111111100010000000",
											 "00000001001111111111110010000000",
											 "00000001011111111111111010000000",
											 "00000001111111111111111110000000",
											 "00000111111111111111111111100000",
											 "00011111111111111111111111111000",
											 "11111111111111111111111111111111",
											 "11111111111111111111111111111111",
											 "11111111111111111111111111111111",
											 "00000110000111111111100001100000",
											 "00000110000111111111100001100000",
											 "00000110000111111111100001100000",
											 "00000000000111111111100000000000",
											 "00000000000111111111100000000000",
											 "00000000000000011000000000000000",
											 "00000000000000011000000000000000",
											 "00000000000000011000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000") ;
											 
begin

	-- Detectores de flanco para los botónes "Izquierda" y "Derecha"
	process(Clk, Reset)
	begin
		if Reset='1' then
			IzquierdaAnt <= '0' ;
			DerechaAnt <= '0' ;
		elsif Clk'event and Clk='1' then
			if EnableNave='1' then
				IzquierdaAnt <= Izquierda ;
				DerechaAnt <= Derecha ;
			end if ;
		end if ;
	end process ;
	EnableIzquierda <= '1' when Izquierda='1' and IzquierdaAnt='0' else '0' ;
	EnableDerecha <= '1' when Derecha='1' and DerechaAnt='0' else '0' ;
	
	-- Gestión de la posición de la nave
	process(Clk, Reset)
	begin
		if Reset='1' then
			-- Al principio la nave está en el medio de la pantalla
			xNave <= 10 ;
		elsif Clk'event and Clk='1' then
			-- Si el juego está abilitado...
			if Juego='1' then
				if EnableNave='1' then
					if EnableIzquierda='1' then
						-- Si no estamos ya en el borde de izquierda
						if xNave>0 then
							xNave <= xNave-1 ;
						end if ;
					elsif EnableDerecha='1' then
						-- Si no estamos ya en el borde de derecha
						if xNave<19 then
							xNave <= xNave+1 ;
						end if ;
					end if ;
				end if ;
			-- Si no estamos jugando, quedamos en el estado inicial
			else
				xNave <= 10 ;
			end if ;
		end if ;
	end process ;
	
	xMSB <= conv_integer(X(9 downto 5)) ;
	xLSB <= conv_integer(X(4 downto 0)) ;
	yMSB <= conv_integer(Y(9 downto 5)) ;
	yLSB <= conv_integer(Y(4 downto 0)) ;
	
	xNaveB <= xNave ;
	Color <= colorNave when xMSB=xNave and yMSB=yNave and dibujoNave(yLSB)(xLSB)='1' else "000" ;
	
end Behavioral ;