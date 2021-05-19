library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity bidule is
        generic(bidule_Width : INTEGER := 8); -- paramètre de configuration de bidule
        port
        (
        CLK : in std_logic;
        RST : in std_logic; -- Reset_____________
        EN : in std_logic; -- ENable
        UD : in std_logic;
        Q : out unsigned(bidule_Width-1 downto 0)
        );
end bidule;
architecture arch_bidule of bidule is
    signal bid : unsigned(Q'range);
    -- idem std_logic_vector(bidule_Width-1 downto 0)
    begin
        process(CLK,RST)
        begin
            if (RST='1') then
                bid <= (others => '0');
            elsif rising_edge(CLK) then
                if EN='1' then
                    if UD='1' then
                        bid <= bid + 1; -- _______
                    else
                        bid <= bid - 1; -- _______
                    end if;
                end if;
            end if;
        end process;
    Q <= unsigned(bid); -- mise à jour de bid
end arch_bidule;