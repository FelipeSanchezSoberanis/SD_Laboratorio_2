LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_compuertas IS
END TB_compuertas;

ARCHITECTURE behavior OF TB_compuertas IS

	 COMPONENT compuertas
	 PORT(
			A : IN  std_logic;
			B : IN  std_logic;
			C : IN  std_logic;
			D : IN  std_logic;
			S2 : OUT  std_logic
		);
	 END COMPONENT;

	--Inputs
	signal A : std_logic := '0';
	signal B : std_logic := '0';
	signal C : std_logic := '0';
	signal D : std_logic := '0';

 	--Outputs
	signal S2 : std_logic;

BEGIN

	uut: compuertas PORT MAP (
			A => A,
			B => B,
			C => C,
			D => D,
			S2 => S2
		);

	A <= '0', '1' after 800ns;
	B <= '0', '1' after 400ns, '0' after 800ns, '1' after 1200ns;
	C <= '0', '1' after 200ns, '0' after 400ns, '1' after 600ns, '0' after 800ns, '1' after 1000ns, '0' after 1200ns, '1'after 1400ns;
	D <= '0', '1' after 100ns, '0' after 200ns, '1' after 300ns, '0' after 400ns, '1' after 500ns, '0' after 600ns, '1' after 700ns, '0' after 800ns, '1' after 900ns, '0' after 1000ns, '1' after 1100ns, '0' after 1200ns, '1' after 1300ns, '0' after 1400ns, '1' after 1500ns;
END;
