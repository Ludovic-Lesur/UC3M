----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:28:39 10/24/2015 
-- Design Name: 
-- Module Name:    vga - Behavioral 
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


entity vga is
    port (Clk : in STD_LOGIC ;
          Reset : in STD_LOGIC ;
          RGB : in STD_LOGIC_VECTOR (2 downto 0) ;
          X : out STD_LOGIC_VECTOR (9 downto 0) ;
          Y : out STD_LOGIC_VECTOR (9 downto 0) ;
          HSync : out STD_LOGIC ;
          VSync : out STD_LOGIC ;
          R : out STD_LOGIC ;
          G : out STD_LOGIC ;
          B : out STD_LOGIC) ;
end vga ;


architecture Behavioral of vga is

	-- Declaracion del divisor de frecuencia
	component divisorF
		port (Clk : in STD_LOGIC ;
				Reset : in STD_LOGIC ;
				EnableH : out STD_LOGIC) ;
	end component ;
	
	-- Declaracion del bloque de sincronisacion horizontal
	component syncH
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
	end component ;
	
	-- Declaracion del bloque de sincronisacion vertical
	component syncV
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
	end component ;
	
	-- Declaracion del bloque de que maneja los colores
	component rgbMux
		port (rgbIn : in STD_LOGIC_VECTOR (2 downto 0) ;
				ApagarH : in STD_LOGIC ;
				ApagarV : in STD_LOGIC ;
				rOut : out STD_LOGIC ;
				gOut : out STD_LOGIC ;
				bOut : out STD_LOGIC) ;
	end component ;
	
	-- Declaracion de los senales internos
	signal EnableH_Int : STD_LOGIC ;
	signal EnableV_Int : STD_LOGIC ;
	signal ApagarH_Int : STD_LOGIC ;
	signal ApagarV_Int : STD_LOGIC ;
	
begin

	bloqueDivisorF : divisorF port map(Clk => Clk,
												  Reset => Reset,
												  EnableH => EnableH_Int) ;
												  
	bloqueSyncH : syncH port map(Clk => Clk,
										  Reset => Reset,
										  EnableH => EnableH_Int,
										  EnableV => EnableV_Int,
										  xOut => X,
										  SyncH => HSync,
										  ApagarH => ApagarH_Int) ;
										  
	bloqueSyncV : syncV port map(Clk => Clk,
										  Reset => Reset,
										  EnableV => EnableV_Int,
										  yOut => Y,
										  SyncV => VSync,
										  ApagarV => ApagarV_Int) ;
										  
	bloqueRgbMux : rgbMux port map(rgbIn => RGB,
											 ApagarH => ApagarH_Int,
											 ApagarV => ApagarV_Int,
											 rOut => R,
											 gOut => G,
											 bOut => B) ;

end Behavioral ;


