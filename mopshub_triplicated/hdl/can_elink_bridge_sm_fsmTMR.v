/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/can_elink_bridge_sm_fsmTMR.v                                                  *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:32                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: can_elink_bridge_sm_fsm.v                                                              *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-28 21:55:50                                                *
 *           File Size         : 10138                                                              *
 *           MD5 hash          : 8fed14ed2556bb0a287fb194079153a3                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module can_elink_bridge_SMTMR(
  input wire  clkA ,
  input wire  clkB ,
  input wire  clkC ,
  input wire  end_bus_trim_allA ,
  input wire  end_bus_trim_allB ,
  input wire  end_bus_trim_allC ,
  input wire  end_initA ,
  input wire  end_initB ,
  input wire  end_initC ,
  input wire  end_mon_initA ,
  input wire  end_mon_initB ,
  input wire  end_mon_initC ,
  input wire  end_read_canA ,
  input wire  end_read_canB ,
  input wire  end_read_canC ,
  input wire  end_read_elinkA ,
  input wire  end_read_elinkB ,
  input wire  end_read_elinkC ,
  input wire  end_write_canA ,
  input wire  end_write_canB ,
  input wire  end_write_canC ,
  input wire  end_write_elinkA ,
  input wire  end_write_elinkB ,
  input wire  end_write_elinkC ,
  input wire  endwaitA ,
  input wire  endwaitB ,
  input wire  endwaitC ,
  input wire  irq_can_recA ,
  input wire  irq_can_recB ,
  input wire  irq_can_recC ,
  input wire  irq_can_traA ,
  input wire  irq_can_traB ,
  input wire  irq_can_traC ,
  input wire  irq_elink_traA ,
  input wire  irq_elink_traB ,
  input wire  irq_elink_traC ,
  input wire  reset_all_doneA ,
  input wire  reset_all_doneB ,
  input wire  reset_all_doneC ,
  input wire  reset_irq_can_doneA ,
  input wire  reset_irq_can_doneB ,
  input wire  reset_irq_can_doneC ,
  input wire  rstA ,
  input wire  rstB ,
  input wire  rstC ,
  input wire  timeoutrstA ,
  input wire  timeoutrstB ,
  input wire  timeoutrstC ,
  output reg  abort_mesA ,
  output reg  abort_mesB ,
  output reg  abort_mesC ,
  output reg  end_can_procA ,
  output reg  end_can_procB ,
  output reg  end_can_procC ,
  output reg  entimeoutA ,
  output reg  entimeoutB ,
  output reg  entimeoutC ,
  output reg  irq_trim_oscA ,
  output reg  irq_trim_oscB ,
  output reg  irq_trim_oscC ,
  output reg  read_can_modeA ,
  output reg  read_can_modeB ,
  output reg  read_can_modeC ,
  output reg  reset_irq_canA ,
  output reg  reset_irq_canB ,
  output reg  reset_irq_canC ,
  output reg  reset_irq_can_allA ,
  output reg  reset_irq_can_allB ,
  output reg  reset_irq_can_allC ,
  output reg  reset_irq_rec_canA ,
  output reg  reset_irq_rec_canB ,
  output reg  reset_irq_rec_canC ,
  output reg  reset_irq_tra_canA ,
  output reg  reset_irq_tra_canB ,
  output reg  reset_irq_tra_canC ,
  output reg  send_mes_canA ,
  output reg  send_mes_canB ,
  output reg  send_mes_canC ,
  output reg  sign_on_sigA ,
  output reg  sign_on_sigB ,
  output reg  sign_on_sigC ,
  output reg  start_init_canA ,
  output reg  start_init_canB ,
  output reg  start_init_canC ,
  output reg  start_mon_initA ,
  output reg  start_mon_initB ,
  output reg  start_mon_initC ,
  output reg  start_read_canA ,
  output reg  start_read_canB ,
  output reg  start_read_canC ,
  output reg  start_read_elinkA ,
  output reg  start_read_elinkB ,
  output reg  start_read_elinkC ,
  output reg  start_write_canA ,
  output reg  start_write_canB ,
  output reg  start_write_canC ,
  output reg  start_write_elinkA ,
  output reg  start_write_elinkB ,
  output reg  start_write_elinkC ,
  output reg [5:0] statedebA ,
  output reg [5:0] statedebB ,
  output reg [5:0] statedebC 
);
parameter reset =5'd0;
parameter initialize =5'd1;
parameter waittoact =5'd2;
parameter endwaitst =5'd3;
parameter signon =5'd4;
parameter rst_all_irq_can =5'd5;
parameter init_Trim_OSC =5'd6;
parameter Abort_current =5'd7;
parameter init_Mon_ADC =5'd8;
parameter read_elink_mes =5'd9;
parameter Start_write_can =5'd10;
parameter pass_mes_to_can =5'd11;
parameter rst_tra_irq_can =5'd12;
parameter finish_proc =5'd13;
parameter rst_rec_irq_can =5'd14;
parameter pass_mes_to_elink =5'd15;
parameter assign_bus_id =5'd16;
parameter Start_read_elink =5'd17;
reg  [4:0] current_stateA ;
reg  [4:0] next_stateA ;
reg  [4:0] current_stateB ;
reg  [4:0] next_stateB ;
reg  [4:0] current_stateC ;
reg  [4:0] next_stateC ;

always @( current_stateA or end_bus_trim_allA or end_initA or end_mon_initA or end_read_canA or end_read_elinkA or end_write_canA or end_write_elinkA or irq_can_recA or irq_can_traA or irq_elink_traA or reset_all_doneA or reset_irq_can_doneA or rstA )
  begin : next_state_block_procA
    case (current_stateA)
      reset : 
        begin
          if (rstA==1)
            next_stateA =  initialize;
          else
            next_stateA =  reset;
        end
      initialize : 
        begin
          if (end_initA==1)
            next_stateA =  init_Mon_ADC;
          else
            next_stateA =  initialize;
        end
      waittoact : 
        begin
          if (irq_can_recA==1)
            next_stateA =  assign_bus_id;
          else
            if (irq_elink_traA==1)
              next_stateA =  read_elink_mes;
            else
              next_stateA =  waittoact;
        end
      endwaitst : 
        begin
          next_stateA =  Abort_current;
        end
      signon : 
        begin
          next_stateA =  waittoact;
        end
      rst_all_irq_can : 
        begin
          if (reset_all_doneA==1)
            next_stateA =  waittoact;
          else
            next_stateA =  rst_all_irq_can;
        end
      init_Trim_OSC : 
        begin
          if (end_bus_trim_allA==1)
            next_stateA =  signon;
          else
            next_stateA =  init_Trim_OSC;
        end
      Abort_current : 
        begin
          next_stateA =  rst_all_irq_can;
        end
      init_Mon_ADC : 
        begin
          if (end_mon_initA==1)
            next_stateA =  init_Trim_OSC;
          else
            next_stateA =  init_Mon_ADC;
        end
      read_elink_mes : 
        begin
          if (end_read_elinkA==1)
            next_stateA =  Start_write_can;
          else
            next_stateA =  read_elink_mes;
        end
      Start_write_can : 
        begin
          if (end_write_canA==1)
            next_stateA =  pass_mes_to_can;
          else
            next_stateA =  Start_write_can;
        end
      pass_mes_to_can : 
        begin
          if (irq_can_traA==1)
            next_stateA =  rst_tra_irq_can;
          else
            next_stateA =  pass_mes_to_can;
        end
      rst_tra_irq_can : 
        begin
          if (reset_irq_can_doneA==1)
            next_stateA =  waittoact;
          else
            next_stateA =  rst_tra_irq_can;
        end
      finish_proc : 
        begin
          next_stateA =  waittoact;
        end
      rst_rec_irq_can : 
        begin
          if (reset_irq_can_doneA==1)
            next_stateA =  finish_proc;
          else
            next_stateA =  rst_rec_irq_can;
        end
      pass_mes_to_elink : 
        begin
          if (end_write_elinkA==1)
            next_stateA =  rst_rec_irq_can;
          else
            next_stateA =  pass_mes_to_elink;
        end
      assign_bus_id : 
        begin
          next_stateA =  Start_read_elink;
        end
      Start_read_elink : 
        begin
          if (end_read_canA==1)
            next_stateA =  pass_mes_to_elink;
          else
            next_stateA =  Start_read_elink;
        end
      default : next_stateA =  reset;
    endcase
  end

always @( current_stateB or end_bus_trim_allB or end_initB or end_mon_initB or end_read_canB or end_read_elinkB or end_write_canB or end_write_elinkB or irq_can_recB or irq_can_traB or irq_elink_traB or reset_all_doneB or reset_irq_can_doneB or rstB )
  begin : next_state_block_procB
    case (current_stateB)
      reset : 
        begin
          if (rstB==1)
            next_stateB =  initialize;
          else
            next_stateB =  reset;
        end
      initialize : 
        begin
          if (end_initB==1)
            next_stateB =  init_Mon_ADC;
          else
            next_stateB =  initialize;
        end
      waittoact : 
        begin
          if (irq_can_recB==1)
            next_stateB =  assign_bus_id;
          else
            if (irq_elink_traB==1)
              next_stateB =  read_elink_mes;
            else
              next_stateB =  waittoact;
        end
      endwaitst : 
        begin
          next_stateB =  Abort_current;
        end
      signon : 
        begin
          next_stateB =  waittoact;
        end
      rst_all_irq_can : 
        begin
          if (reset_all_doneB==1)
            next_stateB =  waittoact;
          else
            next_stateB =  rst_all_irq_can;
        end
      init_Trim_OSC : 
        begin
          if (end_bus_trim_allB==1)
            next_stateB =  signon;
          else
            next_stateB =  init_Trim_OSC;
        end
      Abort_current : 
        begin
          next_stateB =  rst_all_irq_can;
        end
      init_Mon_ADC : 
        begin
          if (end_mon_initB==1)
            next_stateB =  init_Trim_OSC;
          else
            next_stateB =  init_Mon_ADC;
        end
      read_elink_mes : 
        begin
          if (end_read_elinkB==1)
            next_stateB =  Start_write_can;
          else
            next_stateB =  read_elink_mes;
        end
      Start_write_can : 
        begin
          if (end_write_canB==1)
            next_stateB =  pass_mes_to_can;
          else
            next_stateB =  Start_write_can;
        end
      pass_mes_to_can : 
        begin
          if (irq_can_traB==1)
            next_stateB =  rst_tra_irq_can;
          else
            next_stateB =  pass_mes_to_can;
        end
      rst_tra_irq_can : 
        begin
          if (reset_irq_can_doneB==1)
            next_stateB =  waittoact;
          else
            next_stateB =  rst_tra_irq_can;
        end
      finish_proc : 
        begin
          next_stateB =  waittoact;
        end
      rst_rec_irq_can : 
        begin
          if (reset_irq_can_doneB==1)
            next_stateB =  finish_proc;
          else
            next_stateB =  rst_rec_irq_can;
        end
      pass_mes_to_elink : 
        begin
          if (end_write_elinkB==1)
            next_stateB =  rst_rec_irq_can;
          else
            next_stateB =  pass_mes_to_elink;
        end
      assign_bus_id : 
        begin
          next_stateB =  Start_read_elink;
        end
      Start_read_elink : 
        begin
          if (end_read_canB==1)
            next_stateB =  pass_mes_to_elink;
          else
            next_stateB =  Start_read_elink;
        end
      default : next_stateB =  reset;
    endcase
  end

always @( current_stateC or end_bus_trim_allC or end_initC or end_mon_initC or end_read_canC or end_read_elinkC or end_write_canC or end_write_elinkC or irq_can_recC or irq_can_traC or irq_elink_traC or reset_all_doneC or reset_irq_can_doneC or rstC )
  begin : next_state_block_procC
    case (current_stateC)
      reset : 
        begin
          if (rstC==1)
            next_stateC =  initialize;
          else
            next_stateC =  reset;
        end
      initialize : 
        begin
          if (end_initC==1)
            next_stateC =  init_Mon_ADC;
          else
            next_stateC =  initialize;
        end
      waittoact : 
        begin
          if (irq_can_recC==1)
            next_stateC =  assign_bus_id;
          else
            if (irq_elink_traC==1)
              next_stateC =  read_elink_mes;
            else
              next_stateC =  waittoact;
        end
      endwaitst : 
        begin
          next_stateC =  Abort_current;
        end
      signon : 
        begin
          next_stateC =  waittoact;
        end
      rst_all_irq_can : 
        begin
          if (reset_all_doneC==1)
            next_stateC =  waittoact;
          else
            next_stateC =  rst_all_irq_can;
        end
      init_Trim_OSC : 
        begin
          if (end_bus_trim_allC==1)
            next_stateC =  signon;
          else
            next_stateC =  init_Trim_OSC;
        end
      Abort_current : 
        begin
          next_stateC =  rst_all_irq_can;
        end
      init_Mon_ADC : 
        begin
          if (end_mon_initC==1)
            next_stateC =  init_Trim_OSC;
          else
            next_stateC =  init_Mon_ADC;
        end
      read_elink_mes : 
        begin
          if (end_read_elinkC==1)
            next_stateC =  Start_write_can;
          else
            next_stateC =  read_elink_mes;
        end
      Start_write_can : 
        begin
          if (end_write_canC==1)
            next_stateC =  pass_mes_to_can;
          else
            next_stateC =  Start_write_can;
        end
      pass_mes_to_can : 
        begin
          if (irq_can_traC==1)
            next_stateC =  rst_tra_irq_can;
          else
            next_stateC =  pass_mes_to_can;
        end
      rst_tra_irq_can : 
        begin
          if (reset_irq_can_doneC==1)
            next_stateC =  waittoact;
          else
            next_stateC =  rst_tra_irq_can;
        end
      finish_proc : 
        begin
          next_stateC =  waittoact;
        end
      rst_rec_irq_can : 
        begin
          if (reset_irq_can_doneC==1)
            next_stateC =  finish_proc;
          else
            next_stateC =  rst_rec_irq_can;
        end
      pass_mes_to_elink : 
        begin
          if (end_write_elinkC==1)
            next_stateC =  rst_rec_irq_can;
          else
            next_stateC =  pass_mes_to_elink;
        end
      assign_bus_id : 
        begin
          next_stateC =  Start_read_elink;
        end
      Start_read_elink : 
        begin
          if (end_read_canC==1)
            next_stateC =  pass_mes_to_elink;
          else
            next_stateC =  Start_read_elink;
        end
      default : next_stateC =  reset;
    endcase
  end

always @( current_stateA )
  begin : output_block_procA
    abort_mesA =  0;
    end_can_procA =  0;
    entimeoutA =  1;
    irq_trim_oscA =  0;
    read_can_modeA =  0;
    reset_irq_canA =  0;
    reset_irq_can_allA =  0;
    reset_irq_rec_canA =  0;
    reset_irq_tra_canA =  0;
    send_mes_canA =  0;
    sign_on_sigA =  0;
    start_init_canA =  0;
    start_mon_initA =  0;
    start_read_canA =  0;
    start_read_elinkA =  0;
    start_write_canA =  0;
    start_write_elinkA =  0;
    case (current_stateA)
      reset : 
        begin
          abort_mesA =  0;
          reset_irq_canA =  0;
          reset_irq_can_allA =  0;
          send_mes_canA =  0;
          start_read_canA =  0;
          start_read_elinkA =  0;
          start_write_canA =  0;
          start_write_elinkA =  0;
          start_init_canA =  0;
          sign_on_sigA =  0;
          entimeoutA =  0;
          read_can_modeA =  0;
        end
      initialize : 
        begin
          start_init_canA =  1;
          entimeoutA =  0;
        end
      waittoact : 
        begin
          entimeoutA =  0;
        end
      signon : 
        begin
          sign_on_sigA =  1;
        end
      rst_all_irq_can : 
        begin
          reset_irq_can_allA =  1;
        end
      init_Trim_OSC : 
        begin
          irq_trim_oscA =  1;
          entimeoutA =  0;
        end
      Abort_current : 
        begin
          abort_mesA =  1;
        end
      init_Mon_ADC : 
        begin
          start_mon_initA =  1;
        end
      read_elink_mes : 
        begin
          start_read_elinkA =  1;
        end
      Start_write_can : 
        begin
          start_write_canA =  1;
        end
      pass_mes_to_can : 
        begin
          send_mes_canA =  1;
        end
      rst_tra_irq_can : 
        begin
          reset_irq_canA =  1;
          reset_irq_tra_canA =  1;
        end
      finish_proc : 
        begin
          end_can_procA =  1;
          read_can_modeA =  1;
        end
      rst_rec_irq_can : 
        begin
          reset_irq_canA =  1;
          reset_irq_rec_canA =  1;
          read_can_modeA =  1;
        end
      pass_mes_to_elink : 
        begin
          start_write_elinkA =  1;
          read_can_modeA =  1;
        end
      assign_bus_id : 
        begin
          read_can_modeA =  1;
        end
      Start_read_elink : 
        begin
          start_read_canA =  1;
          read_can_modeA =  1;
        end
    endcase
  end

always @( current_stateB )
  begin : output_block_procB
    abort_mesB =  0;
    end_can_procB =  0;
    entimeoutB =  1;
    irq_trim_oscB =  0;
    read_can_modeB =  0;
    reset_irq_canB =  0;
    reset_irq_can_allB =  0;
    reset_irq_rec_canB =  0;
    reset_irq_tra_canB =  0;
    send_mes_canB =  0;
    sign_on_sigB =  0;
    start_init_canB =  0;
    start_mon_initB =  0;
    start_read_canB =  0;
    start_read_elinkB =  0;
    start_write_canB =  0;
    start_write_elinkB =  0;
    case (current_stateB)
      reset : 
        begin
          abort_mesB =  0;
          reset_irq_canB =  0;
          reset_irq_can_allB =  0;
          send_mes_canB =  0;
          start_read_canB =  0;
          start_read_elinkB =  0;
          start_write_canB =  0;
          start_write_elinkB =  0;
          start_init_canB =  0;
          sign_on_sigB =  0;
          entimeoutB =  0;
          read_can_modeB =  0;
        end
      initialize : 
        begin
          start_init_canB =  1;
          entimeoutB =  0;
        end
      waittoact : 
        begin
          entimeoutB =  0;
        end
      signon : 
        begin
          sign_on_sigB =  1;
        end
      rst_all_irq_can : 
        begin
          reset_irq_can_allB =  1;
        end
      init_Trim_OSC : 
        begin
          irq_trim_oscB =  1;
          entimeoutB =  0;
        end
      Abort_current : 
        begin
          abort_mesB =  1;
        end
      init_Mon_ADC : 
        begin
          start_mon_initB =  1;
        end
      read_elink_mes : 
        begin
          start_read_elinkB =  1;
        end
      Start_write_can : 
        begin
          start_write_canB =  1;
        end
      pass_mes_to_can : 
        begin
          send_mes_canB =  1;
        end
      rst_tra_irq_can : 
        begin
          reset_irq_canB =  1;
          reset_irq_tra_canB =  1;
        end
      finish_proc : 
        begin
          end_can_procB =  1;
          read_can_modeB =  1;
        end
      rst_rec_irq_can : 
        begin
          reset_irq_canB =  1;
          reset_irq_rec_canB =  1;
          read_can_modeB =  1;
        end
      pass_mes_to_elink : 
        begin
          start_write_elinkB =  1;
          read_can_modeB =  1;
        end
      assign_bus_id : 
        begin
          read_can_modeB =  1;
        end
      Start_read_elink : 
        begin
          start_read_canB =  1;
          read_can_modeB =  1;
        end
    endcase
  end

always @( current_stateC )
  begin : output_block_procC
    abort_mesC =  0;
    end_can_procC =  0;
    entimeoutC =  1;
    irq_trim_oscC =  0;
    read_can_modeC =  0;
    reset_irq_canC =  0;
    reset_irq_can_allC =  0;
    reset_irq_rec_canC =  0;
    reset_irq_tra_canC =  0;
    send_mes_canC =  0;
    sign_on_sigC =  0;
    start_init_canC =  0;
    start_mon_initC =  0;
    start_read_canC =  0;
    start_read_elinkC =  0;
    start_write_canC =  0;
    start_write_elinkC =  0;
    case (current_stateC)
      reset : 
        begin
          abort_mesC =  0;
          reset_irq_canC =  0;
          reset_irq_can_allC =  0;
          send_mes_canC =  0;
          start_read_canC =  0;
          start_read_elinkC =  0;
          start_write_canC =  0;
          start_write_elinkC =  0;
          start_init_canC =  0;
          sign_on_sigC =  0;
          entimeoutC =  0;
          read_can_modeC =  0;
        end
      initialize : 
        begin
          start_init_canC =  1;
          entimeoutC =  0;
        end
      waittoact : 
        begin
          entimeoutC =  0;
        end
      signon : 
        begin
          sign_on_sigC =  1;
        end
      rst_all_irq_can : 
        begin
          reset_irq_can_allC =  1;
        end
      init_Trim_OSC : 
        begin
          irq_trim_oscC =  1;
          entimeoutC =  0;
        end
      Abort_current : 
        begin
          abort_mesC =  1;
        end
      init_Mon_ADC : 
        begin
          start_mon_initC =  1;
        end
      read_elink_mes : 
        begin
          start_read_elinkC =  1;
        end
      Start_write_can : 
        begin
          start_write_canC =  1;
        end
      pass_mes_to_can : 
        begin
          send_mes_canC =  1;
        end
      rst_tra_irq_can : 
        begin
          reset_irq_canC =  1;
          reset_irq_tra_canC =  1;
        end
      finish_proc : 
        begin
          end_can_procC =  1;
          read_can_modeC =  1;
        end
      rst_rec_irq_can : 
        begin
          reset_irq_canC =  1;
          reset_irq_rec_canC =  1;
          read_can_modeC =  1;
        end
      pass_mes_to_elink : 
        begin
          start_write_elinkC =  1;
          read_can_modeC =  1;
        end
      assign_bus_id : 
        begin
          read_can_modeC =  1;
        end
      Start_read_elink : 
        begin
          start_read_canC =  1;
          read_can_modeC =  1;
        end
    endcase
  end

always @( posedge clkA or posedge endwaitA )
  begin : clocked_block_procA
    if (endwaitA)
      begin
        current_stateA <= endwaitst;
      end
    else
      begin
        if (!rstA)
          begin
            current_stateA <= reset;
          end
        else
          if (timeoutrstA)
            begin
              current_stateA <= endwaitst;
            end
          else
            begin
              current_stateA <= next_stateA;
            end
      end
  end

always @( posedge clkB or posedge endwaitB )
  begin : clocked_block_procB
    if (endwaitB)
      begin
        current_stateB <= endwaitst;
      end
    else
      begin
        if (!rstB)
          begin
            current_stateB <= reset;
          end
        else
          if (timeoutrstB)
            begin
              current_stateB <= endwaitst;
            end
          else
            begin
              current_stateB <= next_stateB;
            end
      end
  end

always @( posedge clkC or posedge endwaitC )
  begin : clocked_block_procC
    if (endwaitC)
      begin
        current_stateC <= endwaitst;
      end
    else
      begin
        if (!rstC)
          begin
            current_stateC <= reset;
          end
        else
          if (timeoutrstC)
            begin
              current_stateC <= endwaitst;
            end
          else
            begin
              current_stateC <= next_stateC;
            end
      end
  end

always @( current_stateA )
  begin
    statedebA =  6'b0;
    statedebA[4:0]  =  current_stateA;
  end

always @( current_stateB )
  begin
    statedebB =  6'b0;
    statedebB[4:0]  =  current_stateB;
  end

always @( current_stateC )
  begin
    statedebC =  6'b0;
    statedebC[4:0]  =  current_stateC;
  end
endmodule
