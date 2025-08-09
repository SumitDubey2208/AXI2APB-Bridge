//
// File: apb_slave_0_config_policy.sv
//
// Generated from Mentor VIP Configurator (20191218)
// Generated using Mentor VIP Library ( 2019.4_4 : 10/19/2020:11:53 )
//
class apb_slave_0_config_policy;
    static function void configure
    (
        input apb_slave_0_cfg_t cfg,
        input address_map addrm
    );
        //
        // Agent setup configurations:
        //
        cfg.agent_cfg.is_active = 1;
        cfg.agent_cfg.agent_type = mgc_apb3_v1_0_pkg::APB_SLAVE;
        // APB interface type
        cfg.agent_cfg.if_type = mgc_apb3_v1_0_pkg::APB3;
        // Slave index
        cfg.agent_cfg.slv_index = 0;
        // Use external clock
        cfg.agent_cfg.ext_clock = 1;
        // Use external reset
        cfg.agent_cfg.ext_reset = 1;
        // Enable functional coverage
        cfg.agent_cfg.en_cvg = 1'b0;
        // Enable scoreboard
        cfg.agent_cfg.en_sb = 1;
        // Enable transaction listener
        cfg.agent_cfg.en_txn_ltnr = 1'b0;
        // Enable slave sequence
        cfg.agent_cfg.en_slv_seq = 1;
        // Enable transaction logger
        cfg.agent_cfg.en_logger.txn_log = 1;
        // Transaction logger file name
        cfg.agent_cfg.en_logger.txn_log_name = "txn.log";
        cfg.agent_cfg.en_logger.txn_column.tr = 1;
        cfg.agent_cfg.en_logger.txn_column.slv_id = 1;
        cfg.agent_cfg.en_logger.txn_column.addr = 1;
        cfg.agent_cfg.en_logger.txn_column.data = 1;
        cfg.agent_cfg.en_logger.txn_column.strb = 1;
        cfg.agent_cfg.en_logger.txn_column.prot = 1;
        cfg.agent_cfg.en_logger.txn_column.slverr = 1;
        cfg.agent_cfg.en_logger.txn_column.start_time = 1;
        cfg.agent_cfg.en_logger.txn_column.end_time = 1;
        // Transaction logger data mask
        cfg.agent_cfg.en_logger.txn_data_mask = 1;
        // Enable clock period change logging
        cfg.agent_cfg.en_logger.clk_mon = 0;
        // Enable generic payload adapter
        cfg.agent_cfg.en_rw_adapter = 1'b0;
        cfg.agent_cfg.en_debug.slave_seq = 1'b0;
        cfg.agent_cfg.en_debug.vip_config = 1'b0;
        //
        // VIP Config setup configurations:
        //
        if ( addrm != null )
        begin
            cfg.addr_map = addrm;
        end
        //
        // VIP Config setup configurations at default value:
        //    cfg.max_slave_wait_count = 10;
        //    cfg.default_mem_data = 5;
        //    cfg.slave_err_not_supported = 1'b0;
        //    cfg.slverr_rate = -1;
        //
        
        //
        // BFM setup configurations at default value:
        //    cfg.m_bfm.config_enable_all_assertions = 2'h3;
        //    cfg.m_bfm.config_enable_assertion = 35'h7FFFFFFFF;
        //    cfg.m_bfm.config_en_recom_check = 1'b0;
        //    cfg.m_bfm.config_default_pready = 1'b0;
        //    cfg.m_bfm.config_default_pslverr = 1'b0;
        //    cfg.m_bfm.config_default_prdata = 32'h00000000;
        //    cfg.m_bfm.config_response_max_timeout = 500;
        //
        
    endfunction: configure
    
endclass: apb_slave_0_config_policy

