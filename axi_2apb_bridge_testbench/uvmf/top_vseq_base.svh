//
// File: top_vseq_base.svh
//
// Generated from Mentor VIP Configurator (20191218)
// Generated using Mentor VIP Library ( 2019.4_4 : 10/19/2020:11:53 )
//
class top_vseq_base extends mvc_sequence;
    `uvm_object_utils(top_vseq_base)
    // Handles for each of the target (QVIP) sequencers
    
    mvc_sequencer axi4_master_0_sqr;
    mvc_sequencer apb_slave_0_sqr;
    function new
    (
        string name = "top_vseq_base"
    );
        super.new(name);
        if ( !uvm_config_db #(mvc_sequencer)::get(null,UVMF_SEQUENCERS,"axi4_master_0", axi4_master_0_sqr) )
        begin
            `uvm_error("Config Error" , "uvm_config_db #( mvc_sequencer )::get cannot find resource 'axi4_master_0'" )
        end
        if ( !uvm_config_db #(mvc_sequencer)::get(null,UVMF_SEQUENCERS,"apb_slave_0", apb_slave_0_sqr) )
        begin
            `uvm_error("Config Error" , "uvm_config_db #( mvc_sequencer )::get cannot find resource 'apb_slave_0'" )
        end
    endfunction
    
    extern task body;
    
endclass: top_vseq_base

task top_vseq_base::body;
endtask: body

