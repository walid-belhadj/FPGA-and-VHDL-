library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity compteur is
port(   clk,raz,ce      :   in  std_logic;
    count           :   out std_logic_vector(7 downto 0));
end compteur;

architecture arch_compteur of compteur is
signal count_int : unsigned (7 downto 0);
begin
process(clk)
    begin
    if rising_edge(clk) then
        if raz='1' then count_int <= (others => '0');
        elsif ce='1' then
            if count_int="11111111" then count_int <= (others => '0'); -- fin de comptage
            else count_int <= count_int + 1; -- "+"(unsigned,int)
            end if;
        end if;
    end if;
end process;

count <= std_logic_vector(count_int); -- count copie de count_int

end arch_compteur;