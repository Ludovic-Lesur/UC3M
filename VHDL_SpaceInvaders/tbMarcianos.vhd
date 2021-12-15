--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:29:42 11/26/2015
-- Design Name:   
-- Module Name:   C:/Users/l012g202.AIG.000/Desktop/espacio/tbMarcianos.vhd
-- Project Name:  espacio
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: marcianos
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tbMarcianos IS
END tbMarcianos;
 
ARCHITECTURE behavior OF tbMarcianos IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT marcianos
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         EnableMarcianos : IN  std_logic;
         X : IN  std_logic_vector(9 downto 0) ;
         Y : IN  std_logic_vector(9 downto 0) ;
         Color : OUT  std_logic_vector(2 downto 0);
         xBalaM : IN integer range 0 to 19 ;
         yBalaM : IN integer range 0 to 14 ;
         Tocado : OUT  std_logic;
         Resultado : OUT  std_logic_vector(1 downto 0);
			Juego : IN std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal EnableMarcianos : std_logic := '0';
   signal X : std_logic_vector(9 downto 0) := (others => '0');
   signal Y : std_logic_vector(9 downto 0) := (others => '0');
   signal xBalaM : integer range 0 to 19 := 0;
   signal yBalaM : integer range 0 to 14 := 0;
	signal Juego : std_logic;

 	--Outputs
   signal Color : std_logic_vector(2 downto 0);
   signal Tocado : std_logic;
   signal Resultado : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: marcianos PORT MAP (
          Clk => Clk,
          Reset => Reset,
          EnableMarcianos => EnableMarcianos,
          X => X,
          Y => Y,
          Color => Color,
          xBalaM => xBalaM,
          yBalaM => yBalaM,
          Tocado => Tocado,
          Resultado => Resultado,
			 Juego => Juego
        );

   -- Clock process definitions
   Clk_process: process
   begin
		Clk <= '0' ;
		wait for Clk_period/2 ;
		Clk <= '1' ;
		wait for Clk_period/2 ;
   end process;
	
	-- Enable process
	Enable_process: process
	begin
		EnableMarcianos <= '0' ;
		wait for Clk_period ;
		EnableMarcianos <= '1';
		wait for Clk_period ;
   end process ;

   -- Stimulus process
   stim_proc: process
   begin
		-- señales
		Juego <= '1' ;
		xBalaM <= 10 ;
		yBalaM <= 14 ;
		X <= "0000000000" ;
		Y <= "0000000000" ;
      -- hold reset
      Reset <= '1' ;
      wait for Clk_period*10 ;	
		Reset <= '0' ;
      wait for Clk_period*10 ;
		
      -- insert stimulus here
		-- Duración de la simulación: 4µs
		
		-- El desplazamiento de los marcianos se ve con la señal interna "fila"
		-- Notamos que los valores "11111111110000000000" y "00000000001111111111" se quedan durante 2 ciclos de reloj,
		-- para que la yComun se incremente.
		
		-- Imaginamos que el bloque formato manda estas coordenadas
		X <= "1000111011" ; -- X=17
		Y <= "0101001101" ; -- Y=10
		-- La señal Color se pone con el color de los marcianos
		-- si las coordenadas del VGA corresponden a las de de un marciano y si el pixel partenece al dibujo
		-- Ocurre a t=2455ns
		
		-- Imaginamos que hay una bala en estas coordonadas
		xBalaM <= 5 ;
		ybalaM <= 11 ;
		-- La señal "Tocado" se pone a 1 si un marciano está aquí, y dicho marciano está borrado
		-- Ahora la fila contiene nueve '1' en lugar de diez.
		-- Ocurre a t=2625ns
		wait until Tocado = '1' ;
		wait until Clk = '0' ;
		xBalaM <= 0 ;
		yBalaM <= 0 ;
		
		-- Cuándo la fila de marcianos al última fila, hemos perdido
		-- Luego la señal "resultado" pasa de "10" a "01"
		-- Ocurre a t=3235ns

      wait ;
   end process ;
END ;
