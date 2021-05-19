library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decod is
    port (in0, in1: in std_logic;
            d0,d1,d2,d3: out std_logic);
end decod;

architecture desc of decod is
begin
    d0 <= (not(in1) and not(in2));
    d1 <= (in0 and not(in1));
    d2 <= (not(in0) and in1);
    d3 <= (in0 and in1);
end desc;


