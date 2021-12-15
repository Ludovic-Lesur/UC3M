--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:23:19 10/27/2015
-- Design Name:   
-- Module Name:   C:/Users/Ludovic/Desktop/espacio/tbVga.vhd
-- Project Name:  espacio
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga
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
 
ENTITY tbVga IS
END tbVga;
 
ARCHITECTURE behavior OF tbVga IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         RGB : IN  std_logic_vector(2 downto 0);
         X : OUT  std_logic_vector(9 downto 0);
         Y : OUT  std_logic_vector(9 downto 0);
         HSync : OUT  std_logic;
         VSync : OUT  std_logic;
         R : OUT  std_logic;
         G : OUT  std_logic;
         B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal RGB : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal X : std_logic_vector(9 downto 0);
   signal Y : std_logic_vector(9 downto 0);
   signal HSync : std_logic;
   signal VSync : std_logic;
   signal R : std_logic;
   signal G : std_logic;
   signal B : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga PORT MAP (
          Clk => Clk,
          Reset => Reset,
          RGB => RGB,
          X => X,
          Y => Y,
          HSync => HSync,
          VSync => VSync,
          R => R,
          G => G,
          B => B
        );

   -- Clock process definitions
   Clk_process : process
   begin
		Clk <= '0' ;
		wait for Clk_period/2 ;
		Clk <= '1';
		wait for Clk_period/2 ;
   end process ;

   -- Stimulus process
   stim_proc: process
   begin
		-- señales
		RGB <= "111" ;
      -- hold reset
		Reset <= '1' ;
      wait for Clk_period*10 ;	
		Reset <= '0' ;
      wait for Clk_period*10 ;

      -- insert stimulus here
		-- Duración de la simulación: 10ms
		
		-- t=12,895µs (AH) : llegamos a la sincronización horizontal, RGB se pone a "000"
		-- t=13,175µs (BH) : pulso de la señal HSync
		-- t=15,135µs (CH) : fin del pulso de la señal HSync
		-- t=16,095µs (DH) : fin de la sincronización horizontal, RGB toma de nuevo el valor de la entrada (aquí "111")
		-- 						y la coordenada Y se incrementa
		
		-- t=7,676895ms (AV) : llegamos a la sincronización vertical, RGB se pone a "000"
		-- t=7,840095ms (BV) : pulso de la señal VSync
		-- t=7,872095ms (CV) : fin del pulso de la señal VSync
		-- t=8,336095ms (DV) : fin de la sincronización vertical, RGB toma de nuevo el valor de la entrada (aquí "111")
		--							  y empezamos de nuevo el barrido de la pantalla desde (X,Y)=(0,0)
		
      wait ;
   end process ;
END ;
