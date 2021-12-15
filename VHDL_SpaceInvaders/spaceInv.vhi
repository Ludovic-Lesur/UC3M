
-- VHDL Instantiation Created from source file spaceInv.vhd -- 11:32:49 11/30/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT spaceInv
	PORT(
		Clk : IN std_logic;
		Reset : IN std_logic;
		Inicio : IN std_logic;
		Test : IN std_logic;
		Izquierda : IN std_logic;
		Derecha : IN std_logic;
		Disparo : IN std_logic;          
		HSync : OUT std_logic;
		VSync : OUT std_logic;
		R : OUT std_logic;
		G : OUT std_logic;
		B : OUT std_logic
		);
	END COMPONENT;

	Inst_spaceInv: spaceInv PORT MAP(
		Clk => ,
		Reset => ,
		Inicio => ,
		Test => ,
		Izquierda => ,
		Derecha => ,
		Disparo => ,
		HSync => ,
		VSync => ,
		R => ,
		G => ,
		B => 
	);


