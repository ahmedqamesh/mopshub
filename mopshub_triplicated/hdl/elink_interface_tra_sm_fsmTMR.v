/****************************************************************************************************
 *                          ! THIS FILE WAS AUTO-GENERATED BY TMRG TOOL !                           *
 *                                   ! DO NOT EDIT IT MANUALLY !                                    *
 *                                                                                                  *
 * file    : ./output/elink_interface_tra_sm_fsmTMR.v                                               *
 *                                                                                                  *
 * user    : lucas                                                                                  *
 * host    : DESKTOP-BFDSFP2                                                                        *
 * date    : 03/04/2022 20:08:34                                                                    *
 *                                                                                                  *
 * workdir : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/triplicated/mopshub_top_canakari_ftrim/hdl *
 * cmd     : /mnt/c/Users/Lucas/Desktop/mopshub_triplication/tmrg-master/bin/tmrg -vv -c tmrg.cfg   *
 * tmrg rev:                                                                                        *
 *                                                                                                  *
 * src file: elink_interface_tra_sm_fsm.v                                                           *
 *           Git SHA           : File not in git repository!                                        *
 *           Modification time : 2022-03-28 21:55:54                                                *
 *           File Size         : 13186                                                              *
 *           MD5 hash          : a991e19411be2ec4575edd46d0646570                                   *
 *                                                                                                  *
 ****************************************************************************************************/

module elink_interface_tra_SMTMR(
  input wire  abortA ,
  input wire  abortB ,
  input wire  abortC ,
  input wire  can_idA ,
  input wire  can_idB ,
  input wire  can_idC ,
  input wire  clkA ,
  input wire  clkB ,
  input wire  clkC ,
  input wire  fifo_data_eopA ,
  input wire  fifo_data_eopB ,
  input wire  fifo_data_eopC ,
  input wire  fifo_data_sopA ,
  input wire  fifo_data_sopB ,
  input wire  fifo_data_sopC ,
  input wire  fifo_elink_rdyA ,
  input wire  fifo_elink_rdyB ,
  input wire  fifo_elink_rdyC ,
  input wire  fifo_packet_rdyA ,
  input wire  fifo_packet_rdyB ,
  input wire  fifo_packet_rdyC ,
  input wire  rstA ,
  input wire  rstB ,
  input wire  rstC ,
  input wire  spi_monA ,
  input wire  spi_monB ,
  input wire  spi_monC ,
  input wire  start_read_elinkA ,
  input wire  start_read_elinkB ,
  input wire  start_read_elinkC ,
  input wire  timeoutrstA ,
  input wire  timeoutrstB ,
  input wire  timeoutrstC ,
  output reg [4:0] addr_readA ,
  output reg [4:0] addr_readB ,
  output reg [4:0] addr_readC ,
  output reg  buffer_elink_enA ,
  output reg  buffer_elink_enB ,
  output reg  buffer_elink_enC ,
  output reg  buffer_elink_spi_enA ,
  output reg  buffer_elink_spi_enB ,
  output reg  buffer_elink_spi_enC ,
  output reg  buffer_spi_enA ,
  output reg  buffer_spi_enB ,
  output reg  buffer_spi_enC ,
  output reg  buffer_tra_enA ,
  output reg  buffer_tra_enB ,
  output reg  buffer_tra_enC ,
  output reg  cs_ereadA ,
  output reg  cs_ereadB ,
  output reg  cs_ereadC ,
  output reg  end_read_elinkA ,
  output reg  end_read_elinkB ,
  output reg  end_read_elinkC ,
  output reg  entimeoutA ,
  output reg  entimeoutB ,
  output reg  entimeoutC ,
  output reg  irq_elink_traA ,
  output reg  irq_elink_traB ,
  output reg  irq_elink_traC ,
  output reg  irq_spi_traA ,
  output reg  irq_spi_traB ,
  output reg  irq_spi_traC ,
  output reg [6:0] statedebA ,
  output reg [6:0] statedebB ,
  output reg [6:0] statedebC 
);
parameter ST_waittoact =6'd0;
parameter ST_reset =6'd1;
parameter RB2 =6'd2;
parameter store_RB2 =6'd3;
parameter RB3 =6'd4;
parameter RB4 =6'd5;
parameter store_RB3 =6'd6;
parameter store_RB4 =6'd7;
parameter store_RB0 =6'd8;
parameter RB1 =6'd9;
parameter store_RB1 =6'd10;
parameter RB5 =6'd11;
parameter store_RB5 =6'd12;
parameter RB6 =6'd13;
parameter store_RB6 =6'd14;
parameter RB7 =6'd15;
parameter store_RB7 =6'd16;
parameter store_RB8 =6'd17;
parameter RB8 =6'd18;
parameter store_RB9 =6'd19;
parameter RB9 =6'd20;
parameter ST_wait_eop =6'd21;
parameter ST_end_read_en =6'd22;
parameter ST_GOToWait =6'd23;
parameter ST_en_buffer =6'd24;
parameter ST_wait_sop =6'd25;
parameter RB0 =6'd26;
parameter store_SPI0 =6'd27;
parameter SPI1 =6'd28;
parameter store_SPI1 =6'd29;
parameter SPI2 =6'd30;
parameter store_SPI2 =6'd31;
parameter ST_end_read_en1 =6'd32;
parameter ST_en_buffer1 =6'd33;
parameter ST_GOToWait1 =6'd34;
parameter SPI3 =6'd35;
parameter store_SPI3 =6'd36;
parameter ST_wait_eop1 =6'd37;
reg  [5:0] current_stateA ;
reg  [5:0] next_stateA ;
reg  [5:0] current_stateB ;
reg  [5:0] next_stateB ;
reg  [5:0] current_stateC ;
reg  [5:0] next_stateC ;

always @( can_idA or current_stateA or fifo_data_eopA or fifo_data_sopA or fifo_elink_rdyA or fifo_packet_rdyA or rstA or spi_monA or start_read_elinkA )
  begin : next_state_block_procA
    case (current_stateA)
      ST_waittoact : 
        begin
          if (fifo_elink_rdyA==1)
            next_stateA =  ST_wait_sop;
          else
            next_stateA =  ST_waittoact;
        end
      ST_reset : 
        begin
          if (rstA==1)
            next_stateA =  ST_waittoact;
          else
            next_stateA =  ST_reset;
        end
      RB2 : 
        begin
          next_stateA =  store_RB2;
        end
      store_RB2 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  RB3;
          else
            next_stateA =  store_RB2;
        end
      RB3 : 
        begin
          next_stateA =  store_RB3;
        end
      RB4 : 
        begin
          next_stateA =  store_RB4;
        end
      store_RB3 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  RB4;
          else
            next_stateA =  store_RB3;
        end
      store_RB4 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  RB5;
          else
            next_stateA =  store_RB4;
        end
      store_RB0 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  RB1;
          else
            next_stateA =  store_RB0;
        end
      RB1 : 
        begin
          next_stateA =  store_RB1;
        end
      store_RB1 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  RB2;
          else
            next_stateA =  store_RB1;
        end
      RB5 : 
        begin
          next_stateA =  store_RB5;
        end
      store_RB5 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  RB6;
          else
            next_stateA =  store_RB5;
        end
      RB6 : 
        begin
          next_stateA =  store_RB6;
        end
      store_RB6 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  RB7;
          else
            next_stateA =  store_RB6;
        end
      RB7 : 
        begin
          next_stateA =  store_RB7;
        end
      store_RB7 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  RB8;
          else
            next_stateA =  store_RB7;
        end
      store_RB8 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  RB9;
          else
            next_stateA =  store_RB8;
        end
      RB8 : 
        begin
          next_stateA =  store_RB8;
        end
      store_RB9 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  ST_wait_eop;
          else
            next_stateA =  store_RB9;
        end
      RB9 : 
        begin
          next_stateA =  store_RB9;
        end
      ST_wait_eop : 
        begin
          if (fifo_data_eopA==1)
            next_stateA =  ST_end_read_en;
          else
            next_stateA =  ST_wait_eop;
        end
      ST_end_read_en : 
        begin
          if (start_read_elinkA==1)
            next_stateA =  ST_en_buffer;
          else
            next_stateA =  ST_end_read_en;
        end
      ST_GOToWait : 
        begin
          next_stateA =  ST_waittoact;
        end
      ST_en_buffer : 
        begin
          next_stateA =  ST_GOToWait;
        end
      ST_wait_sop : 
        begin
          if (fifo_data_sopA==1)
            next_stateA =  RB0;
          else
            next_stateA =  ST_wait_sop;
        end
      RB0 : 
        begin
          if (can_idA==1)
            next_stateA =  store_RB0;
          else
            if ((spi_monA==1)&&(fifo_packet_rdyA==1))
              next_stateA =  store_SPI0;
            else
              next_stateA =  RB0;
        end
      store_SPI0 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  SPI1;
          else
            next_stateA =  store_SPI0;
        end
      SPI1 : 
        begin
          next_stateA =  store_SPI1;
        end
      store_SPI1 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  SPI2;
          else
            next_stateA =  store_SPI1;
        end
      SPI2 : 
        begin
          next_stateA =  store_SPI2;
        end
      store_SPI2 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  SPI3;
          else
            next_stateA =  store_SPI2;
        end
      ST_end_read_en1 : 
        begin
          if (start_read_elinkA==1)
            next_stateA =  ST_en_buffer1;
          else
            next_stateA =  ST_end_read_en1;
        end
      ST_en_buffer1 : 
        begin
          next_stateA =  ST_GOToWait1;
        end
      ST_GOToWait1 : 
        begin
          next_stateA =  ST_waittoact;
        end
      SPI3 : 
        begin
          next_stateA =  store_SPI3;
        end
      store_SPI3 : 
        begin
          if (fifo_elink_rdyA&&fifo_packet_rdyA==1)
            next_stateA =  ST_wait_eop1;
          else
            next_stateA =  store_SPI3;
        end
      ST_wait_eop1 : 
        begin
          if (fifo_data_eopA==1)
            next_stateA =  ST_end_read_en1;
          else
            next_stateA =  ST_wait_eop1;
        end
      default : next_stateA =  ST_reset;
    endcase
  end

always @( can_idB or current_stateB or fifo_data_eopB or fifo_data_sopB or fifo_elink_rdyB or fifo_packet_rdyB or rstB or spi_monB or start_read_elinkB )
  begin : next_state_block_procB
    case (current_stateB)
      ST_waittoact : 
        begin
          if (fifo_elink_rdyB==1)
            next_stateB =  ST_wait_sop;
          else
            next_stateB =  ST_waittoact;
        end
      ST_reset : 
        begin
          if (rstB==1)
            next_stateB =  ST_waittoact;
          else
            next_stateB =  ST_reset;
        end
      RB2 : 
        begin
          next_stateB =  store_RB2;
        end
      store_RB2 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  RB3;
          else
            next_stateB =  store_RB2;
        end
      RB3 : 
        begin
          next_stateB =  store_RB3;
        end
      RB4 : 
        begin
          next_stateB =  store_RB4;
        end
      store_RB3 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  RB4;
          else
            next_stateB =  store_RB3;
        end
      store_RB4 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  RB5;
          else
            next_stateB =  store_RB4;
        end
      store_RB0 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  RB1;
          else
            next_stateB =  store_RB0;
        end
      RB1 : 
        begin
          next_stateB =  store_RB1;
        end
      store_RB1 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  RB2;
          else
            next_stateB =  store_RB1;
        end
      RB5 : 
        begin
          next_stateB =  store_RB5;
        end
      store_RB5 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  RB6;
          else
            next_stateB =  store_RB5;
        end
      RB6 : 
        begin
          next_stateB =  store_RB6;
        end
      store_RB6 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  RB7;
          else
            next_stateB =  store_RB6;
        end
      RB7 : 
        begin
          next_stateB =  store_RB7;
        end
      store_RB7 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  RB8;
          else
            next_stateB =  store_RB7;
        end
      store_RB8 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  RB9;
          else
            next_stateB =  store_RB8;
        end
      RB8 : 
        begin
          next_stateB =  store_RB8;
        end
      store_RB9 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  ST_wait_eop;
          else
            next_stateB =  store_RB9;
        end
      RB9 : 
        begin
          next_stateB =  store_RB9;
        end
      ST_wait_eop : 
        begin
          if (fifo_data_eopB==1)
            next_stateB =  ST_end_read_en;
          else
            next_stateB =  ST_wait_eop;
        end
      ST_end_read_en : 
        begin
          if (start_read_elinkB==1)
            next_stateB =  ST_en_buffer;
          else
            next_stateB =  ST_end_read_en;
        end
      ST_GOToWait : 
        begin
          next_stateB =  ST_waittoact;
        end
      ST_en_buffer : 
        begin
          next_stateB =  ST_GOToWait;
        end
      ST_wait_sop : 
        begin
          if (fifo_data_sopB==1)
            next_stateB =  RB0;
          else
            next_stateB =  ST_wait_sop;
        end
      RB0 : 
        begin
          if (can_idB==1)
            next_stateB =  store_RB0;
          else
            if ((spi_monB==1)&&(fifo_packet_rdyB==1))
              next_stateB =  store_SPI0;
            else
              next_stateB =  RB0;
        end
      store_SPI0 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  SPI1;
          else
            next_stateB =  store_SPI0;
        end
      SPI1 : 
        begin
          next_stateB =  store_SPI1;
        end
      store_SPI1 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  SPI2;
          else
            next_stateB =  store_SPI1;
        end
      SPI2 : 
        begin
          next_stateB =  store_SPI2;
        end
      store_SPI2 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  SPI3;
          else
            next_stateB =  store_SPI2;
        end
      ST_end_read_en1 : 
        begin
          if (start_read_elinkB==1)
            next_stateB =  ST_en_buffer1;
          else
            next_stateB =  ST_end_read_en1;
        end
      ST_en_buffer1 : 
        begin
          next_stateB =  ST_GOToWait1;
        end
      ST_GOToWait1 : 
        begin
          next_stateB =  ST_waittoact;
        end
      SPI3 : 
        begin
          next_stateB =  store_SPI3;
        end
      store_SPI3 : 
        begin
          if (fifo_elink_rdyB&&fifo_packet_rdyB==1)
            next_stateB =  ST_wait_eop1;
          else
            next_stateB =  store_SPI3;
        end
      ST_wait_eop1 : 
        begin
          if (fifo_data_eopB==1)
            next_stateB =  ST_end_read_en1;
          else
            next_stateB =  ST_wait_eop1;
        end
      default : next_stateB =  ST_reset;
    endcase
  end

always @( can_idC or current_stateC or fifo_data_eopC or fifo_data_sopC or fifo_elink_rdyC or fifo_packet_rdyC or rstC or spi_monC or start_read_elinkC )
  begin : next_state_block_procC
    case (current_stateC)
      ST_waittoact : 
        begin
          if (fifo_elink_rdyC==1)
            next_stateC =  ST_wait_sop;
          else
            next_stateC =  ST_waittoact;
        end
      ST_reset : 
        begin
          if (rstC==1)
            next_stateC =  ST_waittoact;
          else
            next_stateC =  ST_reset;
        end
      RB2 : 
        begin
          next_stateC =  store_RB2;
        end
      store_RB2 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  RB3;
          else
            next_stateC =  store_RB2;
        end
      RB3 : 
        begin
          next_stateC =  store_RB3;
        end
      RB4 : 
        begin
          next_stateC =  store_RB4;
        end
      store_RB3 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  RB4;
          else
            next_stateC =  store_RB3;
        end
      store_RB4 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  RB5;
          else
            next_stateC =  store_RB4;
        end
      store_RB0 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  RB1;
          else
            next_stateC =  store_RB0;
        end
      RB1 : 
        begin
          next_stateC =  store_RB1;
        end
      store_RB1 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  RB2;
          else
            next_stateC =  store_RB1;
        end
      RB5 : 
        begin
          next_stateC =  store_RB5;
        end
      store_RB5 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  RB6;
          else
            next_stateC =  store_RB5;
        end
      RB6 : 
        begin
          next_stateC =  store_RB6;
        end
      store_RB6 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  RB7;
          else
            next_stateC =  store_RB6;
        end
      RB7 : 
        begin
          next_stateC =  store_RB7;
        end
      store_RB7 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  RB8;
          else
            next_stateC =  store_RB7;
        end
      store_RB8 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  RB9;
          else
            next_stateC =  store_RB8;
        end
      RB8 : 
        begin
          next_stateC =  store_RB8;
        end
      store_RB9 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  ST_wait_eop;
          else
            next_stateC =  store_RB9;
        end
      RB9 : 
        begin
          next_stateC =  store_RB9;
        end
      ST_wait_eop : 
        begin
          if (fifo_data_eopC==1)
            next_stateC =  ST_end_read_en;
          else
            next_stateC =  ST_wait_eop;
        end
      ST_end_read_en : 
        begin
          if (start_read_elinkC==1)
            next_stateC =  ST_en_buffer;
          else
            next_stateC =  ST_end_read_en;
        end
      ST_GOToWait : 
        begin
          next_stateC =  ST_waittoact;
        end
      ST_en_buffer : 
        begin
          next_stateC =  ST_GOToWait;
        end
      ST_wait_sop : 
        begin
          if (fifo_data_sopC==1)
            next_stateC =  RB0;
          else
            next_stateC =  ST_wait_sop;
        end
      RB0 : 
        begin
          if (can_idC==1)
            next_stateC =  store_RB0;
          else
            if ((spi_monC==1)&&(fifo_packet_rdyC==1))
              next_stateC =  store_SPI0;
            else
              next_stateC =  RB0;
        end
      store_SPI0 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  SPI1;
          else
            next_stateC =  store_SPI0;
        end
      SPI1 : 
        begin
          next_stateC =  store_SPI1;
        end
      store_SPI1 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  SPI2;
          else
            next_stateC =  store_SPI1;
        end
      SPI2 : 
        begin
          next_stateC =  store_SPI2;
        end
      store_SPI2 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  SPI3;
          else
            next_stateC =  store_SPI2;
        end
      ST_end_read_en1 : 
        begin
          if (start_read_elinkC==1)
            next_stateC =  ST_en_buffer1;
          else
            next_stateC =  ST_end_read_en1;
        end
      ST_en_buffer1 : 
        begin
          next_stateC =  ST_GOToWait1;
        end
      ST_GOToWait1 : 
        begin
          next_stateC =  ST_waittoact;
        end
      SPI3 : 
        begin
          next_stateC =  store_SPI3;
        end
      store_SPI3 : 
        begin
          if (fifo_elink_rdyC&&fifo_packet_rdyC==1)
            next_stateC =  ST_wait_eop1;
          else
            next_stateC =  store_SPI3;
        end
      ST_wait_eop1 : 
        begin
          if (fifo_data_eopC==1)
            next_stateC =  ST_end_read_en1;
          else
            next_stateC =  ST_wait_eop1;
        end
      default : next_stateC =  ST_reset;
    endcase
  end

always @( current_stateA )
  begin : output_block_procA
    addr_readA =  5'b0;
    buffer_elink_enA =  0;
    buffer_elink_spi_enA =  0;
    buffer_spi_enA =  0;
    buffer_tra_enA =  0;
    cs_ereadA =  0;
    end_read_elinkA =  0;
    entimeoutA =  1;
    irq_elink_traA =  0;
    irq_spi_traA =  0;
    case (current_stateA)
      ST_waittoact : 
        begin
          entimeoutA =  0;
        end
      ST_reset : 
        begin
          entimeoutA =  0;
        end
      RB2 : 
        begin
          addr_readA =  5'b00100;
          cs_ereadA =  1;
        end
      store_RB2 : 
        begin
          addr_readA =  5'b00100;
          cs_ereadA =  1;
          buffer_elink_enA =  1;
        end
      RB3 : 
        begin
          addr_readA =  5'b00101;
          cs_ereadA =  1;
        end
      RB4 : 
        begin
          addr_readA =  5'b00110;
          cs_ereadA =  1;
        end
      store_RB3 : 
        begin
          addr_readA =  5'b00101;
          cs_ereadA =  1;
          buffer_elink_enA =  1;
        end
      store_RB4 : 
        begin
          addr_readA =  5'b00110;
          cs_ereadA =  1;
          buffer_elink_enA =  1;
        end
      store_RB0 : 
        begin
          addr_readA =  5'b00010;
          buffer_elink_enA =  1;
          cs_ereadA =  1;
        end
      RB1 : 
        begin
          addr_readA =  5'b00011;
          cs_ereadA =  1;
        end
      store_RB1 : 
        begin
          addr_readA =  5'b00011;
          cs_ereadA =  1;
          buffer_elink_enA =  1;
        end
      RB5 : 
        begin
          addr_readA =  5'b00111;
          cs_ereadA =  1;
        end
      store_RB5 : 
        begin
          addr_readA =  5'b00111;
          cs_ereadA =  1;
          buffer_elink_enA =  1;
        end
      RB6 : 
        begin
          addr_readA =  5'b01000;
          cs_ereadA =  1;
        end
      store_RB6 : 
        begin
          addr_readA =  5'b01000;
          cs_ereadA =  1;
          buffer_elink_enA =  1;
        end
      RB7 : 
        begin
          addr_readA =  5'b01001;
          cs_ereadA =  1;
        end
      store_RB7 : 
        begin
          addr_readA =  5'b01001;
          cs_ereadA =  1;
          buffer_elink_enA =  1;
        end
      store_RB8 : 
        begin
          addr_readA =  5'b01010;
          cs_ereadA =  1;
          buffer_elink_enA =  1;
        end
      RB8 : 
        begin
          addr_readA =  5'b01010;
          cs_ereadA =  1;
        end
      store_RB9 : 
        begin
          addr_readA =  5'b01011;
          cs_ereadA =  1;
          buffer_elink_enA =  1;
        end
      RB9 : 
        begin
          addr_readA =  5'b01011;
          cs_ereadA =  1;
        end
      ST_wait_eop : 
        begin
          addr_readA =  5'b00000;
          cs_ereadA =  1;
          buffer_elink_enA =  0;
        end
      ST_end_read_en : 
        begin
          addr_readA =  5'b00000;
          irq_elink_traA =  1'b1;
        end
      ST_GOToWait : 
        begin
          end_read_elinkA =  1;
          addr_readA =  5'b00000;
        end
      ST_en_buffer : 
        begin
          addr_readA =  5'b00000;
          buffer_tra_enA =  1;
        end
      ST_wait_sop : 
        begin
          addr_readA =  5'b00000;
          cs_ereadA =  1;
        end
      RB0 : 
        begin
          addr_readA =  5'b00010;
          cs_ereadA =  1;
        end
      store_SPI0 : 
        begin
          addr_readA =  5'b00010;
          buffer_elink_spi_enA =  1;
          cs_ereadA =  1;
        end
      SPI1 : 
        begin
          addr_readA =  5'b00011;
          cs_ereadA =  1;
        end
      store_SPI1 : 
        begin
          addr_readA =  5'b00011;
          cs_ereadA =  1;
          buffer_elink_spi_enA =  1;
        end
      SPI2 : 
        begin
          addr_readA =  5'b00100;
          cs_ereadA =  1;
        end
      store_SPI2 : 
        begin
          addr_readA =  5'b00100;
          cs_ereadA =  1;
          buffer_elink_spi_enA =  1;
        end
      ST_end_read_en1 : 
        begin
          addr_readA =  5'b00000;
          irq_spi_traA =  1'b1;
        end
      ST_en_buffer1 : 
        begin
          addr_readA =  5'b00000;
          buffer_spi_enA =  1;
        end
      ST_GOToWait1 : 
        begin
          end_read_elinkA =  1;
          addr_readA =  5'b00000;
        end
      SPI3 : 
        begin
          addr_readA =  5'b00101;
          cs_ereadA =  1;
        end
      store_SPI3 : 
        begin
          addr_readA =  5'b00101;
          cs_ereadA =  1;
          buffer_elink_spi_enA =  1;
        end
      ST_wait_eop1 : 
        begin
          addr_readA =  5'b00000;
          cs_ereadA =  1;
          buffer_elink_spi_enA =  0;
        end
    endcase
  end

always @( current_stateB )
  begin : output_block_procB
    addr_readB =  5'b0;
    buffer_elink_enB =  0;
    buffer_elink_spi_enB =  0;
    buffer_spi_enB =  0;
    buffer_tra_enB =  0;
    cs_ereadB =  0;
    end_read_elinkB =  0;
    entimeoutB =  1;
    irq_elink_traB =  0;
    irq_spi_traB =  0;
    case (current_stateB)
      ST_waittoact : 
        begin
          entimeoutB =  0;
        end
      ST_reset : 
        begin
          entimeoutB =  0;
        end
      RB2 : 
        begin
          addr_readB =  5'b00100;
          cs_ereadB =  1;
        end
      store_RB2 : 
        begin
          addr_readB =  5'b00100;
          cs_ereadB =  1;
          buffer_elink_enB =  1;
        end
      RB3 : 
        begin
          addr_readB =  5'b00101;
          cs_ereadB =  1;
        end
      RB4 : 
        begin
          addr_readB =  5'b00110;
          cs_ereadB =  1;
        end
      store_RB3 : 
        begin
          addr_readB =  5'b00101;
          cs_ereadB =  1;
          buffer_elink_enB =  1;
        end
      store_RB4 : 
        begin
          addr_readB =  5'b00110;
          cs_ereadB =  1;
          buffer_elink_enB =  1;
        end
      store_RB0 : 
        begin
          addr_readB =  5'b00010;
          buffer_elink_enB =  1;
          cs_ereadB =  1;
        end
      RB1 : 
        begin
          addr_readB =  5'b00011;
          cs_ereadB =  1;
        end
      store_RB1 : 
        begin
          addr_readB =  5'b00011;
          cs_ereadB =  1;
          buffer_elink_enB =  1;
        end
      RB5 : 
        begin
          addr_readB =  5'b00111;
          cs_ereadB =  1;
        end
      store_RB5 : 
        begin
          addr_readB =  5'b00111;
          cs_ereadB =  1;
          buffer_elink_enB =  1;
        end
      RB6 : 
        begin
          addr_readB =  5'b01000;
          cs_ereadB =  1;
        end
      store_RB6 : 
        begin
          addr_readB =  5'b01000;
          cs_ereadB =  1;
          buffer_elink_enB =  1;
        end
      RB7 : 
        begin
          addr_readB =  5'b01001;
          cs_ereadB =  1;
        end
      store_RB7 : 
        begin
          addr_readB =  5'b01001;
          cs_ereadB =  1;
          buffer_elink_enB =  1;
        end
      store_RB8 : 
        begin
          addr_readB =  5'b01010;
          cs_ereadB =  1;
          buffer_elink_enB =  1;
        end
      RB8 : 
        begin
          addr_readB =  5'b01010;
          cs_ereadB =  1;
        end
      store_RB9 : 
        begin
          addr_readB =  5'b01011;
          cs_ereadB =  1;
          buffer_elink_enB =  1;
        end
      RB9 : 
        begin
          addr_readB =  5'b01011;
          cs_ereadB =  1;
        end
      ST_wait_eop : 
        begin
          addr_readB =  5'b00000;
          cs_ereadB =  1;
          buffer_elink_enB =  0;
        end
      ST_end_read_en : 
        begin
          addr_readB =  5'b00000;
          irq_elink_traB =  1'b1;
        end
      ST_GOToWait : 
        begin
          end_read_elinkB =  1;
          addr_readB =  5'b00000;
        end
      ST_en_buffer : 
        begin
          addr_readB =  5'b00000;
          buffer_tra_enB =  1;
        end
      ST_wait_sop : 
        begin
          addr_readB =  5'b00000;
          cs_ereadB =  1;
        end
      RB0 : 
        begin
          addr_readB =  5'b00010;
          cs_ereadB =  1;
        end
      store_SPI0 : 
        begin
          addr_readB =  5'b00010;
          buffer_elink_spi_enB =  1;
          cs_ereadB =  1;
        end
      SPI1 : 
        begin
          addr_readB =  5'b00011;
          cs_ereadB =  1;
        end
      store_SPI1 : 
        begin
          addr_readB =  5'b00011;
          cs_ereadB =  1;
          buffer_elink_spi_enB =  1;
        end
      SPI2 : 
        begin
          addr_readB =  5'b00100;
          cs_ereadB =  1;
        end
      store_SPI2 : 
        begin
          addr_readB =  5'b00100;
          cs_ereadB =  1;
          buffer_elink_spi_enB =  1;
        end
      ST_end_read_en1 : 
        begin
          addr_readB =  5'b00000;
          irq_spi_traB =  1'b1;
        end
      ST_en_buffer1 : 
        begin
          addr_readB =  5'b00000;
          buffer_spi_enB =  1;
        end
      ST_GOToWait1 : 
        begin
          end_read_elinkB =  1;
          addr_readB =  5'b00000;
        end
      SPI3 : 
        begin
          addr_readB =  5'b00101;
          cs_ereadB =  1;
        end
      store_SPI3 : 
        begin
          addr_readB =  5'b00101;
          cs_ereadB =  1;
          buffer_elink_spi_enB =  1;
        end
      ST_wait_eop1 : 
        begin
          addr_readB =  5'b00000;
          cs_ereadB =  1;
          buffer_elink_spi_enB =  0;
        end
    endcase
  end

always @( current_stateC )
  begin : output_block_procC
    addr_readC =  5'b0;
    buffer_elink_enC =  0;
    buffer_elink_spi_enC =  0;
    buffer_spi_enC =  0;
    buffer_tra_enC =  0;
    cs_ereadC =  0;
    end_read_elinkC =  0;
    entimeoutC =  1;
    irq_elink_traC =  0;
    irq_spi_traC =  0;
    case (current_stateC)
      ST_waittoact : 
        begin
          entimeoutC =  0;
        end
      ST_reset : 
        begin
          entimeoutC =  0;
        end
      RB2 : 
        begin
          addr_readC =  5'b00100;
          cs_ereadC =  1;
        end
      store_RB2 : 
        begin
          addr_readC =  5'b00100;
          cs_ereadC =  1;
          buffer_elink_enC =  1;
        end
      RB3 : 
        begin
          addr_readC =  5'b00101;
          cs_ereadC =  1;
        end
      RB4 : 
        begin
          addr_readC =  5'b00110;
          cs_ereadC =  1;
        end
      store_RB3 : 
        begin
          addr_readC =  5'b00101;
          cs_ereadC =  1;
          buffer_elink_enC =  1;
        end
      store_RB4 : 
        begin
          addr_readC =  5'b00110;
          cs_ereadC =  1;
          buffer_elink_enC =  1;
        end
      store_RB0 : 
        begin
          addr_readC =  5'b00010;
          buffer_elink_enC =  1;
          cs_ereadC =  1;
        end
      RB1 : 
        begin
          addr_readC =  5'b00011;
          cs_ereadC =  1;
        end
      store_RB1 : 
        begin
          addr_readC =  5'b00011;
          cs_ereadC =  1;
          buffer_elink_enC =  1;
        end
      RB5 : 
        begin
          addr_readC =  5'b00111;
          cs_ereadC =  1;
        end
      store_RB5 : 
        begin
          addr_readC =  5'b00111;
          cs_ereadC =  1;
          buffer_elink_enC =  1;
        end
      RB6 : 
        begin
          addr_readC =  5'b01000;
          cs_ereadC =  1;
        end
      store_RB6 : 
        begin
          addr_readC =  5'b01000;
          cs_ereadC =  1;
          buffer_elink_enC =  1;
        end
      RB7 : 
        begin
          addr_readC =  5'b01001;
          cs_ereadC =  1;
        end
      store_RB7 : 
        begin
          addr_readC =  5'b01001;
          cs_ereadC =  1;
          buffer_elink_enC =  1;
        end
      store_RB8 : 
        begin
          addr_readC =  5'b01010;
          cs_ereadC =  1;
          buffer_elink_enC =  1;
        end
      RB8 : 
        begin
          addr_readC =  5'b01010;
          cs_ereadC =  1;
        end
      store_RB9 : 
        begin
          addr_readC =  5'b01011;
          cs_ereadC =  1;
          buffer_elink_enC =  1;
        end
      RB9 : 
        begin
          addr_readC =  5'b01011;
          cs_ereadC =  1;
        end
      ST_wait_eop : 
        begin
          addr_readC =  5'b00000;
          cs_ereadC =  1;
          buffer_elink_enC =  0;
        end
      ST_end_read_en : 
        begin
          addr_readC =  5'b00000;
          irq_elink_traC =  1'b1;
        end
      ST_GOToWait : 
        begin
          end_read_elinkC =  1;
          addr_readC =  5'b00000;
        end
      ST_en_buffer : 
        begin
          addr_readC =  5'b00000;
          buffer_tra_enC =  1;
        end
      ST_wait_sop : 
        begin
          addr_readC =  5'b00000;
          cs_ereadC =  1;
        end
      RB0 : 
        begin
          addr_readC =  5'b00010;
          cs_ereadC =  1;
        end
      store_SPI0 : 
        begin
          addr_readC =  5'b00010;
          buffer_elink_spi_enC =  1;
          cs_ereadC =  1;
        end
      SPI1 : 
        begin
          addr_readC =  5'b00011;
          cs_ereadC =  1;
        end
      store_SPI1 : 
        begin
          addr_readC =  5'b00011;
          cs_ereadC =  1;
          buffer_elink_spi_enC =  1;
        end
      SPI2 : 
        begin
          addr_readC =  5'b00100;
          cs_ereadC =  1;
        end
      store_SPI2 : 
        begin
          addr_readC =  5'b00100;
          cs_ereadC =  1;
          buffer_elink_spi_enC =  1;
        end
      ST_end_read_en1 : 
        begin
          addr_readC =  5'b00000;
          irq_spi_traC =  1'b1;
        end
      ST_en_buffer1 : 
        begin
          addr_readC =  5'b00000;
          buffer_spi_enC =  1;
        end
      ST_GOToWait1 : 
        begin
          end_read_elinkC =  1;
          addr_readC =  5'b00000;
        end
      SPI3 : 
        begin
          addr_readC =  5'b00101;
          cs_ereadC =  1;
        end
      store_SPI3 : 
        begin
          addr_readC =  5'b00101;
          cs_ereadC =  1;
          buffer_elink_spi_enC =  1;
        end
      ST_wait_eop1 : 
        begin
          addr_readC =  5'b00000;
          cs_ereadC =  1;
          buffer_elink_spi_enC =  0;
        end
    endcase
  end

always @( posedge clkA )
  begin : clocked_block_procA
    if (!rstA)
      begin
        current_stateA <= ST_reset;
      end
    else
      if (timeoutrstA)
        begin
          current_stateA <= ST_reset;
        end
      else
        if (abortA)
          begin
            current_stateA <= ST_reset;
          end
        else
          begin
            current_stateA <= next_stateA;
          end
  end

always @( posedge clkB )
  begin : clocked_block_procB
    if (!rstB)
      begin
        current_stateB <= ST_reset;
      end
    else
      if (timeoutrstB)
        begin
          current_stateB <= ST_reset;
        end
      else
        if (abortB)
          begin
            current_stateB <= ST_reset;
          end
        else
          begin
            current_stateB <= next_stateB;
          end
  end

always @( posedge clkC )
  begin : clocked_block_procC
    if (!rstC)
      begin
        current_stateC <= ST_reset;
      end
    else
      if (timeoutrstC)
        begin
          current_stateC <= ST_reset;
        end
      else
        if (abortC)
          begin
            current_stateC <= ST_reset;
          end
        else
          begin
            current_stateC <= next_stateC;
          end
  end

always @( current_stateA )
  begin
    statedebA =  7'b0;
    statedebA[5:0]  =  current_stateA;
  end

always @( current_stateB )
  begin
    statedebB =  7'b0;
    statedebB[5:0]  =  current_stateB;
  end

always @( current_stateC )
  begin
    statedebC =  7'b0;
    statedebC[5:0]  =  current_stateC;
  end
endmodule
