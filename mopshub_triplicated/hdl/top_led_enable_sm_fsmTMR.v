/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/top_led_enable_sm_fsmTMR.v                                                    *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 16/08/2022 12:58:39                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/mopshub_top_board_canakari_ftrim/hdl   *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -c tmrg.cfg -vvv  *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: top_led_enable_sm_fsm.v                                                                *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-08-16 12:43:47.413287                                         *
 *           File Size         : 3516                                                               *
 *           MD5 hash          : 9f8cb902e4cb9e0385d1f925bf7bfcb4                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module top_led_enable_SMTMR(
  input wire  clk_in ,
  input wire  enable_cnt ,
  input wire  rst ,
  output reg  led 
);
parameter ST_RESET =2'd0;
parameter ST_WAIT_0 =2'd1;
parameter ST_WAIT_1 =2'd2;
reg  [1:0] current_state ;
reg  [1:0] next_state ;
reg  [21:0] csm_timer ;
reg  [21:0] csm_next_timer ;
reg  csm_timeout ;
reg  csm_to_ST_WAIT_0 ;
reg  csm_to_ST_WAIT_1 ;

always @( csm_timeout or current_state or enable_cnt )
  begin : next_state_block_proc
    csm_to_ST_WAIT_0 =  1'b0;
    csm_to_ST_WAIT_1 =  1'b0;
    case (current_state)
      ST_RESET : 
        begin
          if (enable_cnt==1)
            begin
              next_state =  ST_WAIT_0;
              csm_to_ST_WAIT_0 =  1'b1;
            end
          else
            next_state =  ST_RESET;
        end
      ST_WAIT_0 : 
        begin
          if (csm_timeout)
            begin
              next_state =  ST_WAIT_1;
              csm_to_ST_WAIT_1 =  1'b1;
            end
          else
            next_state =  ST_WAIT_0;
        end
      ST_WAIT_1 : 
        begin
          if (csm_timeout)
            next_state =  ST_RESET;
          else
            next_state =  ST_WAIT_1;
        end
      default : next_state =  ST_RESET;
    endcase
  end

always @( current_state )
  begin : output_block_proc
    led =  0;
    case (current_state)
      ST_RESET : 
        begin
          led =  0;
        end
      ST_WAIT_0 : 
        begin
          led =  1;
        end
      ST_WAIT_1 : 
        begin
          led =  0;
        end
    endcase
  end

always @( posedge clk_in )
  begin : clocked_block_proc
    if (!rst)
      begin
        current_state <= ST_RESET;
        csm_timer <= 22'd0;
      end
    else
      begin
        current_state <= next_state;
        csm_timer <= csm_next_timer;
      end
  end

always @( csm_timer or csm_to_ST_WAIT_0 or csm_to_ST_WAIT_1 )
  begin : csm_wait_block_proc
    csm_timeout =  (csm_timer==22'd0);
    if (csm_to_ST_WAIT_0==1'b1)
      begin
        csm_next_timer =  22'd999999;
      end
    else
      if (csm_to_ST_WAIT_1==1'b1)
        begin
          csm_next_timer =  22'd2999999;
        end
      else
        begin
          csm_next_timer =  (csm_timeout) ? 22'd0 : (csm_timer-22'd1);
        end
  end
endmodule
