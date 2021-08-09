library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
port(
a_i			:in std_logic;
b_i			:in std_logic;
carry_i		:in std_logic;
carry_o		:out std_logic;
sum_o		:out std_logic
);
end full_adder;

architecture behavioral of full_adder is
--component declaration
componenthalf_adder is
port(
a_i		:in std_logic;
b_i		:in std_logic;
sum_o	:out std_logic;
carry_o	:out std_logic
);
end component half_adder;

--signals:
signal first_sum		:std_logic:="0";
signal first_carry		:std_logic:="0";
signal second_carry		:std_logic:="0";

begin

--somutlastirma
first_half_adder : half_adder
port map(
a_i		=> a_i,
b_,		=>b_i,
sum_o	=>first_sum,
carry_o	=>first_carry
);

second_half_adder : half_adder
port map(
a_i			=>first_sum,
b_,			=>carry_i,
sum_o		=>sum_o,
carry_o		=>second_carry
);

carry_o <=first_carry or second_carry;

end behavioral;