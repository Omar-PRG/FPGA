
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC_VECTOR (3 downto 0);
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           --E : in  STD_LOGIC_VECTOR (3 downto 0);
           --F : in  STD_LOGIC_VECTOR (3 downto 0);
           --G : in  STD_LOGIC_VECTOR (3 downto 0);
           --H : in  STD_LOGIC_VECTOR (3 downto 0);
           SEL : in  STD_LOGIC_VECTOR (2 downto 0);
           --frequence_or_pas : in  STD_LOGIC;
           sortie_mux : out  STD_LOGIC_VECTOR (3 downto 0));
end MUX;

architecture Behavioral of MUX is

begin
process(sel,A,B,C,D)
begin
case  sel is
	  when "000" =>  Sortie_Mux <= A;
	  when "001" =>  Sortie_Mux <= B;
	  when "010" =>  Sortie_Mux <= C;
	  when others => Sortie_Mux <= D;
end case;
end process;

end Behavioral;

