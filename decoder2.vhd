library ieee;
use ieee.std_logic_1164.all;

entity decoder2 is port
(
i:in std_logic_vector(1 downto 0);
o:out std_logic_vector(3 downto 0)

);
end decoder2;

architecture behavior of decoder2 is
begin
process(i)
begin
case i is
	when "00"=>o<="0001";
	when "01"=>o<="0010";
	when "10"=>o<="0100";
	when "11"=>o<="1000";
	when others=>o<="XXXX";
end case;
end process;
end behavior;
