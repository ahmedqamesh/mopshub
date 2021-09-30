
architecture Behavioral of Decoder8b10b is

signal DecoderAligned_s: std_logic;
signal ElinkBusy_s : std_logic;
signal FramingError_s : std_logic;
signal decoder_out : std_logic_vector(7 downto 0) := (others => '0');--Output of 8b10b decoder
signal decoder_out_p1 : std_logic_vector(7 downto 0) := (others => '0');--Second pipeline to align EOP with last output of chunk
signal CharIsK : std_logic; --Output of 8b10b decoder
signal ISK_comma, ISK_comma_p1: std_logic; --, ISK_soc, ISK_eoc, ISK_sob, ISK_eob : std_logic;
signal Char_SOC, Char_EOC, Char_SOB, Char_EOB, Char_comma: std_logic;
signal DataInValid_p1 : std_logic; --One pipeline delayed synchronous with 8b10b decoder.
signal DataInValid_p2 : std_logic; --Second pipeline to aling EOP with last output of chunk

signal AlignmentCounter : integer range 0 to 3;
signal ReceivingState: std_logic;
signal disp_err, code_err: std_logic;

begin

GBT_mode: if (GENERATE_FEI4B = false and GENERATE_LCB_ENC = false) generate
    ISK_comma   <=  '1' when (DataIn = COMMAp or DataIn = COMMAn) else '0';
    Char_comma  <=  '1' when (decoder_out = Kchar_comma and CharIsK = '1' and DataInValid_p1 = '1') else '0';
    Char_SOC    <=  '1' when (decoder_out = Kchar_sop   and CharIsK = '1' and DataInValid_p1 = '1') else '0';
    Char_EOC    <=  '1' when (decoder_out = Kchar_eop   and CharIsK = '1' and DataInValid_p1 = '1') else '0';
    Char_SOB    <=  '1' when (decoder_out = Kchar_sob   and CharIsK = '1' and DataInValid_p1 = '1') else '0';
    Char_EOB    <=  '1' when (decoder_out = Kchar_eob   and CharIsK = '1' and DataInValid_p1 = '1') else '0';
end generate GBT_mode;

FEI4B: if (GENERATE_FEI4B) generate
    ISK_comma   <=  '1' when (DataIn = FEI4B_COMMAp or DataIn = FEI4B_COMMAn) else '0';
    Char_comma  <=  '1' when (decoder_out = FEI4B_Kchar_comma and CharIsK = '1' and DataInValid_p1 = '1') else '0';
    Char_SOC    <=  '1' when (decoder_out = FEI4B_Kchar_sop   and CharIsK = '1' and DataInValid_p1 = '1') else '0';
    Char_EOC    <=  '1' when (decoder_out = FEI4B_Kchar_eop   and CharIsK = '1' and DataInValid_p1 = '1') else '0';
    Char_SOB    <=  '0';
    Char_EOB    <=  '0';
end generate FEI4B;

-- DG: block below still configured for FEI4, only names were changed
LCB: if (GENERATE_LCB_ENC) generate
    ISK_comma   <=  '1' when (DataIn = LCB_COMMAp or DataIn = LCB_COMMAn) else '0';
    Char_comma  <=  '1' when (decoder_out = LCB_Kchar_comma and CharIsK = '1' and DataInValid_p1 = '1') else '0';
    Char_SOC    <=  '1' when (decoder_out = LCB_Kchar_sop   and CharIsK = '1' and DataInValid_p1 = '1') else '0';
    Char_EOC    <=  '1' when (decoder_out = LCB_Kchar_eop   and CharIsK = '1' and DataInValid_p1 = '1') else '0';
    Char_SOB    <=  '0';
    Char_EOB    <=  '0';
end generate LCB;

--! Alignment of input stream.
alignment_proc: process(clk40, reset)
  variable AlignmentPulse: std_logic;
begin
    if reset = '1' then
        AlignmentCounter <= 0;
        DecoderAligned_s <= '0';
        BitSlip <= '0';
        ISK_comma_p1 <= '0';
    elsif rising_edge(clk40) then
        if DecoderAligned_s = '1' then
            AlignmentPulse := AlignmentPulseDeAlign;
        else
            AlignmentPulse := AlignmentPulseAlign;
        end if;
        if AlignmentPulse = '1' and AlignmentCounter < 2 then
            AlignmentCounter <= AlignmentCounter + 1;
        end if;
        BitSlip <= '0';
        if DataInValid = '1' then
            ISK_comma_p1 <= ISK_comma;
            if ISK_comma_p1 = '1' and ISK_comma = '1' then --Two consecutive commas received
                AlignmentCounter <= 0;
                DecoderAligned_s <= '1';
            end if;
            if AlignmentCounter = 2 then  --Two pulses received, meaning alignment timeout.
                AlignmentCounter <= 0;
                BitSlip <= (not ISK_comma) and (not ISK_comma_p1); --Rotate the gearbox 1 bit, don't bitslip if we see commas
                DecoderAligned_s <= '0';
            end if;
        end if;
        if ((code_err = '1') and (DecoderAligned_s = '1')) then
            DecoderAligned_s <= '0';
        end if;
        DataInValid_p1 <= DataInValid and DecoderAligned_s; --Only validate signal when Elink is aligned.
    end if;
end process;

DecoderAligned <= DecoderAligned_s;

-- 8b10b decoder
dec_8b10b_INST: entity work.dec_8b10b 
PORT MAP(
        reset => reset,
        clk => clk40,
        datain => DataIn,
        datain_valid => DataInValid,
        ko => CharIsK,
        dataout  => decoder_out,
        code_err => code_err,
        disp_err => disp_err
);


ElinkBusy <= ElinkBusy_s;
FramingError <= FramingError_s;

--! The following process does deframing, E-link busy detection and framing error detection
deframing_proc: process(clk40, reset)
begin
    if reset = '1' then
        ReceivingState <= '0';
        FramingError_s <= '0';
        ElinkBusy_s <= '0';
        DataInValid_p2 <= '0';
        EOP <= '0';
        DataOut <= x"00";
        DataOutValid <= '0';
    elsif rising_edge(clk40) then
        DataOutValid <= '0';
        EOP <= '0';
        if DecoderAligned_s = '0' and DataInValid_p2 = '1' then
            FramingError_s <= '1';
            DataInValid_p2 <= '0';
        end if;
        if DataInValid_p1 = '1' then
            DataInValid_p2 <= '0';
            if Char_SOC = '1' then
                if ReceivingState = '1' then
                    FramingError_s <= '1';
                end if;
                ReceivingState <= '1';
            end if;
            if Char_EOC = '1' then
                EOP <= '1';
                FramingError_s <= '0'; --Clear on end of chunk, unless ReceivingState = 0.
                if ReceivingState = '0' then
                    FramingError_s <= '1';
                end if;
                ReceivingState <= '0';
            end if;
            if CharIsK = '0' then
                DataInValid_p2 <= '1';
            end if;
            
            if Char_SOB = '1' then --start of busy
                ElinkBusy_s <= '1';
            end if;
            if Char_EOB = '1' then --end of busy
                ElinkBusy_s <= '0';
            end if;
            
            decoder_out_p1 <= decoder_out;
            if Char_comma = '1' and ReceivingState = '1' then --If a comma is in the middle of a chunk, skip everything in order to still recover EOP.
                decoder_out_p1 <= decoder_out_p1;
                DataInValid_p2 <= '0';
            end if;
            DataOut <= decoder_out_p1;
            DataOutValid <= DataInValid_p2;
            
        end if;
        
    end if;
end process;

end Behavioral;


