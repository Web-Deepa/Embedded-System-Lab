library ieee;
use ieee.std_logic_1164.all;
entity and_gate_tb is
end and_gate_tb;

architecture arch_and_tb of and_gate_tb is

component and_gate 
port(
a,b:in std_logic;
c:out std_logic
);
end component;

signal sig_a:std_logic:='0';
signal sig_b:std_logic:='0';
signal sig_c:std_logic;
begin
u1:and_gate port map(
a=>sig_a,
b=>sig_b,
c=>sig_c

);

atb:process
begin
sig_a<='0';
sig_b<='0';
wait for 100ps;

sig_a<='0';
sig_b<='1';
wait for 100ps;

sig_a<='1';
sig_b<='0';
wait for 100ps;

sig_a<='1';
sig_b<='1';
wait for 100ps;
wait;
end process;
end arch_and_tb;

