----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:35:05 10/22/2015 
-- Design Name: 
-- Module Name:    rgb - Behavioral 
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.STD_LOGIC_ARITH.ALL ;
use IEEE.STD_LOGIC_UNSIGNED.ALL ; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL ;


entity rgbMux is
	port (rgbIn : in STD_LOGIC_VECTOR (2 downto 0) ;
         ApagarH : in STD_LOGIC ;
         ApagarV : in STD_LOGIC ;
         rOut : out STD_LOGIC ;
         gOut : out STD_LOGIC ;
         bOut : out STD_LOGIC) ;
end rgbMux ;


architecture Behavioral of rgbMux is

begin
	
	-- Bloque asíncrono que manda los valores RGB a la pantalla, si no estamos en sincronización
	rOut <= rgbIn(2) when ApagarH='0' and ApagarV='0' else '0' ;
	gOut <= rgbIn(1) when ApagarH='0' and ApagarV='0' else '0' ;
	bOut <= rgbIn(0) when ApagarH='0' and ApagarV='0' else '0' ;
	
end Behavioral ;