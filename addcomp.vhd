library ieee;
use ieee.std_logic_1164.all;
ENTITY add_complet is
    port (a, b, cin : in std_logic;
    sum, cout : out std_logic);

end entity add_complet;

architecture archi_comportementale1 of add_complet is
    begin
        process (a, b, cin) -- liste de sensibilité
        variable nb_un : integer; -- va contenir le nombre de 1
            begin
        -- algorithme de calcul du nombre de 1
                nb_un := 0;
                if a = 1 then
nb_un := nb_un + 1 ;
end if ;
if b = 1 then
nb_un := nb_un + 1 ;
end if ;
if cin = 1 then
nb_un := nb_un + 1 ;
end if ;
-- affectation du MSB, avec fonction de transtypage
cout <= vector(nb_un)(1);
-- et du LSB, également avec la fonction "vector"
sum <= vector(nb_un)(0);
end process;
end architecture archi_comportementale1;