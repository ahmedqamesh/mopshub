----------------------------------------------------------------------------------
--! Company:  EDAQ WIS.  
--! Engineer: juna
--! 
--! Create Date:    05/19/2014
--! Module Name:    EPROC_IN2
--! Project Name:   FELIX
----------------------------------------------------------------------------------
--! Use standard library
library ieee, work;
use ieee.std_logic_1164.all;
use work.all;

--! 80 Mbps E-link processor, 2bit input @ clk40
entity EPROC_IN2 is
generic     (
                IC_Elink                        : boolean := false;
                egroupID                        : integer range 0 to 7 := 0;
                EnableToHo_Egroup0Eproc2_HDLC   : boolean := false;
                EnableToHo_Egroup0Eproc2_8b10b  : boolean := true;
                EnableToHo_Egroup1Eproc2_HDLC   : boolean := false;
                EnableToHo_Egroup1Eproc2_8b10b  : boolean := true;
                EnableToHo_Egroup2Eproc2_HDLC   : boolean := false;
                EnableToHo_Egroup2Eproc2_8b10b  : boolean := true;
                EnableToHo_Egroup3Eproc2_HDLC   : boolean := false;
                EnableToHo_Egroup3Eproc2_8b10b  : boolean := true;
                EnableToHo_Egroup4Eproc2_HDLC   : boolean := false;
                EnableToHo_Egroup4Eproc2_8b10b  : boolean := true;
                EnableToHo_Egroup7Eproc2_HDLC   : boolean := false; --EC E-link
                EnableToHo_Egroup7Eproc2_8b10b  : boolean := true;  --EC E-link
--IG            do_generate             : boolean := true;
                includeNoEncodingCase           : boolean := false;
    			GENERATE_FEI4B          		: boolean := false
            );
port ( 
    bitCLK          : in  std_logic;
    bitCLKx2        : in  std_logic;
    rst             : in  std_logic;
    ENA             : in  std_logic;
    swap_inputbits  : in  std_logic; -- bit swap on a GBT frame level
    thCR_REVERSE_10B : in std_logic;
    ENCODING        : in  std_logic_vector(1 downto 0);
    EDATA_IN        : in  std_logic_vector(1 downto 0);
    DATA_OUT        : out std_logic_vector(9 downto 0);
    DATA_RDY        : out std_logic
    );
end EPROC_IN2;

architecture Behavioral of EPROC_IN2 is

signal edata_in_s : std_logic_vector(1 downto 0);
signal data_direct_8b10b_case,data_HDLC_case,DATA_OUT_s : std_logic_vector(9 downto 0);
signal drdy_direct_8b10b_case,drdy_HDLC_case,DATA_RDY_sig : std_logic;
signal ena_case0, ena_case1 : std_logic;
---

begin

--IG gen_enabled:    if (do_generate = true) generate
Module_enable: if (
                        ( (IC_Elink                       = true)                    ) or
                        (((EnableToHo_Egroup0Eproc2_HDLC  = true) and (egroupID = 0) ) or
                        ( (EnableToHo_Egroup0Eproc2_8b10b = true) and (egroupID = 0))) or
                        (((EnableToHo_Egroup1Eproc2_HDLC  = true) and (egroupID = 1) ) or
                        ( (EnableToHo_Egroup1Eproc2_8b10b = true) and (egroupID = 1))) or
                        (((EnableToHo_Egroup2Eproc2_HDLC  = true) and (egroupID = 2) ) or
                        ( (EnableToHo_Egroup2Eproc2_8b10b = true) and (egroupID = 2))) or
                        (((EnableToHo_Egroup3Eproc2_HDLC  = true) and (egroupID = 3) ) or
                        ( (EnableToHo_Egroup3Eproc2_8b10b = true) and (egroupID = 3))) or
                        (((EnableToHo_Egroup4Eproc2_HDLC  = true) and (egroupID = 4) ) or
                        ( (EnableToHo_Egroup4Eproc2_8b10b = true) and (egroupID = 4))) or
                        (((EnableToHo_Egroup7Eproc2_HDLC  = true) and (egroupID = 7) ) or --EC E-link
                        ( (EnableToHo_Egroup7Eproc2_8b10b = true) and (egroupID = 7))) or
                        ( (includeNoEncodingCase          = true)                    )
                    ) generate

--
in_sel: process(swap_inputbits,EDATA_IN) -- bit swapping on a GBT frame level
begin   
    if swap_inputbits = '1' then
        edata_in_s <= EDATA_IN(0) & EDATA_IN(1);
    else
        edata_in_s <= EDATA_IN;
    end if;	   
end process;
--

-------------------------------------------------------------------------------------------
-- case 0: direct & 8b10b ENCODING b00 / b01
-------------------------------------------------------------------------------------------
Direct_and_8b10b_generated: if  (
                                    ((EnableToHo_Egroup0Eproc2_8b10b = true) and (egroupID = 0)) or
                                    ((EnableToHo_Egroup1Eproc2_8b10b = true) and (egroupID = 1)) or
                                    ((EnableToHo_Egroup2Eproc2_8b10b = true) and (egroupID = 2)) or
                                    ((EnableToHo_Egroup3Eproc2_8b10b = true) and (egroupID = 3)) or
                                    ((EnableToHo_Egroup4Eproc2_8b10b = true) and (egroupID = 4)) or
                                    ((EnableToHo_Egroup7Eproc2_8b10b = true) and (egroupID = 7)) or  --EC E-link
                                    ((includeNoEncodingCase          = true)                   )
                                ) generate

ena_case0 <= '1' when (ENCODING(1) = '0' and ENA = '1') else '0';

direct_8b10b_case: entity work.EPROC_IN2_DEC8b10b 
generic map (
                egroupID                        => egroupID,
                EnableToHo_Egroup0Eproc2_8b10b  => EnableToHo_Egroup0Eproc2_8b10b,
                EnableToHo_Egroup1Eproc2_8b10b  => EnableToHo_Egroup1Eproc2_8b10b,
                EnableToHo_Egroup2Eproc2_8b10b  => EnableToHo_Egroup2Eproc2_8b10b,
                EnableToHo_Egroup3Eproc2_8b10b  => EnableToHo_Egroup3Eproc2_8b10b,
                EnableToHo_Egroup4Eproc2_8b10b  => EnableToHo_Egroup4Eproc2_8b10b,
                EnableToHo_Egroup7Eproc2_8b10b  => EnableToHo_Egroup7Eproc2_8b10b,  --EC E-link
                includeNoEncodingCase           => includeNoEncodingCase,
                GENERATE_FEI4B          		=> GENERATE_FEI4B
            )
port map(
    bitCLK      => bitCLK,
    rst         => rst,
    ena         => ena_case0,
	thCR_REVERSE_10B => thCR_REVERSE_10B,
    encoding    => ENCODING(0),
    edataIN     => edata_in_s,
    dataOUT     => data_direct_8b10b_case,
    dataOUTrdy  => drdy_direct_8b10b_case
	);

end generate Direct_and_8b10b_generated;

-- can't add the includeNoEncodingCase generic into this check since most of the time its value is in flase state
Direct_and_8b10b_almost_disable: if (
                                        ((EnableToHo_Egroup0Eproc2_8b10b = false) and (egroupID = 0)) or
                                        ((EnableToHo_Egroup1Eproc2_8b10b = false) and (egroupID = 1)) or
                                        ((EnableToHo_Egroup2Eproc2_8b10b = false) and (egroupID = 2)) or
                                        ((EnableToHo_Egroup3Eproc2_8b10b = false) and (egroupID = 3)) or
                                        ((EnableToHo_Egroup4Eproc2_8b10b = false) and (egroupID = 4)) or
                                        ((EnableToHo_Egroup7Eproc2_8b10b = false) and (egroupID = 7))     --EC E-link
                                    ) generate

-- the module can't be disable if the generic is set
Direct_and_8b10b_disable: if    (
                                    (includeNoEncodingCase = false)
                                ) generate

--IG    data_direct_8b10b_case  <= "1100000000";
    data_direct_8b10b_case <= (others => '0'); --IG:  drdy_direct_8b10b_case signal is set to '0' then this value doesn't matter 
    drdy_direct_8b10b_case  <= '0';

end generate Direct_and_8b10b_disable;
end generate Direct_and_8b10b_almost_disable;

-------------------------------------------------------------------------------------------
-- case 1: HDLC ENCODING b10
-------------------------------------------------------------------------------------------
HDLC_generated: if  (
                        ((IC_Elink                      = true)                   ) or
                        ((EnableToHo_Egroup0Eproc2_HDLC = true) and (egroupID = 0)) or
                        ((EnableToHo_Egroup1Eproc2_HDLC = true) and (egroupID = 1)) or
                        ((EnableToHo_Egroup2Eproc2_HDLC = true) and (egroupID = 2)) or
                        ((EnableToHo_Egroup3Eproc2_HDLC = true) and (egroupID = 3)) or
                        ((EnableToHo_Egroup4Eproc2_HDLC = true) and (egroupID = 4)) or
                        ((EnableToHo_Egroup7Eproc2_HDLC = true) and (egroupID = 7))    --EC E-link
                    ) generate

ena_case1 <= '1' when (ENCODING = "10" and ENA = '1') else '0';

decHDLC_case: entity work.EPROC_IN2_HDLC 
port map(  
    bitCLK      => bitCLK,
    bitCLKx2    => bitCLKx2,
    rst         => rst,
    ena         => ena_case1,
    edataIN     => edata_in_s,
    dataOUT     => data_HDLC_case,
    dataOUTrdy  => drdy_HDLC_case
    );

end generate HDLC_generated;

-- can't add the IC_Elink generic into this check since most of the time its value is in flase state
HDLC_almost_disable: if   (
                                ((EnableToHo_Egroup0Eproc2_HDLC = false) and (egroupID = 0)) or
                                ((EnableToHo_Egroup1Eproc2_HDLC = false) and (egroupID = 1)) or
                                ((EnableToHo_Egroup2Eproc2_HDLC = false) and (egroupID = 2)) or
                                ((EnableToHo_Egroup3Eproc2_HDLC = false) and (egroupID = 3)) or
                                ((EnableToHo_Egroup4Eproc2_HDLC = false) and (egroupID = 4)) or
                                ((EnableToHo_Egroup7Eproc2_HDLC = false) and (egroupID = 7))    --EC E-link
                            ) generate
-- the module can't be disable if the generic is set
HDLC_disable: if    (
                        (IC_Elink = false)
                    ) generate

--IG    data_HDLC_case  <= "1100000000";
    data_HDLC_case <= (others => '0'); --IG:  drdy_HDLC_case signal is set to '0' then this value doesn't matter 
    drdy_HDLC_case  <= '0';

end generate HDLC_disable;
end generate HDLC_almost_disable;
	
-------------------------------------------------------------------------------------------
-- output data/rdy according to the encoding settings
-------------------------------------------------------------------------------------------
DATA_OUT_MUX2_10bit: entity work.MUX2_Nbit 
generic map(N=>10)
port map(
    data0       => data_direct_8b10b_case,
    data1       => data_HDLC_case,
    sel         => ENCODING(1),
    data_out    => DATA_OUT_s
	);
--
DATA_RDY_sig <= drdy_direct_8b10b_case or drdy_HDLC_case;
--
DATA_RDY <= DATA_RDY_sig;
DATA_OUT <= DATA_OUT_s;
--------------------
--IG end generate gen_enabled;
end generate Module_enable;
--
--IG gen_disabled: if do_generate = false generate

-- can't add the IC_Elink and includeNoEncodingCase generics into this check since most of the time they are in flase state
Module_almost_disable: if   (
                                (((EnableToHo_Egroup0Eproc2_HDLC  = false) and (egroupID = 0) ) and
                                ( (EnableToHo_Egroup0Eproc2_8b10b = false) and (egroupID = 0))) or
                                (((EnableToHo_Egroup1Eproc2_HDLC  = false) and (egroupID = 1) ) and
                                ( (EnableToHo_Egroup1Eproc2_8b10b = false) and (egroupID = 1))) or
                                (((EnableToHo_Egroup2Eproc2_HDLC  = false) and (egroupID = 2) ) and
                                ( (EnableToHo_Egroup2Eproc2_8b10b = false) and (egroupID = 2))) or
                                (((EnableToHo_Egroup3Eproc2_HDLC  = false) and (egroupID = 3) ) and
                                ( (EnableToHo_Egroup3Eproc2_8b10b = false) and (egroupID = 3))) or
                                (((EnableToHo_Egroup4Eproc2_HDLC  = false) and (egroupID = 4) ) and
                                ( (EnableToHo_Egroup4Eproc2_8b10b = false) and (egroupID = 4)))
                            ) generate
-- the module can't be disable if one of these generic is set
Module_disable: if  (
                        ((IC_Elink              = false) and
                         (includeNoEncodingCase = false))
                    ) generate

--IG    DATA_OUT <= "1100000000";
    DATA_OUT <= (others => '0'); --IG:  DATA_RDY signal is set to '0' then this value doesn't matter 
    DATA_RDY <= '0';

--IG end generate gen_disabled;
end generate Module_disable;
end generate Module_almost_disable;

end Behavioral;

