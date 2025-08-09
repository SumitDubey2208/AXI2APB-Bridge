//
// File: top_vseq_base.svh
//
// Generated from Mentor VIP Configurator (20191218)
// Generated using Mentor VIP Library ( 2019.4_4 : 10/19/2020:11:53 )
//
class top_vseq_base extends mvc_sequence;
    `uvm_object_utils(top_vseq_base)
    // Handles for each of the target (QVIP) sequencers
    
    mvc_sequencer axi4_master_0;
    mvc_sequencer apb_slave_0;
    function new
    (
        string name = "top_vseq_base"
    );
        super.new(name);
    endfunction
    
    task body;
    endtask: body
    
endclass: top_vseq_base

