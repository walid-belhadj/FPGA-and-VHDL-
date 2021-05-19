library ieee;
use ieee.std_logic_1164.all;

entity and4 is
    port
    (i0,i1,i2,i3: in std_logic;
    o : out std_logic);
end and4;
architecture archi_and4 of and4 is
component and2 is
    port
    (a,b : in std_logic;
    s : out std_logic);
end component and2;
signal o1, o2 : std_logic;
    begin
        u1 : and2 port map (i0,i1,o1);
        u2 : and2 port map (i3,i4,o2);
        u3 : and2 port map (o1,o2,o);
end archi_and4;
