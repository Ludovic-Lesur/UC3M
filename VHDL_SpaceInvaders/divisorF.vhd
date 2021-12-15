----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:00 10/22/2015 
-- Design Name: 
-- Module Name:    divisor_f - Behavioral 
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


entity divisorF is
	port (Clk : in STD_LOGIC ;
			Reset : in STD_LOGIC ;
         EnableH : out STD_LOGIC) ;
end divisorF ;


architecture Behavioral of divisorF is

begin
	
	-- Este proceso permite hacer un divisor de frecuencia
	-- La frecuencia de EnableH es la mitad de la del reloj Clk
	process(Reset, Clk)
	-- Contador
	variable a : STD_LOGIC ;
	begin
		if Reset='1' then
			a := '0' ;
		elsif Clk'event and Clk='1' then
				a := not(a) ;
		end if ;
		EnableH <= a ;
	end process ;
	
end Behavioral ;