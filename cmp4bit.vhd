library ieee;
use ieee.std_logic_1164.all;
entity eqcomp4 is
    port
    (
    a,b : in std_logic_vector(3 downto 0);
    equal : out std_logic
    );
end eqcomp4;
architecture behav_eqcomp4 of eqcomp4 is
    begin
        equal <= '1' when a=b else '0';
    end behav_eqcomp4;
