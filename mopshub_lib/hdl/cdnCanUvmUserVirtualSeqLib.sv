// ----------------------------------------------------------------------------
// Class : myCdnCanUvmVirtualSequence
//
// This class implements Sequences for Virtual Sequencer
// Prototype virtual sequence with objection raised/dropped in pre/post_body
// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
// Class : LtFrameSeq
//
// This class implements simple read transaction according to the
// configuraton 
// ----------------------------------------------------------------------------
class myCdnCanUvmVirtualSequence extends uvm_sequence;
  
  `uvm_object_utils_begin(myCdnCanUvmVirtualSequence)
  `uvm_object_utils_end

  `uvm_declare_p_sequencer(cdnCanUvmUserVirtualSequencer)


  function new(string name="myCdnCanUvmVirtualSequence");
    super.new(name);
    `ifdef UVM_VERSION
      // UVM-IEEE
      set_response_queue_error_report_enabled(0);
    `else
      set_response_queue_error_report_disabled(1);
    `endif
  endfunction // new

  function integer getDataSize(integer dlc) ;
    case (dlc)
      0 : begin getDataSize = 0;  end
      1 : begin getDataSize = 1;  end
      2 : begin getDataSize = 2;  end
      3 : begin getDataSize = 3;  end
      4 : begin getDataSize = 4;  end
      5 : begin getDataSize = 5;  end
      6 : begin getDataSize = 6;  end
      7 : begin getDataSize = 7;  end
      8 : begin getDataSize = 8;  end
      9 : begin getDataSize = 12; end
      10: begin getDataSize = 16; end
      11: begin getDataSize = 20; end
      12: begin getDataSize = 24; end
      13: begin getDataSize = 32; end
      14: begin getDataSize = 48; end
      15: begin getDataSize = 64; end
      default:
        getDataSize = 0;
     endcase
  endfunction : getDataSize



  // ***************************************************************
  // Method : pre_body
  // Desc.  : Raise an objection to prevent premature simulation end
  // ***************************************************************
  virtual task pre_body();
   `ifdef UVM_POST_VERSION_1_1
         var uvm_phase starting_phase = get_starting_phase();
   `endif
    if (starting_phase != null) begin
      starting_phase.raise_objection(this);
    end
    

  endtask

  // ***************************************************************
  // Method : post_body
  // Desc.  : Drop the objection raised earlier
  // ***************************************************************
  //virtual task post_body();
  //  if (starting_phase != null) begin
  //    starting_phase.drop_objection(this);
  //  end
  //endtask


endclass

// ----------------------------------------------------------------------------
// Class : netDefaultSequenceForLT
//
// This class implements simple read transaction according to the
// configuraton 
// ----------------------------------------------------------------------------

class netDefaultSequenceForLT extends myCdnCanUvmVirtualSequence;
  
  // avalon item handle
  avalon_item dino; 

  // Debug Interface for Canakari
  virtual interface debug_if dvif; 

  // Config Variables for Canakari 
  byte divider_cfg    = 8'd10; // ranged from 2 to 32

  bit [3:0] tseg1_cfg = 4'd5;  //soma: n1
  bit [3:0] tseg2_cfg = 4'd4;  //soma: n2
  bit [2:0] sjw_cfg   = 3'd4;  //soma: rjw

  bit tx_enable_cfg   = 1'b1;  // physical layer
  bit irq_status_cfg  = 1'b0;
  bit irq_suctra_cfg  = 1'b0;
  bit irq_sucrec_cfg  = 1'b0;

  bit [28:0] accmask_cfg  = 29'b000000000000000000_00000000000; 

  // Global Variables for CopyLastTrans()
  bit [28:0] lastIdentifier; 
  bit        lastRemote;
  bit        lastExtended;
  bit [ 3:0] lastLength;
  bit [63:0] lastPayload;


  DenaliSvCdn_can::denaliCdn_canTransaction netFrame;
  DenaliSvCdn_can::denaliCdn_canTransaction ltFrame;
  DenaliSvCdn_can::denaliCdn_canTransaction dataFrame;

  // Following variable can be used to run specific test and end simulation after test is done,
  // the variable is used in the body method and the stop_test method (Leduc)
  DenaliSvCdn_can::denaliCdn_canLtTestGroupT TargetTestGroup = DENALI_CDN_CAN_LTTESTGROUP_SECTION_7_1; // Test Class to run

  event drop_objection_e;  // Used to block post body from dropping objection to early

  uvm_object obj;
  
  // ---------------------------------------------------------------
  // The sequence item (transaction) that will be randomized and
  // passed to the driver.
  // ---------------------------------------------------------------
  lastCdnCanFrameLT lastTranmittedFrame;
  rand myCdnCanTransaction trans;
  myCdnCanTransaction req;

  //required parameter
  logic [511:0] tryreg_after_stream;
  logic [511:0] dut_data_to_lt_pack; // temporary variable needed in task dut_data_outport_filler
  logic [7:0] data [];
  rand int can_dut_tec_lt_int;

  // ---------------------------------------------------------------
  // Use the UVM Sequence macro for this class.
  // ---------------------------------------------------------------
  `uvm_object_utils_begin(netDefaultSequenceForLT)
    `uvm_field_object(trans, UVM_ALL_ON)
  `uvm_object_utils_end
  `uvm_declare_p_sequencer(cdnCanUvmUserVirtualSequencer)

  virtual task pre_body();
   `ifdef UVM_POST_VERSION_1_1
         var uvm_phase starting_phase = get_starting_phase();
   `endif

    if (starting_phase != null) begin
      starting_phase.raise_objection(this);
    end   
    
  endtask

  // ***************************************************************
  // Method : post_body
  // Desc.  : Drop the objection raised earlier
  // ***************************************************************
  virtual task post_body();
   `ifdef UVM_POST_VERSION_1_1
         var uvm_phase starting_phase = get_starting_phase();
   `endif
    if (starting_phase != null) begin
       @drop_objection_e;
       $display("D R O P P I N G     O B J E C T I O N");
       starting_phase.drop_objection(this);
    end    
  endtask   


  // ---------------------------------------------------------------
  // Method : new
  // Desc.  : Call the constructor of the parent class.
  // ---------------------------------------------------------------
  function new(string name = "netDefaultSequenceForLT");
    super.new(name);
  endfunction : new

//// AUSKOMMENTIEREN ab hier 

  // function void copyLastTrans(denaliCdn_canTransaction trans) ;
  //     //$display("lastTransaction for retransmission");
  //     lastTranmittedFrame = new();
  //     lastTranmittedFrame.Type             = trans.Type;
  //     lastTranmittedFrame.Owner            = trans.Owner;
  //     lastTranmittedFrame.FrameKind        = trans.FrameKind;
  //     lastTranmittedFrame.FrameFormat      = trans.FrameFormat;  
  //     lastTranmittedFrame.Identifier       = trans.Identifier;
  //     lastTranmittedFrame.Dlc              = trans.Dlc;
  //     lastTranmittedFrame.FDFORMAT         = trans.FDFORMAT;
  //     lastTranmittedFrame.BRSEnable        = trans.BRSEnable;
  //     lastTranmittedFrame.StuffCountEnable = trans.StuffCountEnable;
  // endfunction : copyLastTrans

  function void CopyLastTrans( input bit [28:0]    lastIdentifier, 
                                  input bit        lastRemote,
                                  input bit        lastExtended,
                                  input bit [ 3:0] lastLength,                               
                                  input bit [63:0] lastPayload);

    this.lastIdentifier = lastIdentifier;
    this.lastRemote     = lastRemote;   
    this.lastExtended   = lastExtended;
    this.lastLength     = lastLength; 
    this.lastPayload    = lastPayload;

  endfunction : CopyLastTrans

      // The folowing task ensures other tasks to access the currently send CAN frame (netFrame),
      // this is the only source that sets netFrame Variable (Leduc)

         task good_frame_completed;
         begin
          forever 
             begin
                p_sequencer.pEnv.passiveCan.monitor.frameCompletedCbEvent.wait_trigger_data(obj);
                `uvm_info("good_frame_completed", "Excecute good_frame_completed", UVM_LOW)  // For Debug Purpose Leduc
                //$display("Good frame completed");
                if (!$cast(netFrame,obj)) `uvm_fatal(get_type_name(),"$cast(netFrame,obj) call failed");     
             end
         end
         endtask 

         ////////////////////////////////////////////////////////////////////////////
         //   DUT needs to genenerate a transaction with respective to LT request  //
         ////////////////////////////////////////////////////////////////////////////

         
         /////////////////////////////////////////////////////////////////////////////
         // Instruction for USER                                                    //
         //     -  DUT should transmit requested frame as below                     //
         //                                                                         //
         /////////////////////////////////////////////////////////////////////////////


           task reply_to_remote_frame;
           begin
              forever begin
               int        identifier; // predefined cadence
               bit [28:0] identifier_msg; 
               bit        start_tx_msg = 1'b1;
               bit        remote_msg;
               bit        extended_msg;
               bit [ 3:0] length_msg;
               bit [63:0] payload_msg;
               
               p_sequencer.pEnv.ltCan.monitor.replyToRemoteFrameCbEvent.wait_trigger();
               `uvm_info("reply_to_remote_frame", "Excecute reply_to_remote_frame", UVM_LOW)  // For Debug Purpose Leduc
               //$display("reply_to_remote_frame():AGENT STARTS FRAME TRANSMISSION UPON LT REMOTE REQUEST");
               assert ( netFrame.FrameKind == DENALI_CDN_CAN_FRAMEKIND_REMOTE)
                  else $error("IUT monitor did not receive correctly the remote frame");

               if (netFrame.FrameFormat == DENALI_CDN_CAN_FRAMEFORMAT_EXTENDED) begin
                  identifier = {netFrame.BaseId2,netFrame.ExtendedId2};
               end
               else begin
                  identifier = netFrame.BaseId2;
               end

               /* IUT/DUT must randomizing field with below constraint */ 

               //auto-constraints

          /*  `uvm_create_on(trans,p_sequencer.activeCanSeqr)
             trans.randomize() with {
              Type          == DENALI_CDN_CAN_TR_DR_Frame;
              Owner         == DENALI_CDN_CAN_OWNERKIND_DRIVER;
              FrameKind     == DENALI_CDN_CAN_FRAMEKIND_DATA;
              FrameFormat   == netFrame.FrameFormat;  
              Dlc           == netFrame.Dlc;
              DataByte.size == netFrame.Dlc;          // size of array is set fit next command (leduc)
              Identifier    == identifier; 
              FDFORMAT      == 0;
              BRSEnable     == 0;
              };

              foreach (trans.DataByte[i])           // payload is written
                trans.DataByte[i] = ltFrame.LtDataToDut[i];

              `uvm_send(trans)   
 
             copyLastTrans(trans);  */

             // Framekind
             remote_msg = 1'b0;

             // FrameFormat
            if (netFrame.FrameFormat == DENALI_CDN_CAN_FRAMEFORMAT_STANDARD) begin
              extended_msg = 1'b0;
              end
            else if(netFrame.FrameFormat == DENALI_CDN_CAN_FRAMEFORMAT_EXTENDED) begin
              extended_msg = 1'b1;
              end
            else begin
              `uvm_error(get_type_name(), "FrameFormat could not be derived in task reply_to_remote_frame")
            end

            // DLC
            length_msg = netFrame.Dlc;

            // Databyte (Payload)
          //  netFrame.print(); // debug
          //  ltFrame.print();  // debug
          //  $display ("starting for loop: reply_to_remote_frame");  // debug
            for (int i = 0, j = 63; i <= netFrame.Dlc; i++, j = j-8) begin  // payload depends on netFrame.dlc see constraint for trans above
			            
                  payload_msg[j -: 8]= ltFrame.LtDataToDut[i];

                //  $display("payload_msg[%d -: 8] = ltFrame.LtDataToDut[%d]", j, i); // debug
                //  $display("ltFrame.LtDataToDut[%d] = %b",i, ltFrame.LtDataToDut[i]);
                  $display("payload_msg[%d -: 8] = %b", j, payload_msg[j -: 8]);
		        end
                  $display("netFrame.Dlc= %d",netFrame.Dlc);
                  $display("payload_msg = %h",payload_msg);
                  $display("ltFrame.LtDataToDut[0] = %b", ltFrame.LtDataToDut[0]);
                  $display("payload_msg[63:56] = %b and ltFrame.LtDataToDut[0] = %b",payload_msg[63:56],ltFrame.LtDataToDut[0]);
                  $display("payload_msg[55:48] = %b and ltFrame.LtDataToDut[1] = %b",payload_msg[55:48],ltFrame.LtDataToDut[1]);
                  $display("payload_msg[47:40] = %b and ltFrame.LtDataToDut[2] = %b",payload_msg[47:40],ltFrame.LtDataToDut[2]);
                  $display("payload_msg[39:32] = %b and ltFrame.LtDataToDut[3] = %b",payload_msg[39:32],ltFrame.LtDataToDut[3]);
                  $display("payload_msg[31:24] = %b and ltFrame.LtDataToDut[4] = %b",payload_msg[31:24],ltFrame.LtDataToDut[4]);
                  $display("payload_msg[23:16] = %b and ltFrame.LtDataToDut[5] = %b",payload_msg[23:16],ltFrame.LtDataToDut[5]);
                  $display("payload_msg[15: 8] = %b and ltFrame.LtDataToDut[6] = %b",payload_msg[15: 8],ltFrame.LtDataToDut[6]);
                  $display("payload_msg[ 7: 0] = %b and ltFrame.LtDataToDut[7] = %b",payload_msg[ 7: 0],ltFrame.LtDataToDut[7]);  


            //payload_msg = {>>8{ltFrame.LtDataToDut}};  // Use Streaming Operator (DOES NOT WORK DYN ARRAY IS CREATED WITH FULL 64 ITEMS)
             
            // Identifier
            identifier_msg = identifier;  

            // Send Transmission
            send_can_message(start_tx_msg, remote_msg, extended_msg, length_msg, payload_msg, identifier_msg);

            // Copy the CAN Transmission Values
            CopyLastTrans(identifier_msg, remote_msg, extended_msg, length_msg, payload_msg);

             //`uvm_info(get_type_name(), $psprintf("DEBUG_0 Frame on Remote reqFrame : %s\n",trans.sprint()), UVM_LOW)
             //`uvm_info(get_type_name(), $psprintf("reply_to_remote_frame lastTranmittedFrame: %s\n",lastTranmittedFrame.sprint()), UVM_LOW)

           end // forever loop
         end 
         endtask
 
         /////////////////////////////////////////////////////////////////////////////
         // Instruction for USER                                                    //
         //     -  DUT should transmit requested frame as below                     //
         //                                                                         //
         /////////////////////////////////////////////////////////////////////////////


           task reply_to_remote_frame_with_FD;
           begin
              forever begin

          //    int identifier;
               p_sequencer.pEnv.ltCan.monitor.replyToRemoteFrameWithFDCbEvent.wait_trigger();
               `uvm_fatal("reply_to_remote_frame_with_FD","The task reply_to_remote_frame_with_FD has been called"); 
              
          //      $display("reply_to_remote_frame_with_FD():AGENT STARTS FD FRAME TRANSMISSION UPON LT REMOTE REQUEST");

          //      assert ( netFrame.FrameKind == DENALI_CDN_CAN_FRAMEKIND_REMOTE)
          //         else $error("IUT monitor did not receive correctly the remote frame");

          //      if (netFrame.FrameFormat == DENALI_CDN_CAN_FRAMEFORMAT_EXTENDED) begin
          //         identifier = {netFrame.BaseId2,netFrame.ExtendedId2};
          //      end
          //      else begin
          //         identifier = netFrame.BaseId2;
          //      end
                
          //      /* IUT/DUT must randomizing field with below constraint */ 

          //      //auto-constraints
           
          //  `uvm_create_on(trans,p_sequencer.activeCanSeqr)
          //    trans.randomize() with {
          //     Type          == DENALI_CDN_CAN_TR_DR_Frame;
          //     Owner         == DENALI_CDN_CAN_OWNERKIND_DRIVER;
          //     FrameKind     == DENALI_CDN_CAN_FRAMEKIND_DATA;
          //     FrameFormat   == netFrame.FrameFormat;  
          //     Dlc           == netFrame.Dlc;
          //     DataByte.size == getDataSize(netFrame.Dlc);
          //     Identifier    == identifier; 
          //     FDFORMAT      == 1;
          //     BRSEnable     == 1;
          //     StuffCountEnable == 1;
          //   }; 
          //     foreach (trans.DataByte[i]) 
          //       trans.DataByte[i] = ltFrame.LtDataToDut[i];

          //   `uvm_send(trans)
                
   
          //    copyLastTrans(trans);  */

          //    //`uvm_info(get_type_name(), $psprintf("reply_to_remote_frame_with_FD  trans : %s\n",trans.sprint()), UVM_LOW)
          //    //`uvm_info(get_type_name(), $psprintf("reply_to_remote_frame_with_FD lastTranmittedFrame: %s\n",lastTranmittedFrame.sprint()), UVM_LOW)
            
           end // forever loop
         end 
         endtask

         task invoke_a_dut_remote_frame;
         begin
            forever begin
               bit [28:0] identifier_msg; 
               bit        start_tx_msg = 1'b1;
               bit        remote_msg;
               bit        extended_msg;
               bit [ 3:0] length_msg;
               bit [63:0] payload_msg;

               p_sequencer.pEnv.ltCan.monitor.invokeDutRemoteFrameCbEvent.wait_trigger_data(obj);
               if (!$cast(ltFrame,obj)) `uvm_fatal(get_type_name(),"$cast(ltFrame,obj) call failed");     
               //ltFrame.print();
               //$display("invoke_a_dut_remote_frame(): AGENT STARTS REMOTE FRAME TRANSMISSION UPON LT REQUEST");
               `uvm_info("invoke_a_dut_remote_frame", "Excecute invoke_a_dut_remote_frame", UVM_LOW)  // For Debug Purpose Leduc
               /* IUT/DUT must randomizing field with below constraint */
 
               //auto-constraints
           /*    `uvm_do_on_with (this.trans,p_sequencer.activeCanSeqr,{
               Type       == DENALI_CDN_CAN_TR_DR_Frame;
               Owner      == DENALI_CDN_CAN_OWNERKIND_DRIVER;
               FrameKind  == DENALI_CDN_CAN_FRAMEKIND_REMOTE;
               FrameFormat== ltFrame.FrameFormatLT;  
               Dlc        == ltFrame.DlcLT;
               Identifier == ltFrame.IdentifierLT;
               FDFORMAT   == 0;
               BRSEnable  == 0;
               })
                      
               copyLastTrans(trans); */

              // DEBUG PURPOSE LEDUC
              `uvm_info({get_type_name," : ID"},$psprintf("Printing Object \n %s",ltFrame.sprint()),UVM_LOW)


             // Framekind
             remote_msg = 1'b1;

             // FrameFormat
            if (ltFrame.FrameFormatLT == DENALI_CDN_CAN_FRAMEFORMAT_STANDARD) begin
              extended_msg = 1'b0;
              end
            else if(ltFrame.FrameFormatLT == DENALI_CDN_CAN_FRAMEFORMAT_EXTENDED) begin
              extended_msg = 1'b1;
              end
            else begin
              `uvm_error(get_type_name(), "FrameFormat could not be derived in task invoke_a_dut_remote_frame")
            end

            // DLC
            length_msg = ltFrame.DlcLT;

            // Databyte (Payload)
            payload_msg = 'd0;  // remote frame no payload
             
            // Identifier
            identifier_msg = ltFrame.IdentifierLT; // IdentifierLT is reg [28:0], legal assignment (double checked!)

            // Send Transmission
            send_can_message(start_tx_msg, remote_msg, extended_msg, length_msg, payload_msg, identifier_msg);

            // Copy the CAN Transmission Values
            CopyLastTrans(identifier_msg, remote_msg, extended_msg, length_msg, payload_msg);              
              

            //`uvm_info(get_type_name(), $psprintf("DEBUG_1 Remote Frame : %s\n",trans.sprint()), UVM_LOW)
            //`uvm_info(get_type_name(), $psprintf(" invoke_a_dut_remote_frame lastTranmittedFrame: %s\n",lastTranmittedFrame.sprint()), UVM_LOW)

            end // forever loop
         end 
         endtask 

         
         task invoke_a_dut_frame;
         begin 
            forever begin
               bit [28:0] identifier_msg; 
               bit        start_tx_msg = 1'b1;
               bit        remote_msg;
               bit        extended_msg;
               bit [ 3:0] length_msg;
               bit [63:0] payload_msg;

               p_sequencer.pEnv.ltCan.monitor.invokeDutFrameCbEvent.wait_trigger();
               //$display("invoke_a_dut_frame():AGENT STARTS DATA FRAME TRANSMISSION UPON LT REQUEST");
               `uvm_info("invoke_a_dut_frame", "Excecute invoke_a_dut_frame", UVM_LOW)
               /* IUT/DUT must randomizing field with below constraint */
 
               //auto-constraints
  
         /*    `uvm_create_on(trans,p_sequencer.activeCanSeqr)   // NO IDENTIFIER SPECIFIED HERE (RANDOMIZED)
              trans.randomize() with {
               Type       == DENALI_CDN_CAN_TR_DR_Frame;
               Owner      == DENALI_CDN_CAN_OWNERKIND_DRIVER;
               FrameKind  == DENALI_CDN_CAN_FRAMEKIND_DATA;
               FrameFormat== ltFrame.FrameFormatLT;  
               Dlc        == netFrame.Dlc;
               DataByte.size == netFrame.Dlc;
               FDFORMAT   == 0;
               BRSEnable  == 0;
              };  

               foreach (trans.DataByte[i])
                     trans.DataByte[i] = ltFrame.LtDataToDut[i];
              `uvm_send(trans)


               copyLastTrans(trans); */

              // Use randomization of trans to create randomized identifier (leduc)
              //trans = new();
              trans = myCdnCanTransaction::type_id::create("trans");
              trans.randomize() with {
               Type       == DENALI_CDN_CAN_TR_DR_Frame;
               Owner      == DENALI_CDN_CAN_OWNERKIND_DRIVER;
               FrameKind  == DENALI_CDN_CAN_FRAMEKIND_DATA;
               FrameFormat== ltFrame.FrameFormatLT;  
               Dlc        == netFrame.Dlc;
               DataByte.size == netFrame.Dlc;
               FDFORMAT   == 0;
               BRSEnable  == 0;
               };

             // FrameKind
             remote_msg = 1'b0;

             // FrameFormat
            if (ltFrame.FrameFormatLT == DENALI_CDN_CAN_FRAMEFORMAT_STANDARD) begin
              extended_msg = 1'b0;
              end
            else if(ltFrame.FrameFormatLT == DENALI_CDN_CAN_FRAMEFORMAT_EXTENDED) begin
              extended_msg = 1'b1;
              end
            else begin
              `uvm_error(get_type_name(), "FrameFormat could not be derived in task invoke_a_dut_frame")
            end

            // DLC
            length_msg = netFrame.Dlc;

            // Databyte (Payload)
            $display ("starting for loop: invoke_a_dut_frame");
            for (int i = 0, j = 63; i <= netFrame.Dlc; i++, j = j-8) begin  // payload depends on netFrame.dlc see constraint for trans above
			            
                  payload_msg[j -: 8]= ltFrame.LtDataToDut[i];
                  $display("payload_msg[%d -: 8] = ltFrame.LtDataToDut[%d]", j, i);
		        end

            //payload_msg = {>>8{ltFrame.LtDataToDut}};  // Use Streaming Operator
             
            // Identifier
            identifier_msg = trans.Identifier; // Identifier is reg [28:0], legal assignment

            // Send Transmission
            send_can_message(start_tx_msg, remote_msg, extended_msg, length_msg, payload_msg, identifier_msg);

            // Copy the CAN Transmission Values
            CopyLastTrans(identifier_msg, remote_msg, extended_msg, length_msg, payload_msg);               

            //`uvm_info(get_type_name(), $psprintf("DEBUG_2 Data Frame : %s\n",trans.sprint()), UVM_LOW)
            //`uvm_info(get_type_name(), $psprintf("invoke_a_dut_frame lastTranmittedFrame: %s\n",lastTranmittedFrame.sprint()), UVM_LOW)
            end //forever loop
         end 
         endtask 

         task invoke_a_dut_frame_FD;
         begin 
            forever begin
               p_sequencer.pEnv.ltCan.monitor.invokeDutFrameFDCbEvent.wait_trigger();
               `uvm_fatal("invoke_a_dut_frame_FD","The task invoke_a_dut_frame_FD has been called"); 

            //    $display("invoke_a_dut_frame_FD():AGENT STARTS FD DATA FRAME TRANSMISSION UPON LT REQUEST");

            //    /* IUT/DUT must randomizing field with below constraint */
 
            //    //auto-constraints
  
            //  `uvm_create_on(trans,p_sequencer.activeCanSeqr)   // NO IDENTIFIER SPECIFIED HERE
            //   trans.randomize() with {
            //    Type          == DENALI_CDN_CAN_TR_DR_Frame;
            //    Owner         == DENALI_CDN_CAN_OWNERKIND_DRIVER;
            //    FrameKind     == DENALI_CDN_CAN_FRAMEKIND_DATA;
            //    FrameFormat   == ltFrame.FrameFormatLT;  
            //    Dlc           == netFrame.Dlc;
            //    DataByte.size == getDataSize(netFrame.Dlc);
            //    FDFORMAT      == 1;
            //    BRSEnable     == 1;
            //    StuffCountEnable == 1;
            //   };  

            //    foreach (trans.DataByte[i])
            //          trans.DataByte[i] = ltFrame.LtDataToDut[i];
            //  `uvm_send(trans)


            //    copyLastTrans(trans); 

            //    //`uvm_info(get_type_name(), $psprintf("DEBUG_2 Data Frame : %s\n",trans.sprint()), UVM_LOW)

            end //forever loop
         end 
         endtask 

         task invoke_dut_frame_retransm; 
         begin
            forever begin
               bit [28:0] identifier_msg; 
               bit        start_tx_msg = 1'b1;
               bit        remote_msg;
               bit        extended_msg;
               bit [ 3:0] length_msg;
               bit [63:0] payload_msg;

               p_sequencer.pEnv.ltCan.monitor.invokeDutFrameRetransmCbEvent.wait_trigger();
               `uvm_info("invoke_dut_frame_retransm", "Excecute invoke_dut_frame_retransm", UVM_LOW)  // For Debug Purpose Leduc
               //$display("invoke_dut_frame_retransm() : AGENT STARTS RETRANSMISSION OF FRAME UPON LT REQUEST");
               //`uvm_info(get_type_name(), $psprintf("invoke_dut_frame_retransm lastTranmittedFrame: %s\n",lastTranmittedFrame.sprint()), UVM_LOW)

          /*    `uvm_create_on(trans,p_sequencer.activeCanSeqr)
              trans.randomize() with {
               Type             == lastTranmittedFrame.Type;
               Owner            == lastTranmittedFrame.Owner;
               FrameKind        == lastTranmittedFrame.FrameKind;
               FrameFormat      == lastTranmittedFrame.FrameFormat;  
               Identifier       == lastTranmittedFrame.Identifier;
               Dlc              == lastTranmittedFrame.Dlc;
               DataByte.size    == getDataSize(lastTranmittedFrame.Dlc);
               FDFORMAT         == lastTranmittedFrame.FDFORMAT;            // Needed for FD Format (leduc)
               BRSEnable        == lastTranmittedFrame.BRSEnable;           // Needed for FD Format (leduc)
               StuffCountEnable == lastTranmittedFrame.StuffCountEnable;    // Needed for FD Format (leduc)
              };  

              if(trans.FrameKind != DENALI_CDN_CAN_FRAMEKIND_REMOTE)
               begin
               foreach (trans.DataByte[i])
                     trans.DataByte[i] = ltFrame.LtDataToDut[i];
               end

             //`uvm_info(get_type_name(), $psprintf("lastTranmittedFrame : %s\n",trans.sprint()), UVM_LOW)
             `uvm_send(trans) */

            // FrameKind
            remote_msg = this.lastRemote;

             // FrameFormat
            extended_msg = this.lastExtended;
              
            // DLC
            length_msg = this.lastLength;

            // Databyte (Payload)
            $display ("starting for loop: invoke_dut_frame_retransm");
            for (int i = 0, j = 63; i <= this.lastLength; i++, j = j-8) begin  // payload depends on last transmitted frame see constraint for trans above
			            
                  payload_msg[j -: 8]= ltFrame.LtDataToDut[i];
                  $display("payload_msg[%d -: 8] = ltFrame.LtDataToDut[%d]", j, i);
		        end
            //payload_msg = this.lastPayload;  
             
            // Identifier
            identifier_msg = this.lastIdentifier; 

            // Send Transmission
            send_can_message(start_tx_msg, remote_msg, extended_msg, length_msg, payload_msg, identifier_msg);

            end 
         end 
         endtask

//          /////////////////////////////////////////////////////////////////////////////
//          // Instruction for USER                                                    //
//          //     - Internal reception data buffer of DUT needs to be connected       //
//          //                                                                         //
//          /////////////////////////////////////////////////////////////////////////////


         // Fill the IUT internal reception data buffer
         task setup_DUT_rx_buffer;
         begin
            forever begin
               p_sequencer.pEnv.ltCan.monitor.setupDUT_rxBufferCbEvent.wait_trigger();
               //$display("setup_DUT_rx_buffer(): IUT data to LT - READY");
               `uvm_info("setup_DUT_rx_buffer", "Excecute setup_DUT_rx_buffer", UVM_LOW)  // For Debug Purpose Leduc
               $root.cdnCanPstest.can_dut_data_to_lt_reg = 64'haabb_ccdd_eeff_5555;
            end
         end 
         endtask

         //Fill the IUT internal transmission data buffer 
         task setup_DUT_tx_buffer;
         begin
            forever begin
               p_sequencer.pEnv.ltCan.monitor.setupDUT_txBufferCbEvent.wait_trigger_data(obj);
               if (!$cast(ltFrame,obj)) `uvm_fatal(get_type_name(),"$cast(ltFrame,obj) call failed");     
               `uvm_info("setup_DUT_tx_buffer", "Excecute setup_DUT_tx_buffer", UVM_LOW)  // For Debug Purpose Leduc
               //ltFrame.print();
               //$display("LT DATA TO DUT - READY ");
            end 
         end 
         endtask

//          /////////////////////////////////////////////////////////////////////////////
//          //                                                                         //
//          //           Internal : no need to modify by user                          //
//          //                                                                         //
//          /////////////////////////////////////////////////////////////////////////////

        //  task dut_data_out_port_filler;
        //  begin
        //     forever begin
        //        p_sequencer.pEnv.passiveCan.monitor.dutDataOutPortCbEvent.wait_trigger_data(obj);
        //        `uvm_info("dut_data_out_port_filler", "Excecute dut_data_out_port_filler", UVM_LOW)  // For Debug Purpose Leduc
        //        if (!$cast(dataFrame,obj)) `uvm_fatal(get_type_name(),"$cast(dataFrame,obj) call failed");     
        //        //dataFrame.print();
        //        //$display("dut_data_out_port_filler()");
           
        //        // condition for transmitting data to LT

        //        if (dataFrame.Dlc != 0 && dataFrame.FrameKind == DENALI_CDN_CAN_FRAMEKIND_DATA) begin        
        //           dut_data_to_lt_pack = {>>{dataFrame.DataByte}};
        //           $root.cdnCanPstest.can_dut_data_to_lt_reg = dut_data_to_lt_pack; 
        //           //$display("Packed Data \n %h",dut_data_to_lt_pack);
        //           end
        //        else begin
        //          $root.cdnCanPstest.can_dut_data_to_lt_reg = 0;
        //           end  
        //     end // forever 
        //  end
        //  endtask

        // THIS TASK IS REWRITTEN LIKE I BELIEVE IT SHOULD BE USED (LEDUC)

        task dut_data_out_port_filler;
         begin
            bit [63:0] receive_reg;
            forever begin
               p_sequencer.pEnv.passiveCan.monitor.dutDataOutPortCbEvent.wait_trigger_data(obj);
               `uvm_info("dut_data_out_port_filler", "Excecute dut_data_out_port_filler", UVM_LOW)  // For Debug Purpose Leduc
               if (!$cast(dataFrame,obj)) `uvm_fatal(get_type_name(),"$cast(dataFrame,obj) call failed");     
               //$display("dut_data_out_port_filler()");
           
               // Still use passive CAN agent to check if data frame and write is necessary 

               if (dataFrame.Dlc != 0 && dataFrame.FrameKind == DENALI_CDN_CAN_FRAMEKIND_DATA) begin     

                receive_reg = 64'd0;   
                  
                if (! uvm_hdl_read("cdnCanPstest.CANakari.IOControl.recd01r", receive_reg [63:48])) begin
			          `uvm_error ("dut_data_out_port_filler", "cdnCanPstest.CANakariIOControl.recd01r.")
                end

                 if (! uvm_hdl_read("cdnCanPstest.CANakari.IOControl.recd23r", receive_reg[47:32])) begin
			          `uvm_error ("dut_data_out_port_filler", "cdnCanPstest.CANakari.IOControl.recd23r")
                 end

                 if (! uvm_hdl_read("cdnCanPstest.CANakari.IOControl.recd45r", receive_reg[31:16])) begin
			          `uvm_error ("dut_data_out_port_filler", "cdnCanPstest.CANakari.IOControl.recd45r")
                 end

                 if (! uvm_hdl_read("cdnCanPstest.CANakari.IOControl.recd67r", receive_reg[15:0])) begin
			          `uvm_error ("dut_data_out_port_filler", "cdnCanPstest.CANakari.IOControl.recd67r")
                 end

                // Debug Commands
                 dut_data_to_lt_pack = {>>{dataFrame.DataByte}};
                
               // dataFrame.print();
                $display("The value of dut_data_to_lt_pack is: %h", dut_data_to_lt_pack);
                $display("The value of receive_reg is: %h", receive_reg);

               //tryreg_after_stream = {>>{receive_reg[7:0],receive_reg[15:8],receive_reg[23:16],receive_reg[31:24], receive_reg[39:32],receive_reg[47:40],receive_reg[55:48],receive_reg[63:56]}};
               
                tryreg_after_stream = {receive_reg, 448'd0};
                $display("The value of tryreg_after_stream = (receive_reg, 448'd0};) is: %h", tryreg_after_stream);

                $root.cdnCanPstest.can_dut_data_to_lt_reg = {receive_reg, 448'd0};
              end
        
              else begin
                 $root.cdnCanPstest.can_dut_data_to_lt_reg = 0;
              end  
            end // forever 
         end
         endtask

//          ///////////////////////////////////////////////////////////////////////////////////////
//          //                                                                                   //  
//          //   DUT needs to configure a TEC,REC & Data buffer(Tx,Rx) on associated call backs  //    
//          //                                                                                   //  
//          ///////////////////////////////////////////////////////////////////////////////////////

//          /////////////////////////////////////////////////////////////////////////////
//          // Instruction for USER                                                    //
//          //     - Integrate DUT's TEC/REC/FAULT_STATE registers in each task,       //
//          //       so it can be modified on same time with same value                //
//          //       i.e. Replace CAN_ACTIVE_AGENT with DUT agent registers            //
//          /////////////////////////////////////////////////////////////////////////////

         task setup_default_state; 
         begin
            forever begin
               p_sequencer.pEnv.ltCan.monitor.setupDefaultStateCbEvent.wait_trigger();
               `uvm_info("setup_default_state", "Excecute setup_default_state", UVM_LOW)  // For Debug Purpose Leduc
         //      $display("--------- Reset IUT to default state  --------");
         //      p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_TxErrorCounter,0);
         //      p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_RxErrorCounter,0);
         //      p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_AgentFaultState,0);    
               p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_TxErrorCounter,0);
               p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_RxErrorCounter,0);
               p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_AgentFaultState,0);

              // Set REC Register of Canakari
               if (! uvm_hdl_deposit("cdnCanPstest.CANakari.FaultConfinement.rec_count.counterVoted", 9'd0)) begin
		            `uvm_error ("setup_default_state", "uvm_hdl_deposit task failed")
               end

              // Set TEC Register of Canakari
               if (! uvm_hdl_deposit("cdnCanPstest.CANakari.FaultConfinement.tec_count.counterVoted", 9'd0)) begin
		          	`uvm_error ("setup_default_state", "uvm_hdl_deposit task failed")
               end

            end
         end 
         endtask

         //DEPRECATED  
         task setup_force_REC_increment;
         begin
            forever begin
               p_sequencer.pEnv.ltCan.monitor.setupForce_REC_incrementCbEvent.wait_trigger();
               `uvm_fatal("setup_force_REC_increment","The task setup_force_REC_increment [DEPRECATED] has been called");
              //  $display("--------- setup_force_REC_increment --------");
              //  p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_RxErrorCounter,1);
              //  p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_RxErrorCounter,1);
            end
         end 
         endtask

         //DEPRECATED  
         task setup_force_TEC_increment;
         begin
            forever begin
               p_sequencer.pEnv.ltCan.monitor.setupForce_TEC_incrementCbEvent.wait_trigger();
               `uvm_fatal("setup_force_TEC_increment","The task setup_force_TEC_increment [DEPRECATED] has been called");
              //  $display("--------- setup_force_TEC_increment --------");
              //  p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_TxErrorCounter,1);
              //  p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_TxErrorCounter,1);
            end
         end 
         endtask

         //DEPRECATED  
         task setup_REC_passive_level;
         begin
            forever begin
               p_sequencer.pEnv.ltCan.monitor.setupREC_passiveLevelCbEvent.wait_trigger();
               `uvm_fatal("setup_REC_passive_level","The task setup_REC_passive_level [DEPRECATED] has been called");
              //  $display("--------- setup_REC_passive_level --------");
              //  p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_RxErrorCounter,130);
              //  p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_AgentFaultState,1);
              //  p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_RxErrorCounter,130);
              //  p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_AgentFaultState,1);
            end 
         end 
         endtask

         //DEPRECATED  
         task setup_TEC_passive_level;
         begin
            forever 
            begin
               p_sequencer.pEnv.ltCan.monitor.setupTEC_passiveLevelCbEvent.wait_trigger();
               `uvm_fatal("setup_TEC_passive_level","The task setup_TEC_passive_level [DEPRECATED] has been called");
              //  $display("--------- setup_TEC_passive_level --------");
              //  p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_TxErrorCounter,130);
              //  p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_AgentFaultState,1);
              //  p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_TxErrorCounter,130);
              //  p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_AgentFaultState,1);
            end 
         end 
         endtask

         //DEPRECATED  
         task setup_passive_error_state;
         begin
            forever
            begin
               p_sequencer.pEnv.ltCan.monitor.setupPassiveErrorStateCbEvent.wait_trigger();
               `uvm_fatal("setup_passive_error_state","The task setup_passive_error_state [DEPRECATED] has been called");
              //  $display("--------- setup_passive_error_state --------");
              //  p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_TxErrorCounter,130);
              //  p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_RxErrorCounter,130);
              //  p_sequencer.pEnv.activeCan.regInst.writeReg(DENALI_CDN_CAN_REG_AgentFaultState,1);
              //  p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_TxErrorCounter,130);
              //  p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_RxErrorCounter,130);
              //  p_sequencer.pEnv.passiveCan.regInst.writeReg(DENALI_CDN_CAN_REG_AgentFaultState,1);
            end 
         end 
         endtask

// //          /////////////////////////////////////////////////////////////////////////////
// //          // Instruction for USER                                                    //
// //          //     - DUT's REC/TEC register needs to be connected                      //
// //          //                                                                         //
// //          /////////////////////////////////////////////////////////////////////////////

         // Read values of REC/TEC of IUT
         task iut_error_counter;
         begin
              bit [8:0] rec_data;
              bit [8:0] tec_data;
            forever
            begin
               @(posedge $root.cdnCanPstest.SpecClock0);
               // Read REC Register
		          if (! uvm_hdl_read("cdnCanPstest.CANakari.FaultConfinement.rec_count.counterVoted", rec_data)) begin
			          `uvm_error ("iut_error_counter", "cdnCanPstest.CANakari.FaultConfinement.rec_count.counterVoted")
              end
              // Read TEC Register
              if (! uvm_hdl_read("cdnCanPstest.CANakari.FaultConfinement.tec_count.counterVoted", tec_data)) begin
			          `uvm_error ("iut_error_counter", "cdnCanPstest.CANakari.FaultConfinement.tec_count.counterVoted")
              end

              $root.cdnCanPstest.can_dut_rec_lt_reg = rec_data [7:0];
              $root.cdnCanPstest.can_dut_tec_lt_reg = tec_data [7:0];
         //   $root.cdnCanPstest.can_dut_tec_lt_reg = p_sequencer.pEnv.activeCan.regInst.readReg(DENALI_CDN_CAN_REG_TxErrorCounter);
         //   $root.cdnCanPstest.can_dut_rec_lt_reg = p_sequencer.pEnv.activeCan.regInst.readReg(DENALI_CDN_CAN_REG_RxErrorCounter);
            end
         end 
         endtask

         task stop_test;
            forever
            begin
            p_sequencer.pEnv.ltCan.monitor.ltGroupSectionEndedCbEvent.wait_trigger_data(obj);
            `uvm_info("stop_test", "Excecute stop_test, but only end if final LtTestGroup reached", UVM_LOW)  // For Debug Purpose Leduc
            if (!$cast(ltFrame,obj)) `uvm_fatal(get_type_name(),"$cast(ltFrame,obj) call failed");
            //$display("LtTestGroup = %s ",ltFrame.LtTestGroup.name());
            //if (ltFrame.LtTestGroup == DENALI_CDN_CAN_LTTESTGROUP_SECTION_7_1) 
            if (ltFrame.LtTestGroup == TargetTestGroup)
             begin
             -> drop_objection_e;
             end
            //#90_000_000;
            //$finish;
         end 
            endtask 



        // SPECIAL TASK TO DEACTIVATE/KILL RETRANSMISSION OF CANAKARI BY FORCE (LEDUC)


         task kill_canakari_retransm; // Only kills retransmission in case of arbitration loss at the moment!!!
         begin
              bit [ 7:0] cstate_mac;      // fsm state mac
              bit [ 3:0] cstate_llc;      // fsm state llc
              bit [15:0] tmc_reg_data;    // transmission control register data
              bit [15:0] tmp_reg_data;    // temporary vector for bit manipulation
              bit [ 3:0] waittoact_llc = 4'b0000;   // deposit value for llc fsm
            forever
            begin
               @(posedge $root.cdnCanPstest.SpecClock0);
                              
               // Read FSM State of Logical Link Control
		          if (! uvm_hdl_read("cdnCanPstest.CANakari.LogicalLinkControl.llc_fsm_2.CURRENT_STATE", cstate_llc)) begin
			          `uvm_error ("kill_canakari_retransm","cdnCanPstest.CANakari.LogicalLinkControl.llc_fsm_2.CURRENT_STATE")
              end

              // Read FSM State of Medium Access Control
              if (! uvm_hdl_read("cdnCanPstest.CANakari.MediumAccessControl.fsm.current_state", cstate_mac)) begin
			          `uvm_error ("kill_canakari_retransm", "cdnCanPstest.CANakari.MediumAccessControl.fsm.current_state")
              end

              // Kill Retransmission in the LLC (#1) and in the MAC (2#)

              
              if (cstate_llc == 4'b0100) begin // trawtosuc   = 4'b0100 
                  
                  // (#1) Reset treq regarding the fsm state of llc 

                  if (! uvm_hdl_read("cdnCanPstest.CANakari.IOControl.tcontrol.register_i", tmc_reg_data)) begin
                    `uvm_error ("kill_canakari_retransm", "cdnCanPstest.CANakari.IOControl.tcontrol.register_i")
                  end
                  
                  tmp_reg_data = {1'b0,tmc_reg_data[14:0]}; // treq an msb position [15] ruecksetzen
                  
                  if (! uvm_hdl_deposit("cdnCanPstest.CANakari.IOControl.tcontrol.register_i",tmp_reg_data)) begin
                    `uvm_error ("kill_canakari_retransm", "cdnCanPstest.CANakari.IOControl.tcontrol.register_i")
                  end
            
                  // (#2) Check if Error State in the MAC appeared, if so reset LLC to waittoact state
                  // State_Coding:  errror_activfirstdom  = 8'h4f 
                  //                errorpassive_firstrec = 8'h5f 
                  //                busofffirst           = 8'h78 

                  if ( (cstate_mac == 8'h4f) || (cstate_mac == 8'h5f) || (cstate_mac == 8'h78)) begin
                  //  if ( cstate_mac == 8'h4f) begin
                    if (! uvm_hdl_deposit("cdnCanPstest.CANakari.LogicalLinkControl.llc_fsm_2.CURRENT_STATE", waittoact_llc)) begin
			              `uvm_error ("kill_canakari_retransm", "cdnCanPstest.CANakari.LogicalLinkControl.llc_fsm_2.CURRENT_STATE")
                  end
                end
              end

            end
         end 
         endtask  


//          /******************************************************************************************/



  // ---------------------------------------------------------------
  // Method : body
  // Desc.  : 
  // ---------------------------------------------------------------
  virtual task body();

      //  // can message data (just for test purpose, remove later)
      // bit start_tx_msg          = 1'b1;
      // bit remote_msg            = 1'b0;
      // bit extended_msg          = 1'b0;
      // bit [3:0] length_msg      = 'd2;
      // bit [63:0] payload_msg    = 64'h0077_0000_0000_0000;
      // bit [28:0] identifier_msg = 29'b000000000000000000_10101001000; // 18'ext_11'base

      // Connect the debug interface for CANakari
      `uvm_info(get_type_name(), "Connect Debug Interface for CANakari", UVM_LOW)
      if(!uvm_config_db #(virtual debug_if)::get(null, "uvm_test_top","dvif", dvif)) begin
         `uvm_error("body task", "debug interface not found")
      end

    $display("------------------------------------------------------------------------------------------------------");
    $display("-                                 Hard/Soft Reset for Canakari                                       -");
    $display("------------------------------------------------------------------------------------------------------");

     // Wait for finished Hard Reset of Canakari (Testbench)
     dvif.wait_for_reset;

     // Reset Canakari
     `uvm_info(get_type_name(), "Excecuting Canakari Soft Reset", UVM_LOW)
     soft_reset;

    $display("------------------------------------------------------------------------------------------------------");
    $display("-                                  Configuration for Canakari                                        -");
    $display("------------------------------------------------------------------------------------------------------");


     // configure canakari
     `uvm_info(get_type_name(), "Excecuting Canakari Configuration tasks", UVM_LOW)     
     configure_prescaler(divider_cfg);             
 	   configure_general(sjw_cfg, tseg1_cfg, tseg2_cfg);			
     configure_irq(tx_enable_cfg, irq_status_cfg, irq_suctra_cfg, irq_sucrec_cfg);	// activate physical layer		  
     configure_accmask(accmask_cfg);	

      // Wait for Idle State of CANakari
      `uvm_info(get_type_name(), "Wait for idle status of CANakari", UVM_LOW)
      dvif.wait_for_status(8'h09); 
      `uvm_info(get_type_name(), "Idle status has been reached", UVM_LOW) 

    $display("------------------------------------------------------------------------------------------------------");
    $display("-                                  Canakari reached Idle State                                       -");
    $display("------------------------------------------------------------------------------------------------------");

      // // Send CAN message
      // send_can_message(start_tx_msg, remote_msg, extended_msg, length_msg, payload_msg, identifier_msg);

      // // Test der UVM HDL backdoor access routines
      // if (! uvm_hdl_deposit("hw_top.CANakari.FaultConfinement.rec_count.counterVoted", 9'd35))
		  //	`uvm_error ("body task", "uvm_hdl_deposit task failed")


      /* === To run individual conformance test section ===
      
         Note: please enable 'stop_test' task and provide appropriate simulation finish 
                time in order to finish simulation while running individual section
      */
 
        `uvm_info(get_type_name(), "Run SECTION_7_1 of ISO test suit", UVM_MEDIUM);
       `uvm_do_on_with (this.trans,p_sequencer.ltCanSeqr,{
          trans.Type       == DENALI_CDN_CAN_TR_LT_sequences;
          //trans.LtTestGroup  == DENALI_CDN_CAN_LTTESTGROUP_SECTION_7_1; 
          trans.LtTestGroup  == TargetTestGroup;
       }) 

      /* === To Run All test from Test-suit === */

    /*  `uvm_info(get_type_name(), "Running ALL ISO TEST ", UVM_MEDIUM);
      `uvm_do_on_with (this.trans,p_sequencer.ltCanSeqr,{
         trans.Type         == DENALI_CDN_CAN_TR_LT_sequences;
         trans.LtTestGroup  == DENALI_CDN_CAN_LTTESTGROUP_SECTION_ALL;
       })
*/
   //   `uvm_info(get_type_name(), $psprintf("LtFrameSeq finished : %s\n",trans.sprint()), UVM_LOW)

           fork
            begin
               good_frame_completed;
            end
            begin
               reply_to_remote_frame;
            end
            begin
               reply_to_remote_frame_with_FD;
            end
            begin
               invoke_a_dut_remote_frame;
            end
            begin
               invoke_dut_frame_retransm;
            end
            begin
               invoke_a_dut_frame;
            end
            begin
               invoke_a_dut_frame_FD;
            end
            begin
               setup_default_state;
            end
            begin
               setup_force_REC_increment;
            end
            begin
               setup_TEC_passive_level;
            end
            begin
               setup_REC_passive_level;
            end
            begin
               setup_passive_error_state;
            end
            begin
               setup_DUT_rx_buffer;
            end
            begin
               setup_DUT_tx_buffer;
            end
            begin
               setup_force_TEC_increment;
            end
            begin
               dut_data_out_port_filler;
            end
            begin
               iut_error_counter;
            end
            begin
               stop_test; // Set stop condition 
            end
            begin
              kill_canakari_retransm; // stop retransmission
            end
        join_none 

      `uvm_info(get_type_name(), "Body task is alive, you made it til the end", UVM_LOW)

  endtask : body


// The following functions are necessary for the Avalon Interface (DUT)

    // read specific register
  task read_register( input  reg_t      addr_data,
                      output bit [15:0] data);
    begin
      `uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{
		    dino.command_type	== READ_COMMAND;
		    dino.addr			    == addr_data;
		    dino.delay			  == 'd1;		
		  })
    end
	data = dino.readdata;	// return register data
  endtask : read_register

//// soft reset	
	task soft_reset; 
	 begin
		`uvm_info(get_type_name(), "Executing soft_reset task", UVM_LOW)
		`uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{
				dino.command_type	== WRITE_COMMAND;
				dino.addr			    == GENERAL;
				dino.writedata		== 16'h0200;	// set reset bit
				dino.delay			  == 'd4;			// delay= 4*clk = 400ns
				})
	 end
  endtask : soft_reset


//// configure prescaler
	task configure_prescaler (
    input byte divider
  ); 

  bit [3:0] reg_high; // reg1
  bit [3:0] reg_low;  // reg0
  byte      div;

	 begin
    `uvm_info(get_type_name(), "Executing configure_prescaler task", UVM_LOW)

    if (divider < 8'd2 || divider > 8'd32) 
      `uvm_fatal(get_type_name(), "Divider of CANkari Prescaler has been set to illegal value!")
    else begin
      div = divider-2;
    end

    if(div > 15) begin
      reg_high = div-15;   
      reg_low  = 4'b1111;   
    end
    else begin
      reg_high = 4'b0000;
      reg_low  = div;
    end

		`uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
                dino.command_type	== WRITE_COMMAND;
				        dino.addr		== PRESCALER;
				        dino.writedata	== {8'h00, reg_high, reg_low}; 
								dino.delay		== 'd1;
				              })
	 end
  endtask : configure_prescaler


//// configure general
	task configure_general (
    input bit [2:0] sjw,      
    input bit [3:0] tseg1,
    input bit [3:0] tseg2
  ); 
	
	bit [2:0] tseg1_val;
	bit [2:0] tseg2_val;	

	begin

	if (tseg1 < 4'd1 || tseg1 > 4'd8) 
    `uvm_fatal(get_type_name(), "tseg1 has been set to illegal value")
  else if (tseg2 < 4'd1 || tseg2 > 4'd8)
    `uvm_fatal(get_type_name(), "tseg2 has been set to illegal value")
  else
    begin
      tseg1_val = tseg1-1;
	    tseg2_val = tseg2-1;
    end

	`uvm_info(get_type_name(), "Executing configure_general task", UVM_LOW)
	`uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
    dino.command_type	== WRITE_COMMAND;
		dino.addr		      == GENERAL;
	  dino.writedata	  == {7'b000_0000, sjw, tseg1_val, tseg2_val};
		dino.delay		    == 'd1; 
		})
	 end
  endtask : configure_general	

//// enable physical layer and set irq
	task configure_irq (
    input bit tx_enable,
    input bit irq_status,
    input bit irq_suctra,
    input bit irq_sucrec
  ); 
	 begin
		`uvm_info(get_type_name(), "Executing configure_irq task - enable physical layer", UVM_LOW)
		`uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
      dino.command_type	== WRITE_COMMAND;
			dino.addr			    == INTERRUPT;
			dino.writedata		== {tx_enable, 8'h00, irq_status, irq_suctra, irq_sucrec, 4'h0};
			dino.delay		    == 'd1; 
			})
	 end
  endtask : configure_irq

//// configure accmask
	task configure_accmask (
    input bit [28:0] mask  
  ); 
	 begin
		`uvm_info(get_type_name(), "Executing configure_accmask task", UVM_LOW) 

		`uvm_info(get_type_name(), "Setting accmask bits 28 to 13", UVM_LOW)
		`uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
      dino.command_type	== WRITE_COMMAND;
			dino.addr			    == ACCEPTIONMASK_1;
			dino.writedata	  == mask[28:13]; // accmask
			dino.delay		    == 'd1;
			})

		`uvm_info(get_type_name(), "Setting accmask bits 12 to 0", UVM_LOW)
		`uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
      dino.command_type	== WRITE_COMMAND;
			dino.addr			    == ACCEPTIONMASK_2;
			dino.writedata		== {mask[12:0], 3'b000}; // accmask 
			dino.delay		    == 'd2;   // wait 100ns 
			})
	 end
  endtask	: configure_accmask


//// send can message
	task send_can_message (
		input bit			    start_tx, remote, extended, // config bits for task
		input bit [ 3:0]  length,                     // dlc
		input bit [63:0]	payload,                    // VLT spaeter als array umsetzen?             
		input bit [28:0]	identifier
    ); 

		reg_t	tmp_addr = TRANSMISSION_DATA_1_to_2;	// 5'b01010
		int		i        = 'd0;     				// Counter variable for payload bytes   
	  //int		msb, lsb = 'd0;							// index variable for payload vector
    //bit   [3:0] length_val; 

	 	begin

		`uvm_info(get_type_name(), "Executing send_can_message task", UVM_LOW)

      if (length > 4'd8) begin
        `uvm_fatal(get_type_name(), "length has been set to illegal value")
      end

       // configure identifier
      if (extended == 1'b1) begin
        // configure_extended_id
        `uvm_info(get_type_name(), "send_can_message task: Configure extended Identifier for Data/Remote Frame", UVM_LOW)
        `uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
          dino.command_type	== WRITE_COMMAND;
				  dino.addr			    == TRANSMISSION_IDENTIFIER_1;
				  dino.writedata		== identifier[28:13];
					dino.delay		    == 'd1;
				  })
        `uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
          dino.command_type	== WRITE_COMMAND;
				  dino.addr			    == TRANSMISSION_IDENTIFIER_2;
				  dino.writedata		== {identifier [12:0], 3'b000};
					dino.delay		    == 'd1;
				  })                          
      end
      else begin
        // configure_base_id        
        `uvm_info(get_type_name(), "send_can_message task: Configure base Identifier for Data/Remote Frame", UVM_LOW)
        `uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
          dino.command_type	== WRITE_COMMAND;
				  dino.addr			    == TRANSMISSION_IDENTIFIER_1;
				  dino.writedata		== {identifier [10:0], 5'b00000};
					dino.delay		    == 'd1;
					})              
      end
	  
    // configure_payload
    if (remote != 1'b1) begin 
      `uvm_info(get_type_name(), "send_can_message task: Configure Payload for Data Frame", UVM_LOW)

      // check payload length
      if (length > 0) begin       
        // check end of payload length
        while (i < length) begin  
          // even or uneven number of bytes left    
          if (length-i > 1) begin // 2 payload bytes

            `uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
              dino.command_type	== WRITE_COMMAND;
              dino.addr			    == tmp_addr;
              dino.writedata	  == {payload[(63-(i*8)) -: 16]}; 
							dino.delay		    == 'd1;
              })
          end
          else begin  // 1 payload byte plus zero byte
            `uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
              dino.command_type	== WRITE_COMMAND;
              dino.addr			    == tmp_addr;
    					dino.writedata		== {payload[(63-(i*8)) -: 8], 8'h00}; 
							dino.delay		    == 'd1;
              })
          end		
          tmp_addr = tmp_addr.prev();	// returns previous item (addr) from enum list
          i = i+2;
	  //  msb = 63-(i*8);
        end
      end
    end				

   // length_val = length;

    // configure_tx_control
    `uvm_info(get_type_name(), "send_can_message task: Configure TX Control for Data/Remote Frame", UVM_LOW)
    `uvm_do_on_with(dino, p_sequencer.activeAvalonSeqr,{ 
      dino.command_type == WRITE_COMMAND;
			dino.addr		      == TRANSMISSION_CONTROL;
			dino.writedata    == {start_tx, 9'b0_0000_0000, remote, extended, length};  
			dino.delay		    == 'd1; 
			})
     end
  endtask : send_can_message

        

endclass
