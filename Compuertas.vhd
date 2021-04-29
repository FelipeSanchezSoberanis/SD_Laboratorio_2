library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compuertas is
	Port(
		A, B, C, D: in std_logic;
		S1: out std_logic
	);
end compuertas;

architecture behaviour of compuertas is
	signal temp1, temp2, temp3, temp4: std_logic;
	begin
		temp1 <= (not D) and (not C) and (not A);
		temp2 <= (not D) and A and (B xor C);
		temp3 <= (not D) and C and B;
		temp4 <= D and (not C) and (not B);

		S1 <= temp1 or temp2 or temp3 or temp4;
end behaviour;