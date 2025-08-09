// Version '20191218'
// Library '2019.4_4:10/19/2020:11:53'
"Configurator" import /home/intern2/axi_2apb_bridge/axi2apb_bridge.sv
"Configurator" create VIP_instance 2019.4_4/amba/axi4 /top/axi4_master_0 axi4_master  
"Configurator" change hash_param ID_WIDTH 16
"Configurator" change hash_param USER_WIDTH 10
"Configurator" connect instance /top/axi4_master_0 /top/axi2apb 0 0 *_i
"Configurator" connect instance /top/axi4_master_0 /top/axi2apb 0 1 *_o
"Configurator" change instance /top/default_clk_gen
"Configurator" change instance /top/default_clk_gen
"Configurator" change instance /top/default_clk_gen
"Configurator" create VIP_instance 2019.4_4/amba/apb3 /top/apb_slave_0 apb_slave  
"Configurator" change position right /top/apb_slave_0
"Configurator" connect instance /top/apb_slave_0 /top/axi2apb 0 0 *
"Configurator" change instance /top/default_clk_gen
"Configurator" change instance /top/default_clk_gen
"Configurator" change port connection /top/axi2apb/ACLK /top/default_clk_gen_CLK
"Configurator" change instance /top/axi2apb
"Configurator" change instance /top/default_reset_gen
"Configurator" change instance /top/default_reset_gen
"Configurator" change instance /top/default_reset_gen
"Configurator" change port connection /top/axi2apb/ARESETn /top/default_reset_gen_RESET
"Configurator" change instance /top/axi2apb
"Configurator" change instance /top/axi4_master_0
"Configurator" change variable agent.en_logger.txn_log 1
"Configurator" change variable agent.en_logger.beat_log 1
"Configurator" address_map create sd_mapping
"Configurator" sequence add axi4_master_0 axi4_incr_wr_deparam_seq
"Configurator" sequence add axi4_master_0 axi4_incr_rd_deparam_seq 0
"Configurator" change instance /top/apb_slave_0
"Configurator" change instance /top/axi4_master_0
"Configurator" address_map sd_mapping add MAP_NORMAL,"RANGE_1",0,MAP_NS,4'h0,64'h0,64'h1000,MEM_NORMAL,MAP_NORM_SEC_DATA
"Configurator" change variable vip_config.addr_map sd_mapping
"Configurator" change instance /top/apb_slave_0
"Configurator" change variable agent.en_logger.txn_log 1
"Configurator" change instance /top/axi4_master_0
"Configurator" change instance /top/apb_slave_0
// "Configurator" generate
// "Configurator" generate
// Wed Jul 9 2025 11:56:04
