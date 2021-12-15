----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:18 11/02/2015 
-- Design Name: 
-- Module Name:    marcianos - Behavioral 
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


entity marcianos is
    port (Clk : in STD_LOGIC ;
          Reset : in STD_LOGIC ;
			 EnableMarcianos : in STD_LOGIC ;
          X : in STD_LOGIC_VECTOR (9 downto 0) ;
          Y : in STD_LOGIC_VECTOR (9 downto 0) ;
			 Color : out STD_LOGIC_VECTOR (2 downto 0) ;
			 -- Relación con el bloque "bala"
			 xBalaM : in integer range 0 to 19 ;
			 yBalaM : in integer range 0 to 14 ;
			 Tocado : out STD_LOGIC ;
			 -- Relación con la maquina de estado
			 Resultado : out STD_LOGIC_VECTOR(1 downto 0) ;
			 -- Señal que abilita el juego
			 Juego : in STD_LOGIC) ;
end marcianos ;

architecture Behavioral of marcianos is

	-- Tabla que representa la presencia de los marcianos en una línea
	signal fila : STD_LOGIC_VECTOR (0 to 19) ;
	
	-- Coordenada vertical de la fila de marcianos
	signal yComun : integer range 0 to 14 ;
	
	-- 5 primeros bits de X y Y (posición en la matriz 20x15)
	signal xMSB : integer range 0 to 31 ;
	signal yMSB : integer range 0 to 31 ;
	-- 5 últimos bits de X y Y (posición precisa en un cuadrado de la matriz)
	signal xLSB : integer range 0 to 31 ;
	signal yLSB : integer range 0 to 31 ;
	
	-- Dibujo de un marciano
	constant colorMarciano : STD_LOGIC_VECTOR (2 downto 0) := "001" ;
	type Marciano is array(0 to 31) of std_logic_vector(0 to 31) ;
	constant dibujoMarciano : Marciano := ("00000000000000000000000000000000",
														"00000000000000000000000000000000",
												      "00000000000000000000000000000000",
														"00000001111111111111111110000000",
														"00000111100000000000000111100000",
														"00001100000000000000000000110000",
														"00011000000000000000000000011000",
														"00011000111100000000111100011000",
														"00011000010100000000101000011000",
														"00011000011110000001111000011000",
														"00011000000000000000000000011000",
														"00011000000000000000000000011000",
														"00011000000000000000000000011000",
														"00011000000000011000000000011000",
														"00011000000000000000000000011000",
														"00011000000000000000000000011000",
														"00011000000000000000000000011000",
														"00011000000000000000000000011000",
														"00011000110000000000001100011000",
														"00011001100000000000000110011000",
														"00011011000000000000000011011000",
														"00011000000000000000000000011000",
														"00011000000000000000000000011000",
														"00011100000000000000000000111000",
														"00001111111111111111111111110000",
														"00000111111111111111111111100000",
														"00000000010000000000001000000000",
														"00000000010000000000001000000000",
														"00000000111000000000011100000000",
														"00000001111100000000111110000000",
														"00000000000000000000000000000000",
														"00000000000000000000000000000000") ;
														
begin

	process(Clk, Reset)
	begin
		if Reset='1' then
			-- Al principio tenemos 10 marcianos en la esquina alta izquierda de la pantalla
			fila <= "11111111110000000000" ;
			yComun <= 0 ;
		elsif Clk'event and Clk='1' then
			-- Si el juego está abilitado...
			if Juego='1' then
				-- Una bala está chocando un marciano
				if fila(xBalaM)='1' and yComun=yBalaM and yBalaM/=13 then
					-- Borramos el marciano
					fila(xBalaM) <= '0' ;
					Tocado <= '1' ;
				else
					Tocado <= '0' ;
				end if ;
				if EnableMarcianos='1' then
					-- Desplazamiento de los marcianos
					if yComun mod 2 = 0 then
						if fila(19)='0' then
							fila(1 to 19) <= fila(0 to 18) ;
							fila(0) <= '0' ;
						else
							yComun <= yComun+1 ;
						end if ;
					elsif fila(0)='0' then
							fila(0 to 18) <= fila(1 to 19) ;
							fila(19) <= '0' ;
					else
							yComun <= yComun+1 ;
					end if ;
				end if ;
			-- Si no estamos jugando, quedamos en el estado inicial
			else
				fila <= "11111111110000000000" ;
				yComun <= 0 ;
			end if ;
		end if ;
	end process ;
	
	xMSB <= conv_integer(X(9 downto 5)) ;
	xLSB <= conv_integer(X(4 downto 0)) ;
	yMSB <= conv_integer(Y(9 downto 5)) ;
	yLSB <= conv_integer(Y(4 downto 0)) ;
	
	Color <= colorMarciano when fila(xMSB)='1' and yMSB=yComun and dibujoMarciano(yLSB)(xLSB)='1' else "000" ;
	Resultado <= "00" when fila="00000000000000000000" else "01" when yComun=14 else "10" ;
  
end Behavioral ;

