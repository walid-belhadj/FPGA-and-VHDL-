Library ieee;
Use ieee.std_logic_1164.all;
entity decodeur_74LS4 is
    port (
    A : in std_logic_vector(3 downto 0);
    S : out std_logic (9 downto 0)
    );
end decodeur_74LS4;
architecture vhdl of decodeur_74LS4 is
    Begin
        With A select
        S <="1111111110" when "0000",
            "1111111101" when "0001",
            "1111111011" when "0010",
            "1111110111" when "0011",
            "1111101111" when "0100",
            "1111011111" when "0101",
            "1110111111" when "0110",
            "1101111111" when "0111",
            "1011111111" when "1000",
            "0111111111" when "1001",
            "1111111111" when others;
end behav;