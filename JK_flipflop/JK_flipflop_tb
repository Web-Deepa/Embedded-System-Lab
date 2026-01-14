library ieee;
use ieee.std_logic_1164.all;
entity JK_flipflop is
port(
clk,j,k:in std_logic;
q:out std_logic
);

architecture arch_JK_flipflop of JK_flipflop is
signal q_s:std_logic;

begin
process(clk)
begin 
if(rising_edge (clk)) then 
if(j='0' and k='0') then 
q_s<=q_s;

elsif(j='1' and k='0') then 
q_s<='1';

elsif(j='0' and k='1') then 
q_s<='0';

elsif(j='1' and k='1') then 
q_s<=not q_s;

end if;
end if;
end process;
q<=q_s;
end arch_JK_flipflop;