--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:16:04 11/26/2015
-- Design Name:   
-- Module Name:   C:/Users/l012g202.AIG.000/Desktop/espacio/tbNave.vhd
-- Project Name:  espacio
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nave
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
 
ENTITY tbNave IS
END tbNave;
 
ARCHITECTURE behavior OF tbNave IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nave
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         EnableNave : IN  std_logic;
         Izquierda : IN  std_logic;
         Derecha : IN  std_logic;
         X : IN  std_logic_vector(9 downto 0);
         Y : IN  std_logic_vector(9 downto 0);
         Color : OUT  std_logic_vector(2 downto 0);
         xNaveB : OUT integer range 0 to 19;
			Juego : IN std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal EnableNave : std_logic := '0';
   signal Izquierda : std_logic := '0';
   signal Derecha : std_logic := '0';
   signal X : std_logic_vector(9 downto 0) := (others => '0');
   signal Y : std_logic_vector(9 downto 0) := (others => '0');
	signal Juego : std_logic;

 	--Outputs
   signal Color : std_logic_vector(2 downto 0);
   signal xNaveB : integer range 0 to 19 ;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nave PORT MAP (
          Clk => Clk,
          Reset => Reset,
          EnableNave => EnableNave,
          Izquierda => Izquierda,
          Derecha => Derecha,
          X => X,
          Y => Y,
          Color => Color,
          xNaveB => xNaveB,
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
		EnableNave <= '0' ;
		wait for Clk_period ;
		EnableNave <= '1';
		wait for Clk_period ;
   end process ;
 
   -- Stimulus process
   stim_proc: process
   begin
	   -- señales
		Juego <= '1' ;
      -- hold reset
      Reset <= '1' ;
      wait for Clk_period*10 ;	
		Reset <= '0' ;
      wait for Clk_period*10 ;

      -- insert stimulus here
		-- Duración de la simulación: 1,5µs
		
		-- Si presionamos el boton de izquierda, xNave se decrementa
		-- Ocurre a t=200ns
		for i in 1 to 3 loop
			Izquierda <= '1' ;
			wait for Clk_period*2 ;
			Izquierda <= '0' ;
			wait for Clk_period*2 ;
		end loop ;
		wait for Clk_period*10 ;
		
		-- Si presionamos el boton de derecha, xNave se incrementa
		-- Ocurre a t=420ns
		for i in 1 to 5 loop
			Derecha <= '1' ;
			wait for Clk_period*2 ;
			Derecha <= '0' ;
			wait for Clk_period*2 ;
		end loop ;
		wait for Clk_period*10 ;
		
		-- Si presionamos el boton de derecha mientras que la nave está al borde de la pantalla,
		-- el xNave se queda a "10011" = 19
		-- Ocurre a t=975ns
		for i in 1 to 10 loop
			Derecha <= '1' ;
			wait for Clk_period*2 ;
			Derecha <= '0' ;
			wait for Clk_period*2 ;
		end loop ;
		wait for Clk_period*10 ;
		
		-- Imaginamos que el bloque formato manda estas coordenadas
		X <= "1001011011" ; -- X=18
		Y <= "0111010010" ; -- Y=14
		
		for i in 1 to 3 loop
			Izquierda <= '1' ;
			wait for Clk_period*2 ;
			Izquierda <= '0' ;
			wait for Clk_period*2 ;
		end loop ;
		-- La señal Color se pone con el color de la nave
		-- si las coordenadas del VGA corresponden a las de de la nave y si el pixel partenece al dibujo
		-- Ocurre a t=1235ns
		
      wait ;
   end process ;
END ;
