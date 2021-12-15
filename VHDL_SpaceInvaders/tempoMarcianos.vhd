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


entity tempoMarcianos is
	generic (t1 : integer := 200 ;
				paso : integer := 10) ;
   port(Clk : in STD_LOGIC ;
        Reset : in STD_LOGIC ;
        EnableMarcianos : out STD_LOGIC ;
		  Nivel : in integer range 1 to NumeroPartidos) ;
end tempoMarcianos ;


architecture Behavioral of tempoMarcianos is

	-- Cálculo del número de ciclos de reloj que debemos esperar entre dos movimientos de los marcianos
	-- De tal manera que en el primer partido el tiempo vale t1
	-- Y a cada nivel se decrementa de 10ms
	constant numeroCiclos : integer := (frecFPGA/1000)*(t1-Nivel*paso) ;
	
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
				EnableMarcianos <= '1' ;
			else
				a := a+1 ;
				EnableMarcianos <= '0' ;
			end if ;
		end if ;
	end process ;
	
end Behavioral ;