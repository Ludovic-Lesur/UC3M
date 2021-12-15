----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:29:57 11/16/2015 
-- Design Name: 
-- Module Name:    maquinaEstado - Behavioral 
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
use work.partido.ALL ;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL ;


entity maquinaEstado is
	port(Clk : in STD_LOGIC ;
		  Reset : in STD_LOGIC ;
		  Test : in STD_LOGIC ;
		  Inicio : in STD_LOGIC ;
		  -- "00" = ganado
		  -- "01" = perdido
		  -- "10" = jugando
		  Resultado : in STD_LOGIC_VECTOR(1 downto 0) ;
		  -- "000" = tablero
		  -- "001" = pantalla azul = hemos ganado 1 partido
		  -- "010" = pantalla roja = hemos perdido 1 partido
		  -- "011" = juego
		  -- "100" = pantalla verde = hemos ganado el juego entero
		  -- "101" = pantalla negra
		  ModoPantalla : out STD_LOGIC_VECTOR(2 downto 0) ;
		  -- Para cambiar la velocidad de los marcianos a cada partido
		  Nivel : out integer range 1 to NumeroPartidos ;
		  -- Señal que abilita el juego
		  Juego : out STD_LOGIC) ;
end maquinaEstado ;


architecture Behavioral of maquinaEstado is

-- Detector de flanco para el botón "Inicio"
signal InicioAnt : STD_LOGIC ;
signal Enable_Inicio : STD_LOGIC ;

-- Maquina de estado
type estado is (tablero, espera, jugando, ganado, perdido, juegoGanado) ;
signal estadoActual, estadoSiguiente : estado ;

-- Número de partidos ganados
signal partidosGanados : integer range 0 to NumeroPartidos := 1 ;

begin

	-- Detector de flanco para el botón "Inicio"
	process(Clk, Reset)
	begin
		if Reset='1' then
			InicioAnt <= '0' ;
		elsif Clk'event and Clk='1' then
			InicioAnt <= Inicio ;
		end if ;
	end process ;
	Enable_Inicio <= '1' when Inicio='1' and InicioAnt='0' else '0' ;
	
	-- Maquina de estado (parte secuencial)
	process(Clk, Reset)
	begin
		if Reset='1' then
			estadoActual <= espera ;
		elsif Clk'event and Clk='1' then
			estadoActual <= estadoSiguiente ;
		end if ;
	end process ;
	
	-- Maquina de estado (parte combinacional)
	process(estadoActual, Enable_Inicio, Test, Resultado, partidosGanados)
	begin
		case EstadoActual is
		when tablero =>
			if Test = '0' then
				EstadoSiguiente <= espera ;
			else
				EstadoSiguiente <= tablero ;
			end if ;
		when espera =>
			if Test='1' then
				EstadoSiguiente <= tablero ;
			elsif Enable_Inicio='1' then
				EstadoSiguiente <= jugando ;
			else
				EstadoSiguiente <= espera ;
			end if ;
		when jugando =>
			if Test='1' then
				EstadoSiguiente <= tablero ;
			-- Todavía no hemos ganado bastante veces
			elsif Resultado="00" and partidosGanados<NumeroPartidos then
				EstadoSiguiente <= ganado ;
			-- Hemos ganado el juego entero
			elsif Resultado="00" and partidosGanados=NumeroPartidos then
				EstadoSiguiente <= juegoGanado ;
			elsif Resultado="01" then
				EstadoSiguiente <= perdido ;
			else
				EstadoSiguiente <= jugando ;
			end if ;
		when ganado =>
			if Test='1' then
				EstadoSiguiente <= tablero ;
			elsif Enable_Inicio='1' then
				EstadoSiguiente <= espera ;
			else
				EstadoSiguiente <= ganado ;
			end if ;
		when perdido =>
			if Test='1' then
				EstadoSiguiente <= tablero ;
			elsif Enable_Inicio='1' then
				EstadoSiguiente <= espera ;
			else
				EstadoSiguiente <= perdido ;
			end if ;
		when juegoGanado =>
			if Test='1' then
				EstadoSiguiente <= tablero ;
			elsif Enable_Inicio='1' then
				EstadoSiguiente <= espera ;
			else
				EstadoSiguiente <= juegoGanado ;
			end if ;
		when others =>
			EstadoSiguiente <= espera ;
		end case ;
	end process ;
	Juego <= '1' when EstadoActual=jugando else '0' ;
	ModoPantalla <= "000" when estadoActual=tablero else "001" when estadoActual=ganado else "010" when estadoActual=perdido else "011" when estadoActual=jugando else "100" when estadoActual=juegoGanado else "101" ;
	
	-- Gestión del nivel (relacionado con el bloque "marcianos")
	process(Clk, Reset)
	begin
		if Reset='1' then
			partidosGanados <= 1 ;
		elsif Clk'event and Clk='1' then
			if estadoActual=jugando and estadoSiguiente=ganado then
				partidosGanados <= partidosGanados+1 ;
			elsif estadoActual=juegoGanado then
				partidosGanados <= 1 ;
			end if ;
		end if ;
	end process ;
	Nivel <= partidosGanados ;

end Behavioral ;

