library ieee;
use ieee.std_logic_1164.all;

entity portAnd is
    port (e0 : in std_logic;
        e1 : in std_logic;
        s : out std_logic);
end portAnd;

architecture behave of portAnd is
begin
    s <= e0 and e1;
end behave;

-----
-- we could find des ports
--( in out inout ( bidirectionnel) et buffer )
