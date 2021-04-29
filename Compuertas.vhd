library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compuertas is
	Port(
		A, B, C, D: in std_logic;
		S1, S2: out std_logic
	);
end compuertas;

architecture behaviour of compuertas is
	signal temp1, temp2, temp3, temp4: std_logic;
	-- signal temp5, temp6, temp7, temp8: std_logic;
	signal temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17, temp18, temp19: std_logic;
	signal notB, notC, notD: std_logic;
	signal BxorC: std_logic;
	begin
		temp1 <= (not D) and (not C) and (not A);
		temp2 <= (not D) and A and (B xor C);
		temp3 <= (not D) and C and B;
		temp4 <= D and (not C) and (not B);

		S1 <= temp1 or temp2 or temp3 or temp4;

		notB <= B nand B;
		notC <= C nand C;
		notD <= D nand D;
		BxorC <= (B nand (B nand C)) nand (C nand (B nand C));

		-- temp5 <= (notD) and (notC) and (notA);
		-- (notD) and (notC) = (notD nand notC) nand (notD nand notC)
		temp9 <= (notD nand notC) nand (notD nand notC);
		-- temp9 and (not A) = (temp9 nand (not A)) nand (temp9 nand (not A))
		temp10 <= (temp9 nand (not A)) nand (temp9 nand (not A));

		-- temp6 <= (notD) and A and (BxorC);
		-- notD and A = (notD nand A) nand (notD nand A)
		temp11 <= (notD nand A) nand (notD nand A);
		-- temp11 and (BxorC) = (temp11 nand BxorC) nand (temp11 nand BxorC)
		temp12 <= (temp11 nand BxorC) nand (temp11 nand BxorC);

		-- temp7 <= (notD) and C and B;
		-- (notD) and C = (notD nand C) nand (notD nand C)
		temp13 <= (notD nand C) nand (notD nand C);
		-- temp13 and B = (temp13 nand B) nand (temp13 nand B)
		temp14 <= (temp13 nand B) nand (temp13 nand B);

		-- temp8 <= D and (notC) and (notB);
		-- D and (notC) = (D nand notC) nand (D nand notC)
		temp15 <= (D nand notC) nand (D nand notC);
		-- temp15 and (notB) = (temp15 nand notB) nand (temp15 nand notB)
		temp16 <= (temp15 nand notB) nand (temp15 nand notB);

		-- S2 <= temp10 or temp12 or temp14 or temp16;

		-- temp10 or temp12 = (temp10 nand temp10) nand (temp12 nand temp12)
		temp17 <= (temp10 nand temp10) nand (temp12 nand temp12);
		-- temp17 or temp14 = ( temp17 nand temp17 ) nand ( temp14 nand temp14 )
		temp18 <= (temp17 nand temp17) nand (temp14 nand temp14);
		-- temp18 or temp16 = (temp18 nand temp18) nand (temp16 nand temp16)
		temp19 <= (temp18 nand temp18) nand (temp16 nand temp16);

		S2 <= temp19;
end behaviour;