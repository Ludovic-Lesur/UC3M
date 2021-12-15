----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:52 10/26/2015 
-- Design Name: 
-- Module Name:    tablero - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM ;
--use UNISIM.VComponents.all ;

entity tablero is
    Port (X : in STD_LOGIC_VECTOR (9 downto 0) ;
          Y : in STD_LOGIC_VECTOR (9 downto 0) ;
          RGB : out STD_LOGIC_VECTOR (2 downto 0)) ;
end tablero ;

architecture Behavioral of tablero is
begin
	RGB(0) <= X(5) xor Y(5) ;
	RGB(1) <= X(5) xor Y(5) ;
	RGB(2) <= X(5) xor Y(5) ;
end Behavioral ;

