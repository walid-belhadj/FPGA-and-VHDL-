library ieee;
use ieee.std_logic_1164.all;
entity MUX_4to1 is
    port
    (
    E0, E1, E2, E3, SEL0, SEL1 : in std_logic;
    S: out std_logic
    );
end MUX_4to1;
architecture flot_MUX4to1 of MUX_4to1 is
begin
    process (E0,E1,E2,E3,SEL0, SEL1) is
        begin
            if (SEL0 ='0' and SEL1 = '0') then
                Z <= E0;
            elsif (SEL0 ='1' and SEL1 = '0') then
                Z <= E1;
            elsif (SEL0 ='0' and SEL1 = '1') then
                Z <= E2;
            else
                Z <= E3;
            end if;
        end process;
end flot_MUX4to1
