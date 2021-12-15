----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:29:58 11/09/2015 
-- Design Name: 
-- Module Name:    bala - Behavioral 
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


entity bala is
    Port ( Clk : in  STD_LOGIC ;
           Reset : in  STD_LOGIC ;
           EnableBala : in  STD_LOGIC ;
           Disparo : in  STD_LOGIC ;
           X : in  STD_LOGIC_VECTOR (9 downto 0) ;
           Y : in  STD_LOGIC_VECTOR (9 downto 0) ;
           Color : out STD_LOGIC_VECTOR(2 downto 0) ;
			  -- Relación con el bloque "nave"
			  xNaveB : in integer range 0 to 19 ;
			  -- Relación con el bloque "marcianos"
			  xBalaM : out integer range 0 to 19 ;
			  yBalaM : out integer range 0 to 14 ;
			  Tocado : in STD_LOGIC ;
			  -- Señal que abilita el juego
			  Juego : in STD_LOGIC) ;
end bala ;


architecture Behavioral of bala is

	-- Posición de la bala
	signal xBalaInt : integer range 0 to 19 ;
	signal yBalaInt : integer range 0 to 14 ;
	
	-- 5 primeros bits de X y Y (posición en la matriz 20x15)
	signal xMSB : integer range 0 to 31 ;
	signal yMSB : integer range 0 to 31 ;
	-- 5 últimos bits de X y Y (posición precisa en un cuadrado de la matriz)
	signal xLSB : integer range 0 to 31 ;
	signal yLSB : integer range 0 to 31 ;
	
	-- Detector de flanco para el botón "Disparo"
	signal EnableDisparo : STD_LOGIC ;
	signal DisparoAnt : STD_LOGIC ;
	
	-- Dibujo de la bala
	constant colorBala : STD_LOGIC_VECTOR (2 downto 0) := "100" ;
	type Bala is array(31 downto 0) of std_logic_vector(31 downto 0) ;
	constant dibujoBala : Bala := ("00000000000000000000000000000000",
											 "00000000000000000000000000000000",
										    "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
										    "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
										    "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
										    "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
										    "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
										    "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000000000000000000000",
											 "00000000000000011000000000000000",
										    "00000000000001111110000000000000",
											 "00000000000011111111000000000000",
											 "00000000000111111111100000000000",
											 "00000000000011111111000000000000",
										    "00000000000001111110000000000000",
											 "00000000000000011000000000000000") ;
											 
begin

	-- Detector de flanco para el botón "Disparo"
	process(Clk, Reset)
	begin
		if Reset='1' then
			DisparoAnt <= '0' ;
		elsif Clk'event and Clk='1' then
			if EnableBala='1' then
				DisparoAnt <= Disparo ;
			end if ;
		end if ;
	end process ;
	EnableDisparo <= '1' when Disparo = '1' and DisparoAnt = '0' else '0' ;
	
	-- Gestión de la posición de la bala
	process(Clk, Reset)
		variable Inicial : STD_LOGIC ;
	begin
		if Reset='1' then
			yBalaInt <= 14 ;
			Inicial := '1' ;
		elsif Clk'event and Clk='1' then
			-- Si el juego está abilitado...
			if Juego='1' then
				-- Disparamos, luego tenemos que esperar el fin del disparo
				if EnableDisparo = '1' then
					Inicial := '0' ;
				end if ;
				-- Hemos tocado un marciano, podemos disparar de nuevo
				if Tocado='1' then
					Inicial := '1' ;
				end if ;
				-- Durante el disparo...
				if Inicial='0' then
					if yBalaInt>0 then
						if EnableBala='1' then
							yBalaInt <= yBalaInt-1 ;
						end if ;
					else
						-- La bala llega encima de la pantalla
						Inicial := '1' ;
					end if ;
				-- Si no estamos disparando, la bala sigue la nave
				else
					xBalaInt <= xNaveB ;
					yBalaInt <= 14 ;
				end if ;
			-- Si no estamos jugando, quedamos en el estado inicial
			else
				xBalaInt <= xNaveB ;
				yBalaInt <= 14 ;
				Inicial := '1' ;
			end if ;
		end if ;
	end process ;
	
	-- Relación con el bloque "marcianos"
	xBalaM <= xBalaInt ;
	yBalaM <= yBalaInt ;
	
	xMSB <= conv_integer(X(9 downto 5)) ;
	xLSB <= conv_integer(X(4 downto 0)) ;
	yMSB <= conv_integer(Y(9 downto 5)) ;
	yLSB <= conv_integer(Y(4 downto 0)) ;

	Color <= colorBala when xMSB=xBalaInt and yMSB=yBalaInt and dibujoBala(yLSB)(xLSB)='1' else "000" ;
	
end Behavioral ;

