----------------------------------------------------------------------------------
--! Company:  EDAQ WIS.  
--! Engineer: juna
--! 
--! Create Date:    18/03/2015
--! Module Name:    EPROC_OUT2
--! Project Name:   FELIX
----------------------------------------------------------------------------------
--! Use standard library
library ieee,work;
use ieee.std_logic_1164.all;
use work.all;

--! E-link processor, 2bit output
entity EPROC_OUT2 is
generic     (
                IC_Elink                        : boolean := false;
                egroupID                        : integer range 0 to 7 := 0;--->0
                EnableFrHo_Egroup0Eproc2_HDLC   : boolean := false;
                EnableFrHo_Egroup0Eproc2_8b10b  : boolean := true; ----------->
                EnableFrHo_Egroup1Eproc2_HDLC   : boolean := false;
                EnableFrHo_Egroup1Eproc2_8b10b  : boolean := true; ----------->
                EnableFrHo_Egroup2Eproc2_HDLC   : boolean := false;
                EnableFrHo_Egroup2Eproc2_8b10b  : boolean := true; ----------->
                EnableFrHo_Egroup3Eproc2_HDLC   : boolean := false;
                EnableFrHo_Egroup3Eproc2_8b10b  : boolean := true;
                EnableFrHo_Egroup4Eproc2_HDLC   : boolean := false;
                EnableFrHo_Egroup4Eproc2_8b10b  : boolean := true;
                EnableFrHo_Egroup5Eproc2_HDLC   : boolean := false; --EC E-link
                EnableFrHo_Egroup5Eproc2_8b10b  : boolean := true;  --EC E-link
                --IG            do_generate             : boolean := true;
                includeNoEncodingCase           : boolean := true;
                HDLC_IDLE_STATE                 : std_logic_vector(7 downto 0) := (others=>'1') --IG: determine the HDLC line idle state. for EC: 0x7F, for IC: 0xFF
            );
port    ( 
            bitCLK          : in  std_logic;
            bitCLKx2        : in  std_logic;
            bitCLKx4        : in  std_logic;
            rst             : in  std_logic;
            ENA             : in  std_logic;
            swap_outbits    : in  std_logic;
            getDataTrig     : out std_logic; -- @ bitCLKx4
            ENCODING        : in  std_logic_vector (3 downto 0);
            EDATA_OUT       : out std_logic_vector (1 downto 0);
            TTCin           : in  std_logic_vector (1 downto 0);
            fhCR_REVERSE_10B: in  std_logic;
            DATA_IN         : in  std_logic_vector (9 downto 0);
            DATA_RDY        : in  std_logic;
            toHostXoff      : in  std_logic    
        );
end EPROC_OUT2;

architecture Behavioral of EPROC_OUT2 is

constant zeros2bit  : std_logic_vector (1 downto 0) := (others=>'0');
signal EdataOUT_ENC8b10b_case, EdataOUT_direct_case, EdataOUT_HDLC_case, EdataOUT_TTC0_case : std_logic_vector (1 downto 0);
signal rst_s, rst_case000, rst_case001, rst_case010, rst_case011 : std_logic;
signal getDataTrig_ENC8b10b_case, getDataTrig_direct_case, getDataTrig_HDLC_case, getDataTrig_TTC_case : std_logic;

signal edata_out_s : std_logic_vector (1 downto 0);

begin

--IG gen_enabled: if do_generate = true generate
Module_enable: if (
                        ( (IC_Elink                       = true)                    ) or
                        (((EnableFrHo_Egroup0Eproc2_HDLC  = true) and (egroupID = 0) ) or
                        ( (EnableFrHo_Egroup0Eproc2_8b10b = true) and (egroupID = 0))) or
                        (((EnableFrHo_Egroup1Eproc2_HDLC  = true) and (egroupID = 1) ) or
                        ( (EnableFrHo_Egroup1Eproc2_8b10b = true) and (egroupID = 1))) or
                        (((EnableFrHo_Egroup2Eproc2_HDLC  = true) and (egroupID = 2) ) or
                        ( (EnableFrHo_Egroup2Eproc2_8b10b = true) and (egroupID = 2))) or
                        (((EnableFrHo_Egroup3Eproc2_HDLC  = true) and (egroupID = 3) ) or
                        ( (EnableFrHo_Egroup3Eproc2_8b10b = true) and (egroupID = 3))) or
                        (((EnableFrHo_Egroup4Eproc2_HDLC  = true) and (egroupID = 4) ) or
                        ( (EnableFrHo_Egroup4Eproc2_8b10b = true) and (egroupID = 4))) or
                        (((EnableFrHo_Egroup5Eproc2_HDLC  = true) and (egroupID = 5) ) or --EC E-link
                        ( (EnableFrHo_Egroup5Eproc2_8b10b = true) and (egroupID = 5))) or
                        ( (includeNoEncodingCase          = true)                    )
                    ) generate

rst_s <= rst or (not ENA);

-------------------------------------------------------------------------------------------
-- case 0: direct data, no delimeter...
-------------------------------------------------------------------------------------------
direct_data_enabled: if includeNoEncodingCase = true generate
rst_case000 <= '0' when ((rst_s = '0') and (ENCODING(2 downto 0) = "000")) else '1';
direct_case: entity work.EPROC_OUT2_direct
port map(
    bitCLK      => bitCLK,
    bitCLKx2    => bitCLKx2,
    bitCLKx4    => bitCLKx4,
    rst         => rst_case000, 
    getDataTrig => getDataTrig_direct_case,  
    edataIN     => DATA_IN,
    edataINrdy  => DATA_RDY,
    EdataOUT    => EdataOUT_direct_case
    );
end generate direct_data_enabled;
--
direct_data_disabled: if includeNoEncodingCase = false generate
rst_case000 <= '0';
EdataOUT_direct_case <= (others=>'0');
getDataTrig_direct_case <= '0';
end generate direct_data_disabled;
--

-------------------------------------------------------------------------------------------
-- case 1: DEC8b10b
-------------------------------------------------------------------------------------------

Enc_8b10b_generated: if  (
                                    ((EnableFrHo_Egroup0Eproc2_8b10b = true) and (egroupID = 0)) or
                                    ((EnableFrHo_Egroup1Eproc2_8b10b = true) and (egroupID = 1)) or
                                    ((EnableFrHo_Egroup2Eproc2_8b10b = true) and (egroupID = 2)) or
                                    ((EnableFrHo_Egroup3Eproc2_8b10b = true) and (egroupID = 3)) or
                                    ((EnableFrHo_Egroup4Eproc2_8b10b = true) and (egroupID = 4)) or
                                    ((EnableFrHo_Egroup5Eproc2_8b10b = true) and (egroupID = 5))  --EC E-link
                                ) generate

rst_case001 <= '0' when ((rst_s = '0') and (ENCODING(2 downto 0) = "001")) else '1';
--
ENC8b10b_case: entity work.EPROC_OUT2_ENC8b10b
port map(
    bitCLK      => bitCLK,
    bitCLKx2    => bitCLKx2,
    bitCLKx4    => bitCLKx4,
    rst         => rst_case001, 
    getDataTrig => getDataTrig_ENC8b10b_case,  
    edataIN     => DATA_IN,
    edataINrdy  => DATA_RDY,
    fhCR_REVERSE_10B => fhCR_REVERSE_10B,
    EdataOUT    => EdataOUT_ENC8b10b_case,
    toHostXoff  => toHostXoff
    );

end generate Enc_8b10b_generated;

Enc_8b10b_disable: if  (
                                    ((EnableFrHo_Egroup0Eproc2_8b10b = false) and (egroupID = 0)) or
                                    ((EnableFrHo_Egroup1Eproc2_8b10b = false) and (egroupID = 1)) or
                                    ((EnableFrHo_Egroup2Eproc2_8b10b = false) and (egroupID = 2)) or
                                    ((EnableFrHo_Egroup3Eproc2_8b10b = false) and (egroupID = 3)) or
                                    ((EnableFrHo_Egroup4Eproc2_8b10b = false) and (egroupID = 4)) or
                                    ((EnableFrHo_Egroup5Eproc2_8b10b = false) and (egroupID = 5))  --EC E-link
                                ) generate

    getDataTrig_ENC8b10b_case   <= '0';
    EdataOUT_ENC8b10b_case      <= "00";
    
end generate Enc_8b10b_disable;


-------------------------------------------------------------------------------------------
-- case 2: HDLC
-------------------------------------------------------------------------------------------
HDLC_generated: if  (
                        ((IC_Elink                      = true)                   ) or
                        ((EnableFrHo_Egroup0Eproc2_HDLC = true) and (egroupID = 0)) or
                        ((EnableFrHo_Egroup1Eproc2_HDLC = true) and (egroupID = 1)) or
                        ((EnableFrHo_Egroup2Eproc2_HDLC = true) and (egroupID = 2)) or
                        ((EnableFrHo_Egroup3Eproc2_HDLC = true) and (egroupID = 3)) or
                        ((EnableFrHo_Egroup4Eproc2_HDLC = true) and (egroupID = 4)) or
                        ((EnableFrHo_Egroup5Eproc2_HDLC = true) and (egroupID = 5))    --EC E-link
                    ) generate


rst_case010 <= '0' when ((rst_s = '0') and (ENCODING(2 downto 0) = "010")) else '1';
--
HDLC_case: entity work.EPROC_OUT2_HDLC 
generic map (
                HDLC_IDLE_STATE => HDLC_IDLE_STATE --IG: determine the HDLC line idle state. for EC: 0x7F, for IC: 0xFF
            )
port map(
            bitCLK      => bitCLK,
            bitCLKx2    => bitCLKx2,
            bitCLKx4    => bitCLKx4,
            rst         => rst_case010,
            getDataTrig => getDataTrig_HDLC_case, -- output, data request
            edataIN     => DATA_IN,
            edataINrdy  => DATA_RDY,
            EdataOUT    => EdataOUT_HDLC_case
        );


end generate HDLC_generated;

-- can't add the IC_Elink generic into this check since most of the time its value is in flase state
HDLC_almost_disable: if   (
                                ((EnableFrHo_Egroup0Eproc2_HDLC = false) and (egroupID = 0)) or
                                ((EnableFrHo_Egroup1Eproc2_HDLC = false) and (egroupID = 1)) or
                                ((EnableFrHo_Egroup2Eproc2_HDLC = false) and (egroupID = 2)) or
                                ((EnableFrHo_Egroup3Eproc2_HDLC = false) and (egroupID = 3)) or
                                ((EnableFrHo_Egroup4Eproc2_HDLC = false) and (egroupID = 4)) or
                                ((EnableFrHo_Egroup5Eproc2_HDLC = false) and (egroupID = 5))    --EC E-link
                            ) generate

-- the module can't be disable if the generic is set
HDLC_disable: if  (
                        (IC_Elink = false)
                    ) generate

    getDataTrig_HDLC_case   <= '0';
    EdataOUT_HDLC_case      <= "00";

end generate HDLC_disable;
end generate HDLC_almost_disable;

-------------------------------------------------------------------------------------------
-- case 3: TTC-0 
-------------------------------------------------------------------------------------------
rst_case011 <= '0' when ((rst_s = '0') and (ENCODING(2 downto 0) = "011")) else '1';
--
getDataTrig_TTC_case <= '0'; --'1' when (ENCODING(2 downto 0) = "011") else '0';
--
ttc_r: process(bitCLK)
begin
    if bitCLK'event and bitCLK = '1' then
        if rst_case011 = '1' then
            EdataOUT_TTC0_case <= zeros2bit;
        else
            EdataOUT_TTC0_case <= TTCin;
        end if;	   
	end if;
end process;
--

-------------------------------------------------------------------------------------------
-- output data and busy according to the encoding settings
-------------------------------------------------------------------------------------------
dataOUTmux: entity work.MUX4_Nbit 
generic map (N=>2)
port map( 
	data0    => EdataOUT_direct_case,
	data1    => EdataOUT_ENC8b10b_case,
	data2    => EdataOUT_HDLC_case,
	data3    => EdataOUT_TTC0_case,
	sel      => ENCODING(1 downto 0),
	data_out => edata_out_s
	);
--
getDataTrig  <= ENA and (getDataTrig_TTC_case or getDataTrig_HDLC_case or getDataTrig_ENC8b10b_case or getDataTrig_direct_case);
--

--IG end generate gen_enabled;
end generate Module_enable;
--
--IG gen_disabled: if do_generate = false generate

-- can't add the IC_Elink and includeNoEncodingCase generics into this check since most of the time they are in flase state
Module_almost_disable: if   (
                                (((EnableFrHo_Egroup0Eproc2_HDLC  = false) and (egroupID = 0) ) and
                                ( (EnableFrHo_Egroup0Eproc2_8b10b = false) and (egroupID = 0))) or
                                (((EnableFrHo_Egroup1Eproc2_HDLC  = false) and (egroupID = 1) ) and
                                ( (EnableFrHo_Egroup1Eproc2_8b10b = false) and (egroupID = 1))) or
                                (((EnableFrHo_Egroup2Eproc2_HDLC  = false) and (egroupID = 2) ) and
                                ( (EnableFrHo_Egroup2Eproc2_8b10b = false) and (egroupID = 2))) or
                                (((EnableFrHo_Egroup3Eproc2_HDLC  = false) and (egroupID = 3) ) and
                                ( (EnableFrHo_Egroup3Eproc2_8b10b = false) and (egroupID = 3))) or
                                (((EnableFrHo_Egroup4Eproc2_HDLC  = false) and (egroupID = 4) ) and
                                ( (EnableFrHo_Egroup4Eproc2_8b10b = false) and (egroupID = 4))) or
                                (((EnableFrHo_Egroup5Eproc2_HDLC  = false) and (egroupID = 5) ) and --EC E-link
                                ( (EnableFrHo_Egroup5Eproc2_8b10b = false) and (egroupID = 5)))
                            ) generate
-- the module can't be disable if one of these generic is set
Module_disable: if  (
                        ((IC_Elink              = false) and
                         (includeNoEncodingCase = false))
                    ) generate

    edata_out_s <= (others=>'0');
    getDataTrig <= '0';

--IG end generate gen_disabled;
end generate Module_disable;
end generate Module_almost_disable;

--
out_sel: process(swap_outbits,edata_out_s)
begin   
    if swap_outbits = '1' then
        EDATA_OUT <= edata_out_s(0) & edata_out_s(1);
    else
        EDATA_OUT <= edata_out_s;
    end if;	   
end process;
--


end Behavioral;

