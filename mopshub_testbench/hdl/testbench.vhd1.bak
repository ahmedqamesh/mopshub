-- VHDL Architecture canakari.testbench.behave
--
-- Created:
--          by - awalsemann.UNKNOWN (IMES17)
--          at - 11:29:44 12.02.2018
--
-- using Mentor Graphics HDL Designer(TM) 2016.1 (Build 8)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY work;
USE work.config;
USE work.can_pattern_gen;

ENTITY tb_canakari IS
END ENTITY tb_canakari;
LIBRARY mopshub_lib;
USE mopshub_lib.dut.ALL;

--
ARCHITECTURE behave OF tb_canakari IS

  component dut IS
   PORT(clock            : IN std_logic;
       reset             : IN  std_logic;
       address           : IN  std_logic_vector(4 DOWNTO 0);
       readdata          : OUT std_logic_vector(15 DOWNTO 0);
       writedata         : IN  std_logic_vector (15 DOWNTO 0);
       cs                : IN  std_logic;
       read_n            : IN  std_logic;
       write_n           : IN  std_logic;
       irq               : OUT std_logic;
       irqstatus         : OUT std_logic;
       irqsuctra         : OUT std_logic;
       irqsucrec         : OUT std_logic;
       rx                : IN  std_logic;
       tx                : OUT std_logic; 
       statedeb          : OUT std_logic_vector(7 DOWNTO 0);
       Prescale_EN_debug : OUT std_logic; 
       bitst             : OUT std_logic_vector(6 DOWNTO 0) ); 
  end component dut;
  

  TYPE stimulus_type IS (H_RESET,S_RESET,N_CONFIG,SEND1,SEND2,RECV1,RECV2);

--############ DUT Connections ####################### 
  signal clk : std_logic := '1';
  signal reset : std_logic := '0';
  signal address : std_logic_vector(4 downto 0) := (others => '0');
  signal writedata : std_logic_vector(15 downto 0) := (others => '0');
  signal readdata : std_logic_vector(15 downto 0) := (others => '0');
  signal cs : std_logic := '0';
  signal read_n : std_logic := '0';
  signal write_n : std_logic := '0';
  signal irq : std_logic := '0';
  signal rx : std_logic := '0';
  signal tx : std_logic := '0';
  signal statedeb : std_logic_vector(7 DOWNTO 0) := (others=>'0');
  signal Prescale_EN_debug : std_logic := '0';
  signal bitst : std_logic_vector(6 DOWNTO 0)  := (others=>'0'); 
  signal irqstatus : std_logic;
  signal irqsuctra : std_logic;
  signal irqsucrec : std_logic;
 
 
--############ Patterngenerator Signals #######################  
  signal start_pg : std_logic := '0';
  signal tx_pg : std_logic := 'U';
  signal rx_pg : std_logic := '1';
  signal tx_ack_pg : std_logic := '1';
  signal rx_ack_pg : std_logic := '1';
  signal tx_type : can_pattern_gen.frame_type := can_pattern_gen.default_frame_type;


--############  Simulation signals #######################
  signal stimulus_step : stimulus_type := H_RESET;  


--############  Simulation config #######################
  --change clk_freq (main clk) only    
  constant clk_freq : integer range 2 to 2147483647 := 10000000;
  constant clk_half_period : time := (500000000/clk_freq)*1 ns;
  constant reset_time : time := (1000000000/clk_freq)*4 ns;


--############  DUT Configuration #######################  
  --change configuration parameter here 
  signal can_prescaler : integer range 2 to 32 := 10;
  signal can_tseg1 : integer range 1 to 8 := 4;
  signal can_tseg2 : integer range 1 to 8 := 5;
  signal can_sjw : integer range 0 to 7 := 2;

   
--############ Patterngenerator Check #######################
  --set canbus bitrate here 
  signal can_bitrate : integer range 1 to 2147483647 := 100000;
  --value must match the configured bitrate of the dut(tseg1,tseg2,etc.) 
BEGIN
  assert(can_bitrate = config.calculate_bitrate(clk_freq,can_prescaler,can_tseg1,can_tseg2))
  report "Bitrate mismatch: DUT - " & integer'image(config.calculate_bitrate(clk_freq,can_prescaler,can_tseg1,can_tseg2)) & " vs. PG - " & integer'image(can_bitrate)  severity failure;


--############ DUT Portmap #######################  
  dut1 : dut port map(
     clock => clk,
     reset => reset,
     address => address,
     readdata => readdata,
     writedata => writedata,
     cs => cs,
     read_n => read_n,
     write_n => write_n,
     irq => irq,
     irqstatus => irqstatus,
     irqsuctra => irqsuctra,
     irqsucrec => irqsucrec,
     rx => rx,
     tx => tx,
     statedeb => statedeb,
     Prescale_EN_debug => Prescale_EN_debug, 
     bitst => bitst); 


--############ Main-CLK generation #######################    
  clk_stimulus: process
  begin
    clk <= '1';
    wait for clk_half_period;
    clk <= '0';
    wait for clk_half_period;
  end process;


--############ Patterngen Sync #######################    
  sync: process
  begin
    wait until falling_edge(tx);
    start_pg <= '1';
    wait until rising_edge(clk);
    start_pg <= '0';
    wait until rising_edge(tx);
  end process;


--############ Signal Comparision #######################     
  compare: process(clk)
  begin
    if rising_edge(clk) then
      case stimulus_step is
         when SEND1 =>
            assert((tx = tx_pg) or (tx_pg = 'U')) report "Error during TX - Waveform mismatch: " & can_pattern_gen.to_string(tx_type) severity note;
         when SEND2 =>
            assert((tx = tx_pg) or (tx_pg = 'U')) report "Error during TX - Waveform mismatch: " & can_pattern_gen.to_string(tx_type) severity note;
          when RECV1 => 
            assert((rx = '0') or (rx_ack_pg /= '0'))  report "Error during RX - No ACK" severity note; 
        when others =>
      end case;
    end if;
  end process;


--############ Main Stimulus Process #######################  
  stimulus: process
  
--############  RX-Package variables #######################  
  variable rx_payload : std_logic_vector(63 downto 0);
  variable rx_length : integer range 0 to 8;
  variable rx_identifier : std_logic_vector(28 downto 0);
  variable rx_remote : std_logic;
  variable rx_extended : std_logic; 
  
--############  TX-Package variables #######################  
  variable identifier : std_logic_vector(28 downto 0) :=  (others=>'0'); 
  variable ext_frame : std_logic := '0';
  variable remote : std_logic := '0';
  variable payload : std_logic_vector(63 downto 0) := (others=>'0'); 
  variable length : integer range 0 to 8 := 0;
  
  begin
    wait until rising_edge(clk);
    case stimulus_step is
 
--############  Async(hard)-Reset #######################       
        when H_RESET =>
          reset <= '0';
          wait for reset_time;
          reset <= '1';
          
          stimulus_step <= S_RESET;
          
--############  Soft-Reset #######################            
        when S_RESET =>
          config.soft_reset(clk,address,writedata,readdata,cs,read_n,write_n);
          wait for reset_time;
          
          stimulus_step <= N_CONFIG;
          
--############  Configuration #######################            
        when N_CONFIG =>        
          config.init_controller(can_prescaler,can_tseg1,can_tseg2,can_sjw,clk,address,writedata,readdata,cs,read_n,write_n);
          config.configure_accmask(X"0000000" & '0', clk,address,writedata,readdata,cs,read_n,write_n);      
          
          stimulus_step <= SEND1;

--############ Test TX-Package 1 #######################                
        when SEND1 =>
--############ Configure TX-Package #######################  
          identifier := "100000000000000000" & "10101010100";
          --identifier := '0' & X"9ABCDEF";
          ext_frame := '0';
          remote := '0';
          payload := X"00BBFF0000000000";
          length := 3; --error with 3
                    
          config.send_package(payload,length,identifier,remote,ext_frame,clk,address,writedata,readdata,cs,read_n,write_n);
          can_pattern_gen.gen_tx_message(payload,length,identifier,remote,ext_frame,clk_freq,can_bitrate,clk,start_pg,tx_pg,tx_type,tx_ack_pg);
                   
          stimulus_step <= SEND2;
          
--############ Test TX-Package 2 #######################           
        when SEND2 =>
          wait for 10us; 
          identifier := "100110000001100000" & "10101010100";
          ext_frame := '1';
          remote := '1';
          payload := X"0000000000000000";
          length := 2;  
                     
          config.send_package(payload,length,identifier,remote,ext_frame,clk,address,writedata,readdata,cs,read_n,write_n);
          can_pattern_gen.gen_tx_message(payload,length,identifier,remote,ext_frame,clk_freq,can_bitrate,clk,start_pg,tx_pg,tx_type,tx_ack_pg);
          
          stimulus_step <= RECV1;
          
 --############ Test RX-Package 1 #######################            
        when RECV1 => 
          wait for 100us;
          identifier := "000000000000000000" & "10101010100";
          ext_frame := '0';
          remote := '0';
          payload := X"A1B1100000000000";
          length := 3;  
          can_pattern_gen.gen_rx_message(payload,length,identifier,remote,ext_frame,clk_freq,can_bitrate,clk,rx_pg,tx_type,rx_ack_pg);
          config.wait_rx(clk,address,writedata,readdata,cs,read_n,write_n);
          config.read_package(rx_payload,rx_length,rx_identifier,rx_remote,rx_extended,clk,address,writedata,readdata,cs,read_n,write_n);
          
          assert(rx_payload = payload) report "Error during RX - Payload mismatch" severity note;
          assert(rx_length = length) report "Error during RX - Length mismatch" severity note;
          assert(rx_identifier = identifier) report "Error during RX - Identifier mismatch" severity note;
          assert(rx_extended = ext_frame) report "Error during RX - Frameformat mismatch" severity note;
          assert(rx_remote = remote) report "Error during RX - Remotetype mismatch" severity note;
          
          stimulus_step <= RECV2;
        when RECV2 => 
          assert false report "simulation done" severity failure; -- Beer; ends simulation
        
        when others =>
          stimulus_step <= H_RESET;
    end case;
  end process;
  
  rx <= ((tx and reset) or (not reset)) and tx_ack_pg and rx_pg;
END ARCHITECTURE behave;

