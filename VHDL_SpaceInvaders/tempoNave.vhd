----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:45:02 11/03/2015 
-- Design Name: 
-- Module Name:    tempoNave - Behavioral 
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


entity tempoNave is
	generic (tiempoMS : integer := 20) ;
   port(Clk : in STD_LOGIC ;
        Reset : in STD_LOGIC ;
        EnableNave : out STD_LOGIC) ;
end tempoNave ;


architecture Behavioral of tempoNave is

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
				EnableNave <= '1' ;
			else
				a := a+1 ;
				EnableNave <= '0' ;
			end if ;
		end if ;
	end process ;
	
end Behavioral ;