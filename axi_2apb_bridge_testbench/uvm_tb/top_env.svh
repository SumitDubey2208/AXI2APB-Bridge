//
// File: top_env.svh
//
// Generated from Mentor VIP Configurator (20191218)
// Generated using Mentor VIP Library ( 2019.4_4 : 10/19/2020:11:53 )
//
`include "uvm_macros.svh"
class top_env extends uvm_component;
    `uvm_component_utils(top_env)
    top_env_config cfg;
    // Agent handles
    
    axi4_master_0_agent_t axi4_master_0;
    apb_slave_0_agent_t apb_slave_0;
    function new
    (
        string name = "top_env",
        uvm_component parent = null
    );
        super.new(name, parent);
    endfunction
    
    extern function void build_phase
    (
        uvm_phase phase
    );
    
endclass: top_env

function void top_env::build_phase
(
    uvm_phase phase
);
    if ( cfg == null )
    begin
        if ( !uvm_config_db #(top_env_config)::get(this, "", "env_config", cfg) )
        begin
            `uvm_error("build_phase", "Unable to find the env config object in the uvm_config_db")
        end
    end
    axi4_master_0 = axi4_master_0_agent_t::type_id::create("axi4_master_0", this );
    axi4_master_0.set_mvc_config(cfg.axi4_master_0_cfg);
    
    apb_slave_0 = apb_slave_0_agent_t::type_id::create("apb_slave_0", this );
    apb_slave_0.set_mvc_config(cfg.apb_slave_0_cfg);
    
endfunction: build_phase

