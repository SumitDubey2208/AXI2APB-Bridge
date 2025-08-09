//
// File: top_example_vseq.svh
//
// Generated from Mentor VIP Configurator (20191218)
// Generated using Mentor VIP Library ( 2019.4_4 : 10/19/2020:11:53 )
//
// The purpose of this example virtual sequence is to show how the default or selected sequences for 
// each QVIP can be run. The sequences are run in series in an arbitary order. 
class top_example_vseq extends top_vseq_base;
    `uvm_object_utils(top_example_vseq)
    function new
    (
        string name = "top_example_vseq"
    );
        super.new(name);
    endfunction
    
    extern task body;
    
endclass: top_example_vseq

task top_example_vseq::body;
    axi4_incr_wr_deparam_seq axi4_master_0_seq_0 = axi4_incr_wr_deparam_seq::type_id::create("axi4_incr_wr_deparam_seq");
    axi4_incr_rd_deparam_seq axi4_master_0_seq_1 = axi4_incr_rd_deparam_seq::type_id::create("axi4_incr_rd_deparam_seq");
    
    // Sequences run in the following order
    
    begin
        axi4_master_0_seq_0.start(axi4_master_0);
        axi4_master_0_seq_1.start(axi4_master_0);
    end
endtask: body

