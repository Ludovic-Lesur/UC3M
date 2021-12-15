----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:36:49 11/03/2015 
-- Design Name: 
-- Module Name:    tempoMarcianos - Behavioral 
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


entity tempoBala is
	generic (tiempoMS : integer := 50) ;
   port(Clk : in STD_LOGIC ;
        Reset : in STD_LOGIC ;
        EnableBala : out STD_LOGIC) ;
end tempoBala ;


architecture Behavioral of tempoBala is

	-- Número de ciclos de reloj correspondiente al tiempo deseado
	constant numeroCiclos : integer := (frecFPGA/1000)*tiempoMS ;
	
begin
	process(Clk, Reset)
		-- Contador
		variable a : integer ;
	begin
		if Reset='1' then
			a := 0 ;
		elsif Clk'event and Clk='1' then
			if a=numeroCiclos then
				a := 0 ;
				EnableBala <= '1' ;
			else
				a := a+1 ;
				EnableBala <= '0' ;
			end if ;
		end if ;
	end process ;
	
end Behavioral ;