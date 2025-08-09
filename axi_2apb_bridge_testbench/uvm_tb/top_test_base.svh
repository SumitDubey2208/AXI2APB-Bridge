//
// File: top_test_base.svh
//
// Generated from Mentor VIP Configurator (20191218)
// Generated using Mentor VIP Library ( 2019.4_4 : 10/19/2020:11:53 )
//
class top_test_base extends uvm_test;
    `uvm_component_utils(top_test_base)
    // QVIP Configuration objects = As defined in the top_params_pkg
    
    axi4_master_0_cfg_t axi4_master_0_cfg;
    apb_slave_0_cfg_t apb_slave_0_cfg;
    // Environment configuration object
    top_env_config env_cfg;
    
    // Environment component
    top_env env;
    function new
    (
        string name = "top_test_base_test_base",
        uvm_component parent = null
    );
        super.new(name, parent);
    endfunction
    
    extern function void init_vseq
    (
        top_vseq_base vseq
    );
    
    extern function void build_phase
    (
        uvm_phase phase
    );
    
    extern task run_phase
    (
        uvm_phase phase
    );
    
endclass: top_test_base

function void top_test_base::init_vseq
(
    top_vseq_base vseq
);
    vseq.axi4_master_0 = env.axi4_master_0.m_sequencer;
    vseq.apb_slave_0 = env.apb_slave_0.m_sequencer;
endfunction: init_vseq

function void top_test_base::build_phase
(
    uvm_phase phase
);
    env_cfg = top_env_config::type_id::create("env_cfg");
    env_cfg.initialize();
    
    axi4_master_0_cfg = axi4_master_0_cfg_t::type_id::create("axi4_master_0_cfg" );
    if ( !uvm_config_db #(axi4_master_0_bfm_t)::get(this, "", "axi4_master_0", axi4_master_0_cfg.m_bfm) )
    begin
        `uvm_error("build_phase", "Unable to get virtual interface axi4_master_0 for axi4_master_0_cfg from uvm_config_db")
    end
    axi4_master_0_config_policy::configure(axi4_master_0_cfg, env_cfg.sd_mapping);
    env_cfg.axi4_master_0_cfg = axi4_master_0_cfg;
    apb_slave_0_cfg = apb_slave_0_cfg_t::type_id::create("apb_slave_0_cfg" );
    if ( !uvm_config_db #(apb_slave_0_bfm_t)::get(this, "", "apb_slave_0", apb_slave_0_cfg.m_bfm) )
    begin
        `uvm_error("build_phase", "Unable to get virtual interface apb_slave_0 for apb_slave_0_cfg from uvm_config_db")
    end
    apb_slave_0_config_policy::configure(apb_slave_0_cfg, null);
    env_cfg.apb_slave_0_cfg = apb_slave_0_cfg;
    
    // Once the agent configuration objects are done build the env
    env = top_env::type_id::create("env", this);
    env.cfg = env_cfg;
endfunction: build_phase

task top_test_base::run_phase
(
    uvm_phase phase
);
    string sequence_name;
    top_vseq_base vseq;
    uvm_object obj;
    uvm_cmdline_processor clp;
    clp = uvm_cmdline_processor::get_inst();
    if ( clp.get_arg_value("+SEQ=", sequence_name) == 0 )
    begin
        `uvm_fatal(get_type_name(), "You must specify a virtual sequence to run using the +SEQ plusarg")
    end
    obj = factory.create_object_by_name(sequence_name);
    if ( obj == null )
    begin
        factory.print();
        `uvm_fatal(get_type_name(), {"Virtual sequence '",sequence_name,"' not found in factory"})
    end
    
    if ( !$cast(vseq, obj) )
    begin
        `uvm_fatal(get_type_name(), {"Virtual sequence '",sequence_name,"' is not derived from top_vseq_base"})
    end
    
    //The sequence is OK to run
    `uvm_info(get_type_name(), {"Running virtual sequence '",sequence_name,"'"}, UVM_LOW)
    
    phase.raise_objection(this);
    init_vseq(vseq);
    vseq.start(null);
    phase.drop_objection(this);
endtask: run_phase

