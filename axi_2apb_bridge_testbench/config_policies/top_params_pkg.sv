//
// File: top_params_pkg.sv
//
// Generated from Mentor VIP Configurator (20191218)
// Generated using Mentor VIP Library ( 2019.4_4 : 10/19/2020:11:53 )
//
package top_params_pkg;
    import addr_map_pkg::*;
    import rw_delay_db_pkg::*;
    //
    // Import the necessary QVIP packages:
    //
    import mgc_axi4_v1_0_pkg::*;
    import mgc_axi4_seq_pkg::*;
    import mgc_apb3_v1_0_pkg::*;
    class axi2apb_params;
        localparam int AXI4_ADDRESS_WIDTH = 32;
        localparam int AXI4_RDATA_WIDTH   = 32;
        localparam int AXI4_WDATA_WIDTH   = 32;
        localparam int AXI4_ID_WIDTH      = 16;
        localparam int AXI4_USER_WIDTH    = 10;
        localparam int AXI_NUMBYTES       = AXI4_WDATA_WIDTH/8;
        localparam int BUFF_DEPTH_SLAVE   = 4;
        localparam int APB_ADDR_WIDTH     = 32;
    endclass: axi2apb_params
    
    class axi4_master_0_params;
        localparam int AXI4_ADDRESS_WIDTH   = 32;
        localparam int AXI4_RDATA_WIDTH     = 32;
        localparam int AXI4_WDATA_WIDTH     = 32;
        localparam int AXI4_ID_WIDTH        = 16;
        localparam int AXI4_USER_WIDTH      = 10;
        localparam int AXI4_REGION_MAP_SIZE = 16;
    endclass: axi4_master_0_params
    
    typedef axi4_vip_config #(axi4_master_0_params::AXI4_ADDRESS_WIDTH,axi4_master_0_params::AXI4_RDATA_WIDTH,axi4_master_0_params::AXI4_WDATA_WIDTH,axi4_master_0_params::AXI4_ID_WIDTH,axi4_master_0_params::AXI4_USER_WIDTH,axi4_master_0_params::AXI4_REGION_MAP_SIZE) axi4_master_0_cfg_t;
    
    typedef axi4_agent #(axi4_master_0_params::AXI4_ADDRESS_WIDTH,axi4_master_0_params::AXI4_RDATA_WIDTH,axi4_master_0_params::AXI4_WDATA_WIDTH,axi4_master_0_params::AXI4_ID_WIDTH,axi4_master_0_params::AXI4_USER_WIDTH,axi4_master_0_params::AXI4_REGION_MAP_SIZE) axi4_master_0_agent_t;
    
    typedef virtual mgc_axi4 #(axi4_master_0_params::AXI4_ADDRESS_WIDTH,axi4_master_0_params::AXI4_RDATA_WIDTH,axi4_master_0_params::AXI4_WDATA_WIDTH,axi4_master_0_params::AXI4_ID_WIDTH,axi4_master_0_params::AXI4_USER_WIDTH,axi4_master_0_params::AXI4_REGION_MAP_SIZE) axi4_master_0_bfm_t;
    
    class apb_slave_0_params;
        localparam int APB3_SLAVE_COUNT      = 1;
        localparam int APB3_PADDR_BIT_WIDTH  = 32;
        localparam int APB3_PWDATA_BIT_WIDTH = 32;
        localparam int APB3_PRDATA_BIT_WIDTH = 32;
    endclass: apb_slave_0_params
    
    typedef apb3_vip_config #(apb_slave_0_params::APB3_SLAVE_COUNT,apb_slave_0_params::APB3_PADDR_BIT_WIDTH,apb_slave_0_params::APB3_PWDATA_BIT_WIDTH,apb_slave_0_params::APB3_PRDATA_BIT_WIDTH) apb_slave_0_cfg_t;
    
    typedef apb_agent #(apb_slave_0_params::APB3_SLAVE_COUNT,apb_slave_0_params::APB3_PADDR_BIT_WIDTH,apb_slave_0_params::APB3_PWDATA_BIT_WIDTH,apb_slave_0_params::APB3_PRDATA_BIT_WIDTH) apb_slave_0_agent_t;
    
    typedef virtual mgc_apb3 #(apb_slave_0_params::APB3_SLAVE_COUNT,apb_slave_0_params::APB3_PADDR_BIT_WIDTH,apb_slave_0_params::APB3_PWDATA_BIT_WIDTH,apb_slave_0_params::APB3_PRDATA_BIT_WIDTH) apb_slave_0_bfm_t;
    
    //
    // `includes for the config policy classes:
    //
    `include "axi4_master_0_config_policy.svh"
    `include "apb_slave_0_config_policy.svh"
endpackage: top_params_pkg
