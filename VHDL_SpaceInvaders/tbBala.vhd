--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:19:01 11/26/2015
-- Design Name:   
-- Module Name:   C:/Users/l012g202.AIG.000/Desktop/espacio/tbBala.vhd
-- Project Name:  espacio
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bala
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
 
ENTITY tbBala IS
END tbBala;
 
ARCHITECTURE behavior OF tbBala IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bala
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         EnableBala : IN  std_logic;
         Disparo : IN  std_logic;
         X : IN  std_logic_vector(9 downto 0);
         Y : IN  std_logic_vector(9 downto 0);
         Color : OUT  std_logic_vector(2 downto 0);
         XNaveB : IN integer range 0 to 19 ;
         xBalaM : OUT integer range 0 to 19 ;
         yBalaM : OUT integer range 0 to 14; 
         Tocado : IN  std_logic;
			Juego : IN std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal EnableBala : std_logic := '0';
   signal Disparo : std_logic := '0';
   signal X : std_logic_vector(9 downto 0) := (others => '0');
   signal Y : std_logic_vector(9 downto 0) := (others => '0');
   signal XNaveB : integer range 0 to 19 ;
   signal Tocado : std_logic := '0';
	signal Juego : std_logic;

 	--Outputs
   signal Color : std_logic_vector(2 downto 0);
   signal xBalaM : integer range 0 to 19 ;
   signal yBalaM : integer range 0 to 14 ;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bala PORT MAP (
          Clk => Clk,
          Reset => Reset,
          EnableBala => EnableBala,
          Disparo => Disparo,
          X => X,
          Y => Y,
          Color => Color,
          XNaveB => XNaveB,
          xBalaM => xBalaM,
          yBalaM => yBalaM,
          Tocado => Tocado,
			 Juego => Juego
        );

   -- Clock process definitions
   Clk_process: process
   begin
		Clk <= '0' ;
		wait for Clk_period/2 ;
		Clk <= '1' ;
		wait for Clk_period/2 ;
   end process ;
	
	-- Enable process
	Enable_process: process
	begin
		EnableBala <= '0' ;
		wait for Clk_period ;
		EnableBala <= '1';
		wait for Clk_period ;
   end process ;

   -- Stimulus process
   stim_proc: process
   begin
		-- señales
		xNaveB <= 7 ;
		Juego <= '1' ;
      -- hold reset
      Reset <= '1' ;
      wait for Clk_period*10 ;	
		Reset <= '0' ;
      wait for Clk_period*10 ;
		
      -- insert stimulus here
		-- Duración de la simulación: 1,2µs
		
		-- Imaginamos que la nave esta en xNave=7
		-- Presionamos el boton de disparo
		-- Ocurre a t=200ns
		Disparo <= '1' ;
		-- El valor de yBala se decrementa desde 14 hasta 0
		wait for Clk_period ;
		Disparo <= '0' ;
		wait for Clk_period*10 ;
		
		-- Durante el disparo, xBala es constante mientras xNave cambia de valor
		-- Ocurre a t=310ns
		xNaveB <= 8 ;
		wait for Clk_period*10 ;
		
		-- Durante el disparo, si presionamos de nuevo el boton, nada cambia
		-- Ocurre a t=410ns
		Disparo <= '1' ;
		wait for Clk_period ;
		Disparo <= '0' ;
		wait for Clk_period*20 ;
		
		-- Cuando yBala llega a 0, podemos disparar de nuevo
		-- yBala vuelve a 14, xBala se actualiza con el nuevo valor de xNave
		-- Ocurre a t=495ns
		
		-- Disparamos de nuevo
		-- Ocurre a t=620ns
		Disparo <= '1' ;
		wait for Clk_period ;
		Disparo <= '0' ;
		wait for Clk_period*5 ;
		
		-- Al mismo tiempo puede cambiar la posición de la nave...
		-- Ocurre a t=680ns
		xNaveB <= 9 ;
		wait for Clk_period*5 ;
		
		-- Imaginamos que hay un marciano en el camino de la bala
		-- En este caso, el bloque marcianos manda '1' en la señal "Tocado"
		-- Ocurre a t=730ns
		Tocado <= '1' ;
		wait for Clk_period ;
		Tocado <= '0' ;
		wait for Clk_period*10 ;
		-- El marciano está borrado, y la bala vuelve a su posición inicial (yBala=14, xBala=xNave)
		-- Ocurre a t=735ns
		
		-- Imaginamos que el bloque formato manda estas coordenadas
		X <= "0100110000" ; -- X=9
		Y <= "0101000100" ; -- Y=10
		
		-- Disparamos de nuevo
		-- Ocurre a t=840ns
		Disparo <= '1' ;
		wait for Clk_period ;
		Disparo <= '0' ;
		-- La señal Color se poner con el color de la bala
		-- si las coordenadas del VGA corresponden a las de de la bala y si el pixel partenece al dibujo
		-- Ocurre a t=915ns
		
      wait ;
   end process ;
END ;
