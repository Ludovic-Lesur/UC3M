----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:52 10/26/2015 
-- Design Name: 
-- Module Name:    tablero - Behavioral 
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


entity formato is
    port(-- Maquina de estado
			ModoPantalla : in STD_LOGIC_VECTOR(2 downto 0) ;
			-- Marcianos
			xMarcianos : out STD_LOGIC_VECTOR (9 downto 0) ;
			yMarcianos : out STD_LOGIC_VECTOR (9 downto 0) ;
			colorMarcianos : in STD_LOGIC_VECTOR (2 downto 0) ;
			-- Nave
			xNave : out STD_LOGIC_VECTOR (9 downto 0) ;
			yNave : out STD_LOGIC_VECTOR (9 downto 0) ;
			colorNave : in STD_LOGIC_VECTOR (2 downto 0) ;
			-- Bala
			xBala : out STD_LOGIC_VECTOR (9 downto 0) ;
			yBala : out STD_LOGIC_VECTOR (9 downto 0) ;
			colorBala : in STD_LOGIC_VECTOR (2 downto 0) ;
			-- VGA
			X : in STD_LOGIC_VECTOR (9 downto 0) ;
         Y : in STD_LOGIC_VECTOR (9 downto 0) ;
			RGB : out STD_LOGIC_VECTOR (2 downto 0)) ;
end formato ;


architecture Behavioral of formato is

begin

	-- Marcianos
	xMarcianos <= X ;
	yMarcianos <= Y ;
	-- Nave
	xNave <= X ;
	yNave <= Y ;
	-- Bala
	xBala <= X ;
	yBala <= Y ;
	
	-- Proceso asíncrono que devuelve el color a pintar en una posición (X,Y) dada.
	process(ModoPantalla, x, y, colorMarcianos, colorNave, colorBala)
	begin
		RGB <= "000" ;
		case ModoPantalla is
		when "000" =>
			-- Tablero
			RGB(0) <= X(5) xor Y(5) ;
			RGB(1) <= X(5) xor Y(5) ;
			RGB(2) <= X(5) xor Y(5) ;
		when "001" =>
			-- Pantalla azul = hemos ganado 1 partido
			RGB <= "001" ;
		when "010" =>
			-- Pantalla roja = hemos perdido 1 partido
			RGB <= "100" ;
		when "011" =>
			-- Juego
			-- Los marcianos tienen la prioridad sobre la nave, y ella misma tiene prioridad sobre la bala
			if colorMarcianos/="000" then
				RGB <= colorMarcianos ;
			elsif colorNave/="000" then
				RGB <= colorNave ;
			elsif colorBala/="000" then
				RGB <= colorBala ;
			end if ;
		when "100" =>
			-- Pantalla verde = hemos ganado el juego entero
			RGB <= "010" ;
		when others =>
			-- Pantalla negra = espera
			RGB <= "000" ;
		end case ;
	end process ;
	
end Behavioral ;