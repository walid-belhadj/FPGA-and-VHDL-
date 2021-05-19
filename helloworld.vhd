library IEEE; --librairie pour inclure type std_logic
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY ET4 IS
PORT
(I1,I2,I3,I4 : IN STD_LOGIC;
O :OUT STD_LOGIC
);
END ET4;
ARCHITECTURE arch_ET4 OF ET4 IS
-- partie déclarative COMPOSANT
COMPONENT ET2 IS
PORT
(A,B : IN STD_LOGIC;
S : OUT STD_LOGIC
);
END COMPONENT ET2;
-- partie déclarative SIGNAL
-- pas de IN ou OUT car signal INTERNE
SIGNAL O1, O2 : STD_LOGIC ;
BEGIN
-----------------------
-- 1ere porte ET placée
U1:ET2 port map (I1,I2,O1);
-- 2ème porte ET placée
U2:ET2 port map (I3,I4,O2);
-- 3ème porte ET placée
U3:ET2 port map (O1,O2,O);
END arch_ET4;

-- affectation conditionnelle
architecture FLOT1_MUX of MUX is
    begin
    S <= E0 when (SEL0='0' and SEL1='0') else
    E1 when (SEL0='1' and SEL1='0') else
    E2 when (SEL0='0' and SEL1='1') else
    E3;
    end FLOT1_MUX;
-- affectation selective
architecture FLOT2_MUX of MUX is
    begin
    with SEL select
    S <= E0 when "00",
    E1 when "01",
    E2 when "10",
    E3 when others;
    end FLOT2_MUX;

-- ET logique
library ieee;
use ieee.std_logic_1164.all;
entity Exo_0 is
    port( x,y : in std_logic;
    z : out std_logic);
end Exo_0;
architecture Comp_Exo_0 of Exo_0 is
    begin
        process (x,y)
            begin
            if x='1' then
                z <= y;
            else
                z <= '0';
            end if;
        end process;
    end Comp_Exo_0;

    --- mux
library ieee;
use ieee.std_logic_1164.all;
entity MUX is
    port(E0, E1, E2, E3: IN std_logic;
        SEL : IN std_logic_vector(1 downto 0);
        S : OUT std_logic;
    );
end MUX;
architecture behav of MUX is
    begin
    process (E0, E1, E2, E3, SEL0, SEL1)--SEL  a la place de SEL0 SEL1
    begin
    case SEL is
        when "00" => s<=E0;


        when others => s<='_';
    end case;
    end process;
    end behav;


architecture behav of MUX is
begin
process (E0, E1, E2, E3, SEL )
begin
if
end if;
end process;
end behav;

