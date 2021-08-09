library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
generic(
N : integer :=8
);
port(
SW		:in std_logic_vector(3 downto 0);
BTNL	:in std_logic;
LED		:out std_logic_vector(2 downto 0)
);
end top;

architecture behavioral of top is

--component decl
component nbit_adder is
generic(
N	:integer :=2
);
port(
a_i		:in std_logic_vector(N-1 downto 0);
b_i		:in std_logic_vector(N-1 downto 0);
carry_i	:in std_logic;
carry_o	:out std_logic;
sum_o	:out std_logic_vector(N-1 downto =)
);
end component nbit_adder;

begin 
--component instatiaton
nbit_adder_i : nbit_adder
generic map(
N	=>	N
);
port map(
a_i		    =>sw(1 downto 0), 
b_i		    =>sw(3 downto 2),
carry_i	    =>BTNL,
carry_o	    =>LED(2),
sum_o		=>LED(1 downto 0)
);
end behavioral;