//
// File: top_env_config.svh
//
// Generated from Mentor VIP Configurator (20191218)
// Generated using Mentor VIP Library ( 2019.4_4 : 10/19/2020:11:53 )
//
class top_env_config extends uvm_object;
    `uvm_object_utils(top_env_config)
    // Handles for vip config for each of the QVIP instances
    
    axi4_master_0_cfg_t axi4_master_0_cfg;
    apb_slave_0_cfg_t apb_slave_0_cfg;
    // Handles for address maps
    
    address_map sd_mapping;
    
    function new
    (
        string name = "top_env_config"
    );
        super.new(name);
    endfunction
    
    extern function void initialize;
    
endclass: top_env_config

function void top_env_config::initialize;
    begin
        addr_map_entry_s addr_map_entries[] = new [1];
        addr_map_entries = '{1{'{MAP_NORMAL,"RANGE_1",0,MAP_NS,4'h0,64'h0,64'h1000,MEM_NORMAL,MAP_NORM_SEC_DATA}}};
        sd_mapping = address_map::type_id::create("sd_mapping_addr_map");
        sd_mapping.addr_mask = 64'hFFF;
        sd_mapping.set( addr_map_entries );
    end
endfunction: initialize

