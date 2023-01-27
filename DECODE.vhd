
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DECODE_2_to_6 is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
	       -- DP1 : out  STD_LOGIC;
           afficheur_0 : out  STD_LOGIC;
           afficheur_1 : out  STD_LOGIC;
           afficheur_2 : out  STD_LOGIC;
           afficheur_3 : out  STD_LOGIC);
           --afficheur_4 : out  STD_LOGIC;
           --afficheur_5 : out  STD_LOGIC);
           --afficheur_6 : out  STD_LOGIC;
           --afficheur_7 : out  STD_LOGIC);
end DECODE_2_to_6;

architecture Behavioral of DECODE_2_to_6 is
begin

process(Sel)
begin
     case sel is
      when "00" =>   afficheur_0 <='0';afficheur_1 <='1'; afficheur_2 <='1'; afficheur_3 <='1';
	  when "01" =>   afficheur_0 <='1';afficheur_1 <='0'; afficheur_2 <='1'; afficheur_3 <='1';
	  when "10" =>   afficheur_0 <='1';afficheur_1 <='1'; afficheur_2 <='0'; afficheur_3 <='1';
	  when others => afficheur_0 <='1';afficheur_1 <='1'; afficheur_2 <='1'; afficheur_3 <='0';
end case;
end process;

end Behavioral;

