library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is

end entity testbench;

architecture RTL of testbench is
	signal dataa : unsigned (3 downto 0);
	signal datab : unsigned (3 downto 0);
	signal sum : unsigned (7 downto 0);

begin
	dut:entity work.mult
	    generic map(
	        SIZE => 4
	    )

		port map(
			--esqerda nbits >> direita testbench
			dataa => dataa,
			datab => datab,
			prod   => sum
		);
	process

	begin
		
		dataa <= "0001";
		datab <= "0001";
		wait for 10 ns;
		
		dataa <= "0001";
		datab <= "0011";
		wait; --para o processo

	end process;
end architecture RTL;
