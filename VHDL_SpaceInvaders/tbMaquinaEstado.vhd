--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:50:58 11/28/2015
-- Design Name:   
-- Module Name:   C:/Users/Ludovic/Desktop/espacio/tbMaquinaEstado.vhd
-- Project Name:  espacio
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: maquinaEstado
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------

LIBRARY ieee ;
USE ieee.std_logic_1164.ALL ;
use work.partido.ALL ;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tbMaquinaEstado IS
END tbMaquinaEstado;
 
ARCHITECTURE behavior OF tbMaquinaEstado IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT maquinaEstado
    PORT(
         Clk : IN  std_logic;
			Reset: IN  std_logic;
         Test : IN  std_logic;
         Inicio : IN  std_logic;
         Resultado : IN  std_logic_vector(1 downto 0);
         ModoPantalla : OUT  std_logic_vector(2 downto 0);
			Nivel : OUT integer range 0 to NumeroPartidos;
			Juego : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
	signal Reset : std_logic := '0' ;
   signal Test : std_logic := '0';
   signal Inicio : std_logic := '0';
   signal Resultado : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal ModoPantalla : std_logic_vector(2 downto 0);
	signal Nivel : integer range 0 to NumeroPartidos;
	signal Juego : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: maquinaEstado PORT MAP (
          Clk => Clk,
			 Reset => Reset,
          Test => Test,
          Inicio => Inicio,
          Resultado => Resultado,
          ModoPantalla => ModoPantalla,
			 Nivel => Nivel,
			 Juego => Juego
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0' ;
		wait for Clk_period/2 ;
		Clk <= '1' ;
		wait for Clk_period/2 ;
   end process ;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset
		Resultado <= "10" ;
		Reset <= '1' ;
		wait for Clk_period*10 ;
		Reset <= '0' ;
		wait for Clk_period*10 ;
		
		-- insert stimulus here
		-- Duración de la simulación: 1.5µs
		
      Test <= '1' ;
		-- Mientras el botón "Test" está presionado, la señal interna EstadoActual es igual a "tablero"
		-- Ocurre a t=200ns
      wait for Clk_period*10 ;
		Test <= '0' ;
		-- Cuándo lo desapretamos, pasamos al estado "espera"
		-- Ocurre a t=300ns
      wait for Clk_period*10 ;
		
		-- Empezamos a jugar presionando el botón "Inicio"
		-- Ocurre a t=400ns
		Inicio <= '1' ;
		Resultado <= "10" ;
		wait for Clk_period ;
		Inicio <= '0' ;
		wait for Clk_period*10 ;
		
		-- Hemos perdido el primer partido
		-- Ocurre a t=510ns
		Resultado <= "01" ;
		wait for Clk_period*10 ;
		
		-- Tenemos que presionar el botón "Inicio" una primera vez para volver en el estado "espera"...
		-- Ocurre a t=610ns
		Inicio <= '1' ;
		wait for Clk_period ;
		Inicio <= '0' ;
		wait for Clk_period ;
		-- ... y una segunda vez para empezar el segundo partido
		-- Ocurre a t=630ns
		Inicio <= '1' ;
		Resultado <= "10" ;
		wait for Clk_period ;
		Inicio <= '0' ;
		wait for Clk_period*10 ;
		
		-- Hemos ganado el segundo partido
		-- Ocurre a t=740ns
		Resultado <= "00" ;
		wait for Clk_period*10 ;
		
		-- Tenemos que presionar el botón "Inicio" una primera vez para volver en el estado "espera"...
		-- Ocurre a t=840ns
		Inicio <= '1' ;
		wait for Clk_period ;
		Inicio <= '0' ;
		wait for Clk_period ;
		-- ... y una segunda vez para empezar el tercer partido
		-- Ocurre a t=860ns
		Inicio <= '1' ;
		Resultado <= "10" ;
		wait for Clk_period ;
		Inicio <= '0' ;
		wait for Clk_period*5 ;
		
		-- Si presionamos el botón "Test" mientras estamos jugando, volvemos al tablero
		-- Ocurre a t=920ns
		Test <= '1' ;
		wait for Clk_period*10 ;
		Test <= '0' ;
		wait for Clk_period*5 ;
		-- Cuándo lo desapretamos, volvemos al estado "espera"
		-- Ocurre a t=1020ns
		
		-- Notamos también que la señal ModoPantalla se actualiza en continuo según el estado actual.
		
      wait ;
   end process ;
END ;
