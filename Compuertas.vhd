library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compuertas is
	Port(
		A, B, C, D: in std_logic;
		-- S1, S2: out std_logic
		S2: out std_logic
	);
end compuertas;

architecture behaviour of compuertas is
	-- signal temp1, temp2, temp3, temp4: std_logic;
	signal temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15: std_logic;
	signal notA, notB, notC, notD: std_logic;
	signal BxorC: std_logic;
	begin
		-- temp1 <= (not D) and (not C) and (not A);
		-- temp2 <= (not D) and A and (B xor C);
		-- temp3 <= (not D) and C and B;
		-- temp4 <= D and (not C) and (not B);

		-- S1 <= temp1 or temp2 or temp3 or temp4;

		notA <= A nor A;
		notB <= B nor b;
		notC <= C nor C;
		notD <= D nor D;

		BxorC <= ((B nor B) nor (C nor C)) nor (B nor C);

		-- notD and notC = (notD nor notD) nor (notC nor notC)
		temp5 <= (notD nor notD) nor (notC nor notC);
		-- temp5 and notA = (temp5 nor temp5) nor (notA nor notA)
		temp6 <= (temp5 nor temp5) nor (notA nor notA);

		-- notD and A = (notD nor notD) nor (A nor A)
		temp7 <= (notD nor notD) nor (A nor A);
		-- temp7 and BxorC = (temp7 nor temp7) nor (BxorC nor BxorC)
		temp8 <= (temp7 nor temp7) nor (BxorC nor BxorC);

		-- notD and C = (notD nor notD) nor (C nor C)
		temp9 <= (notD nor notD) nor (C nor C);
		-- temp9 and B = (temp9 nor temp9) nor (B nor B)
		temp10 <= (temp9 nor temp9) nor (B nor B);

		-- D and notC = (D nor D) nor (notC nor notC)
		temp11 <= (D nor D) nor (notC nor notC);
		-- temp11 and notB = (temp11 nor temp11) nor (notB nor notB)
		temp12 <= (temp11 nor temp11) nor (notB nor notB);

		-- S2 <= temp6 or temp8 or temp10 or temp12;

		-- temp6 or temp8 = (temp6 nor temp8) nor (temp6 nor temp8)
		temp13 <= (temp6 nor temp8) nor (temp6 nor temp8);
		-- temp13 or temp10 = (temp13 nor temp10) nor (temp13 nor temp10)
		temp14 <= (temp13 nor temp10) nor (temp13 nor temp10);
		-- temp14 or temp12 = (temp14 nor temp12) nor (temp14 nor temp12)
		temp15 <= (temp14 nor temp12) nor (temp14 nor temp12);

		S2 <= temp15;
end behaviour;