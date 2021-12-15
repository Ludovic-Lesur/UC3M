----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:17:47 10/27/2015 
-- Design Name: 
-- Module Name:    spaceInv - Behavioral 
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


entity spaceInv is
    port(Clk : in STD_LOGIC ;
         Reset : in STD_LOGIC ;
         Inicio : in STD_LOGIC ;
	  	   Test : in STD_LOGIC ;
         Izquierda : in STD_LOGIC ;
         Derecha : in STD_LOGIC ;
         Disparo : in STD_LOGIC ;
         HSync : out STD_LOGIC ;
         VSync : out STD_LOGIC ;
         R : out STD_LOGIC ;
         G : out STD_LOGIC ;
         B : out STD_LOGIC) ;
end spaceInv ;


architecture Behavioral of spaceInv is

	-- Declaracion del bloque de control del monitor VGA
	component vga
		port(Clk : in STD_LOGIC ;
			  Reset : in STD_LOGIC ;
			  RGB : in STD_LOGIC_VECTOR (2 downto 0) ;
			  X : out STD_LOGIC_VECTOR (9 downto 0) ;
			  Y : out STD_LOGIC_VECTOR (9 downto 0) ;
			  HSync : out STD_LOGIC ;
			  VSync : out STD_LOGIC ;
			  R : out STD_LOGIC ;
			  G : out STD_LOGIC ;
			  B : out STD_LOGIC) ;
	end component ;
	-- Señales internas
	signal rgbInt : STD_LOGIC_VECTOR(2 downto 0) ;
	signal xInt : STD_LOGIC_VECTOR(9 downto 0) ;
	signal yInt : STD_LOGIC_VECTOR(9 downto 0) ;
	
	-- Declaracion del bloque que maneja el formato de la pantalla VGA
	component formato
		 port(-- Maquina de estado
				modoPantalla : in STD_LOGIC_VECTOR(2 downto 0) ;
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
				RGB : out STD_LOGIC_VECTOR (2 downto 0) ;
				X : in STD_LOGIC_VECTOR (9 downto 0) ;
				Y : in STD_LOGIC_VECTOR (9 downto 0)) ;
	end component ;
	
	-- Declaracion del bloque de control de los marcianos
	component marcianos
		port (Clk : in STD_LOGIC ;
          Reset : in STD_LOGIC ;
			 EnableMarcianos : in STD_LOGIC ;
          X : in STD_LOGIC_VECTOR (9 downto 0) ;
          Y : in STD_LOGIC_VECTOR (9 downto 0) ;
			 Color : out STD_LOGIC_VECTOR (2 downto 0) ;
			 -- Relación con el bloque bala
			 xBalaM : in integer range 0 to 19 ;
			 yBalaM : in integer range 0 to 14 ;
			 Tocado : out STD_LOGIC ;
			 -- Relación con la maquina de estado
			 Resultado : out STD_LOGIC_VECTOR(1 downto 0) ;
			 -- Señal que abilita el juego
			 Juego : in STD_LOGIC) ;
	end component ;
	-- Señales internas
	signal xMarcianosInt : STD_LOGIC_VECTOR(9 downto 0) ;
	signal yMarcianosInt : STD_LOGIC_VECTOR(9 downto 0) ;
	signal colorMarcianosInt : STD_LOGIC_VECTOR(2 downto 0) ;
	signal TocadoInt : STD_LOGIC ;
	signal JuegoInt : STD_LOGIC ;
	
	-- Declaracion del bloque de temporizador de los marcianos
	component tempoMarcianos
		port(Clk : in STD_LOGIC ;
			  Reset : in STD_LOGIC ;
			  EnableMarcianos : out STD_LOGIC ;
			  Nivel : in integer range 0 to NumeroPartidos) ;
	end component ;
	-- Señales internas
	signal EnableMarcianosInt : STD_LOGIC ;
	
	-- Declaracion del bloque de control de la nave
	component nave
		port(Clk : in STD_LOGIC ;
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
	end component ;
	-- Señales internas
	signal xNaveInt : STD_LOGIC_VECTOR(9 downto 0) ;
	signal yNaveInt : STD_LOGIC_VECTOR(9 downto 0) ;
	signal colorNaveInt : STD_LOGIC_VECTOR(2 downto 0) ;
	
	-- Declaracion del bloque de temporizador de la nave
	component tempoNave
		port(Clk : in STD_LOGIC ;
			  Reset : in STD_LOGIC ;
			  EnableNave : out STD_LOGIC) ;
	end component ;
	-- Señales internas
	signal EnableNaveInt : STD_LOGIC ;
	
	-- Declaracion del bloque de control de la bala
	component bala
		port(Clk : in  STD_LOGIC ;
           Reset : in  STD_LOGIC ;
           EnableBala : in  STD_LOGIC ;
           Disparo : in  STD_LOGIC ;
			  xNaveB : in integer range 0 to 19 ;
           X : in  STD_LOGIC_VECTOR (9 downto 0);
           Y : in  STD_LOGIC_VECTOR (9 downto 0);
           Color : out STD_LOGIC_VECTOR(2 downto 0) ;
			  -- Relación con el bloque de marcianos
			  xBalaM : out integer range 0 to 19 ;
			  yBalaM : out integer range 0 to 14 ;
			  Tocado : in STD_LOGIC ;
			  -- Señal que abilita el juego
			  Juego : in STD_LOGIC) ;
	end component ;
	-- Señales internas
	signal xBalaInt : STD_LOGIC_VECTOR(9 downto 0) ;
	signal yBalaInt : STD_LOGIC_VECTOR(9 downto 0) ;
	signal colorBalaInt : STD_LOGIC_VECTOR(2 downto 0) ;
	signal xNaveBInt : integer range 0 to 19 ;
	signal xBalaMInt : integer range 0 to 19 ;
	signal yBalaMInt : integer range 0 to 14 ;
	
	-- Declaracion del bloque de temporizador de la nave
	component tempoBala
		port(Clk : in STD_LOGIC ;
        Reset : in STD_LOGIC ;
        EnableBala : out STD_LOGIC) ;
	end component ;
	-- Señales internas
	signal EnableBalaInt : STD_LOGIC ;
	
	-- Declaracion de temporizador del boton "Inicio"
	component tempoInicio
		generic (tiempoMS : integer := 100) ;
		port(Clk : in STD_LOGIC ;
			  Reset : in STD_LOGIC ;
           BotonInicio : in STD_LOGIC ;
		     Inicio : out STD_LOGIC) ;
	end component ;
	-- Señales internas
	signal InicioInt : STD_LOGIC ;
	
	-- Declaracion de la maquina de estado
	component maquinaEstado
		generic(NumeroPartidos : integer := 8) ;
		port(Clk : in STD_LOGIC ;
			  Reset : in STD_LOGIC ;
		     Test : in STD_LOGIC ;
		     Inicio : in STD_LOGIC ;
		     Resultado : in STD_LOGIC_VECTOR(1 downto 0) ;
		     -- "000" = tablero
		     -- "001" = pantalla verde
		     -- "010" = pantalla roja
		     -- "011" = juego
		     -- "1XX" = pantalla negra
		     modoPantalla : out STD_LOGIC_VECTOR(2 downto 0) ;
		     -- Para cambiar la velocidad de los marcianos
		     Nivel : out integer range 0 to NumeroPartidos ;
			  -- Señal que abilita el juego
			  Juego : out STD_LOGIC) ;
	end component ;
	-- Señales internas
	signal NivelInt : integer range 0 to NumeroPartidos ;
	signal ResultadoInt : STD_LOGIC_VECTOR(1 downto 0) ;
	signal modoPantallaInt : STD_LOGIC_VECTOR(2 downto 0) ;
	
begin

	bloqueVga : vga port map(Clk => Clk,
									 Reset => Reset,
									 RGB => rgbInt,
									 X => xInt,
									 Y => yInt,
									 HSync => HSync,
									 VSync => VSync,
									 R => R,
									 G => G,
									 B => B) ;
									 
	bloqueMarcianos : marcianos port map(Clk => Clk,
													 Reset => Reset,
													 EnableMarcianos => EnableMarcianosInt,
													 X => xMarcianosInt,
													 Y => yMarcianosInt,
													 Color => colorMarcianosInt,
													 xBalaM => xBalaMInt,
													 yBalaM => yBalaMInt,
													 Tocado => TocadoInt,
													 Resultado => ResultadoInt,
													 Juego => JuegoInt) ;  
													 
	bloqueFormato : formato port map(X => xInt,
												Y => yInt,
												modoPantalla => modoPantallaInt,
												RGB => rgbInt,
												xMarcianos => xMarcianosInt,
												yMarcianos => yMarcianosInt,
												colorMarcianos => colorMarcianosInt,
												xNave => xNaveInt,
												yNave => yNaveInt,
												colorNave => colorNaveInt,
												xBala => xBalaInt,
												yBala => yBalaInt,
												colorBala => colorBalaInt) ;
												
	bloqueTempoMarcianos : tempoMarcianos port map(Clk => Clk,
																  Reset => Reset,
																  EnableMarcianos => EnableMarcianosInt,
																  Nivel => NivelInt) ;
																  
	bloqueNave : nave port map(Clk => Clk,
										Reset => Reset,
										EnableNave => EnableNaveInt,
										Izquierda => Izquierda,
										Derecha => Derecha,
										X => xNaveInt,
										Y => yNaveInt,
										xNaveB => xNaveBInt,
										Color => colorNaveInt,
										Juego => JuegoInt) ;
										
	bloqueTempoNave : tempoNave port map(Clk => Clk,
													 Reset => Reset,
													 EnableNave => EnableNaveInt) ;
													 
	bloqueBala : bala port map(Clk => Clk,
										Reset => Reset,
										EnableBala => EnableBalaInt,
										Disparo => Disparo,
										X => xBalaInt,
										Y => yBalaInt,
										xNaveB => xNaveBInt,
										Color => colorBalaInt,
										xBalaM => xBalaMInt,
										yBalaM => yBalaMInt,
										Tocado => TocadoInt,
										Juego => JuegoInt) ;
										
	bloqueTempoBala : tempoBala port map(Clk => Clk,
													 Reset => Reset,
													 EnableBala => EnableBalaInt) ;
													 
	bloqueTempoInicio : tempoInicio port map(Clk => Clk,
														  Reset => Reset,
														  BotonInicio => Inicio,
														  Inicio => InicioInt) ;
													 
	bloqueMaquinaEstado : maquinaEstado port map(Clk => Clk,
																Reset => Reset,
																Test => Test,
																Inicio => InicioInt,
																Resultado => ResultadoInt,
																modoPantalla => modoPantallaInt,
																Nivel => NivelInt,
																Juego => JuegoInt) ;
end Behavioral ;