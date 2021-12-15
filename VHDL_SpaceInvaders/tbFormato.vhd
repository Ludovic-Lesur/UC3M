--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:22:26 11/26/2015
-- Design Name:   
-- Module Name:   C:/Users/l012g202.AIG.000/Desktop/espacio/tbFormato.vhd
-- Project Name:  espacio
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: formato
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

library IEEE ;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.STD_LOGIC_ARITH.ALL ;
use IEEE.STD_LOGIC_UNSIGNED.ALL ; 
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL ;
 
ENTITY tbFormato IS
END tbFormato;
 
ARCHITECTURE behavior OF tbFormato IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT formato
    PORT(
         X : IN  std_logic_vector(9 downto 0);
         Y : IN  std_logic_vector(9 downto 0);
         ModoPantalla : IN  std_logic_vector(2 downto 0);
         xMarcianos : OUT  std_logic_vector(9 downto 0);
         yMarcianos : OUT  std_logic_vector(9 downto 0);
         colorMarcianos : IN  std_logic_vector(2 downto 0);
         xNave : OUT  std_logic_vector(9 downto 0);
         yNave : OUT  std_logic_vector(9 downto 0);
         colorNave : IN  std_logic_vector(2 downto 0);
         xBala : OUT  std_logic_vector(9 downto 0);
         yBala : OUT  std_logic_vector(9 downto 0);
         colorBala : IN  std_logic_vector(2 downto 0);
         RGB : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(9 downto 0) := (others => '0');
   signal Y : std_logic_vector(9 downto 0) := (others => '0');
   signal ModoPantalla : std_logic_vector(2 downto 0) := (others => '0');
   signal colorMarcianos : std_logic_vector(2 downto 0) := (others => '0');
   signal colorNave : std_logic_vector(2 downto 0) := (others => '0');
   signal colorBala : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal xMarcianos : std_logic_vector(9 downto 0);
   signal yMarcianos : std_logic_vector(9 downto 0);
   signal xNave : std_logic_vector(9 downto 0);
   signal yNave : std_logic_vector(9 downto 0);
   signal xBala : std_logic_vector(9 downto 0);
   signal yBala : std_logic_vector(9 downto 0);
   signal RGB : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: formato PORT MAP (
          X => X,
          Y => Y,
          ModoPantalla => ModoPantalla,
          xMarcianos => xMarcianos,
          yMarcianos => yMarcianos,
          colorMarcianos => colorMarcianos,
          xNave => xNave,
          yNave => yNave,
          colorNave => colorNave,
          xBala => xBala,
          yBala => yBala,
          colorBala => colorBala,
          RGB => RGB
        );

   -- Stimulus process
   stim_proc: process
		variable varX : std_logic_vector(9 downto 0) := "0000000000" ;
   begin
		-- insert stimulus here
		-- Duración de la simulación: 1µs
		
		-- Prueba del tablero
		ModoPantalla <= "000" ;
		X <= "0000000000" ; -- X=0
		Y <= "0000000000" ; -- Y=0
		wait for 1 ns ;
		for i in 1 to 200 loop
			varX := varX+'1' ;
			X <= varX ;
			wait for 1 ns ;
		end loop ;
		-- La señal "RGB" se pone alternativamente a "000" (negro) y "111" blanco.
		-- Ocurre entre t=0ns y t=200ns
		
		wait for 49 ns ;
		
		-- Prueba de la pantalla azul
		ModoPantalla <= "001" ;
		-- La señal "RGB" se pone a "001"
		-- Ocurre a t=250ns
		
		wait for 50 ns ;
		
      -- Prueba de la pantalla roja
		ModoPantalla <= "010" ;
		-- La señal "RGB" se pone a "100"
		-- Ocurre a t=300ns

		wait for 50 ns ;
		
      -- Prueba de la pantalla verde
		ModoPantalla <= "100" ;
		-- La señal "RGB" se pone a "010"
		-- Ocurre a t=350ns
		
		wait for 50 ns ;
		
      -- Prueba de la pantalla negra
		ModoPantalla <= "101" ;
		-- La señal "RGB" se pone a "000"
		-- Ocurre a t=400ns
		
		wait for 50 ns ;
		
      -- Prueba del juego
		ModoPantalla <= "011" ;
		wait for 50 ns ;
		-- Durante el juego, tenemos que chequear la jerarquía de los elementos mostrados en la pantalla:
		-- Los marcianos tienen la prioridad sobre la nave, y ella misma tiene la prioridad sobre la bala.
		-- Si en un punto dado, hay la bala...
		colorBala <= "100" ;
		wait for 50 ns ;
		-- La señal "RGB" se pone con el color de la bala "100"
		-- Ocurre a t=500ns
		-- Si añadimos la nave en el mismo punto...
		colorNave <= "111" ;
		wait for 50 ns ;
		-- La señal "RGB" se pone con el color de la nave "111" porque tiene la prioridad
		-- Ocurre a t=550ns
		-- Si añadimos un marciano en el mismo punto...
		colorMarcianos <= "001" ;
		wait for 50 ns ;
		-- La señal "RGB" se pone con el color del marciano "001" porque tiene la prioridad
		-- Ocurre a t=600ns
		
      wait ;
   end process ;
END ;
