----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:04:56 10/22/2015 
-- Design Name: 
-- Module Name:    sync_h - Behavioral 
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


entity syncH is
	generic (AH : integer := 640 ;
				BH : integer := 654 ;
				CH : integer := 752 ;
				DH : integer := 800) ;
	port (Clk : in STD_LOGIC ;
			Reset : in STD_LOGIC ;
			EnableH : in STD_LOGIC ;
			EnableV : out STD_LOGIC ;
			xOut : out STD_LOGIC_VECTOR (9 downto 0) ;
			SyncH : out STD_LOGIC ;
			ApagarH : out STD_LOGIC) ;
end syncH ;


architecture Behavioral of syncH is

	-- Contador interno
	signal p : STD_LOGIC_VECTOR(9 downto 0) ;
	
begin

	process(Reset, Clk)
	begin
		if Reset='1' then
			p <= "0000000000" ;
		elsif Clk'event and Clk='1' then
			if EnableH='1' then
				if p >= DH-1 then
					p <= "0000000000" ;
				else
					p <= p+'1' ;
				end if ;
			end if ;
		end if ;
	end process ;
	
	-- Coordenada para el bloque formato
	xOut <= p ;
	
	-- Enable del bloque siguiente
	EnableV <= '1' when p=DH-1 and EnableH = '1' else '0' ;
	
	-- Para el bloque rgbMux
	ApagarH <= '0' when p < AH else '1' ;
	
	-- Señal de sincronización de la pantalla VGA
	SyncH <= '0' when p >= BH and p < CH else '1' ;
	
end Behavioral ;