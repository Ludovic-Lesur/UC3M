----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:46 10/22/2015 
-- Design Name: 
-- Module Name:    sync_v - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL ;


entity syncV is
	generic (AV : integer := 480 ;
				BV : integer := 490 ;
				CV : integer := 492 ;
				DV : integer := 521) ;
   port (Clk : in STD_LOGIC ;
			Reset : in STD_LOGIC ;
			EnableV : in STD_LOGIC ;
			yOut : out STD_LOGIC_VECTOR (9 downto 0) ;
			SyncV : out STD_LOGIC ;
			ApagarV : out STD_LOGIC) ;
end syncV ;


architecture Behavioral of syncV is

	-- Contador interno
	signal p : STD_LOGIC_VECTOR(9 downto 0) ;
	
begin

	process(Reset, Clk)
	begin
		if Reset='1' then
			p <= "0000000000" ;
		elsif Clk'event and Clk='1' then
			if EnableV='1' then
				if p >= DV-1 then
					p <= "0000000000" ;
				else
					p <= p+'1' ;
				end if ;
			end if ;
		end if ;
	end process ;
	
	-- Coordenada para el bloque formato
	yOut <= p ;
	
	-- Para el bloque rgbMux
	ApagarV <= '0' when p < AV else '1' ;
	
	-- Señal de sincronización de la pantalla VGA
	SyncV <= '0' when p >= BV and p < CV else '1' ;
	
end Behavioral ;