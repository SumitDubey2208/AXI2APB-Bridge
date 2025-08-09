//
// File: hdl_top.sv
//
// Generated from Mentor VIP Configurator (20191218)
// Generated using Mentor VIP Library ( 2019.4_4 : 10/19/2020:11:53 )
//
module hdl_top;
    import uvm_pkg::*;
    import top_params_pkg::*;
    wire                                                          default_clk_gen_CLK;
    wire                                                          default_reset_gen_RESET;
    logic                                                          axi2apb_test_en_i;
    wire                                                          axi4_master_0_AWVALID;
    wire [axi4_master_0_params::AXI4_ADDRESS_WIDTH-1:0]           axi4_master_0_AWADDR;
    wire [2:0]                                                    axi4_master_0_AWPROT;
    wire [3:0]                                                    axi4_master_0_AWREGION;
    wire [7:0]                                                    axi4_master_0_AWLEN;
    wire [((axi4_master_0_params::AXI4_WDATA_WIDTH==2048)?3:2):0] axi4_master_0_AWSIZE;
    wire [1:0]                                                    axi4_master_0_AWBURST;
    wire                                                          axi4_master_0_AWLOCK;
    wire [3:0]                                                    axi4_master_0_AWCACHE;
    wire [3:0]                                                    axi4_master_0_AWQOS;
    wire [axi4_master_0_params::AXI4_ID_WIDTH-1:0]                axi4_master_0_AWID;
    wire [axi4_master_0_params::AXI4_USER_WIDTH-1:0]              axi4_master_0_AWUSER;
    wire                                                          axi4_master_0_AWREADY;
    wire                                                          axi4_master_0_ARVALID;
    wire [axi4_master_0_params::AXI4_ADDRESS_WIDTH-1:0]           axi4_master_0_ARADDR;
    wire [2:0]                                                    axi4_master_0_ARPROT;
    wire [3:0]                                                    axi4_master_0_ARREGION;
    wire [7:0]                                                    axi4_master_0_ARLEN;
    wire [((axi4_master_0_params::AXI4_RDATA_WIDTH==2048)?3:2):0] axi4_master_0_ARSIZE;
    wire [1:0]                                                    axi4_master_0_ARBURST;
    wire                                                          axi4_master_0_ARLOCK;
    wire [3:0]                                                    axi4_master_0_ARCACHE;
    wire [3:0]                                                    axi4_master_0_ARQOS;
    wire [axi4_master_0_params::AXI4_ID_WIDTH-1:0]                axi4_master_0_ARID;
    wire [axi4_master_0_params::AXI4_USER_WIDTH-1:0]              axi4_master_0_ARUSER;
    wire                                                          axi4_master_0_ARREADY;
    wire                                                          axi4_master_0_RVALID;
    wire [axi4_master_0_params::AXI4_RDATA_WIDTH-1:0]             axi4_master_0_RDATA;
    wire [1:0]                                                    axi4_master_0_RRESP;
    wire                                                          axi4_master_0_RLAST;
    wire [axi4_master_0_params::AXI4_ID_WIDTH-1:0]                axi4_master_0_RID;
    wire [axi4_master_0_params::AXI4_USER_WIDTH-1:0]              axi4_master_0_RUSER;
    wire                                                          axi4_master_0_RREADY;
    wire                                                          axi4_master_0_WVALID;
    wire [axi4_master_0_params::AXI4_WDATA_WIDTH-1:0]             axi4_master_0_WDATA;
    wire [(axi4_master_0_params::AXI4_WDATA_WIDTH/8)-1:0]         axi4_master_0_WSTRB;
    wire                                                          axi4_master_0_WLAST;
    wire [axi4_master_0_params::AXI4_USER_WIDTH-1:0]              axi4_master_0_WUSER;
    wire                                                          axi4_master_0_WREADY;
    wire                                                          axi4_master_0_BVALID;
    wire [1:0]                                                    axi4_master_0_BRESP;
    wire [axi4_master_0_params::AXI4_ID_WIDTH-1:0]                axi4_master_0_BID;
    wire [axi4_master_0_params::AXI4_USER_WIDTH-1:0]              axi4_master_0_BUSER;
    wire                                                          axi4_master_0_BREADY;
    wire [apb_slave_0_params::APB3_PADDR_BIT_WIDTH-1:0]           apb_slave_0_PADDR;
    wire [apb_slave_0_params::APB3_SLAVE_COUNT-1:0]               apb_slave_0_PSEL;
    wire                                                          apb_slave_0_PENABLE;
    wire                                                          apb_slave_0_PWRITE;
    wire [apb_slave_0_params::APB3_PWDATA_BIT_WIDTH-1:0]          apb_slave_0_PWDATA;
    wire [apb_slave_0_params::APB3_PRDATA_BIT_WIDTH-1:0]          apb_slave_0_PRDATA;
    wire                                                          apb_slave_0_PREADY;
    wire                                                          apb_slave_0_PSLVERR;
    
    axi2apb 
    #(
        .AXI4_ADDRESS_WIDTH(32),
        .AXI4_RDATA_WIDTH(32),
        .AXI4_WDATA_WIDTH(32),
        .AXI4_ID_WIDTH(16),
        .AXI4_USER_WIDTH(10),
        .AXI_NUMBYTES(4),
        .BUFF_DEPTH_SLAVE(4),
        .APB_ADDR_WIDTH(32)
    )
    axi2apb
    (
        .ACLK(default_clk_gen_CLK),
        .ARESETn(default_reset_gen_RESET),
        .test_en_i(axi2apb_test_en_i),
        .AWID_i(axi4_master_0_AWID),
        .AWADDR_i(axi4_master_0_AWADDR),
        .AWLEN_i(axi4_master_0_AWLEN),
        .AWSIZE_i(axi4_master_0_AWSIZE),
        .AWBURST_i(axi4_master_0_AWBURST),
        .AWLOCK_i(axi4_master_0_AWLOCK),
        .AWCACHE_i(axi4_master_0_AWCACHE),
        .AWPROT_i(axi4_master_0_AWPROT),
        .AWREGION_i(axi4_master_0_AWREGION),
        .AWUSER_i(axi4_master_0_AWUSER),
        .AWQOS_i(axi4_master_0_AWQOS),
        .AWVALID_i(axi4_master_0_AWVALID),
        .AWREADY_o(axi4_master_0_AWREADY),
        .WDATA_i(axi4_master_0_WDATA),
        .WSTRB_i(axi4_master_0_WSTRB),
        .WLAST_i(axi4_master_0_WLAST),
        .WUSER_i(axi4_master_0_WUSER),
        .WVALID_i(axi4_master_0_WVALID),
        .WREADY_o(axi4_master_0_WREADY),
        .BID_o(axi4_master_0_BID),
        .BRESP_o(axi4_master_0_BRESP),
        .BVALID_o(axi4_master_0_BVALID),
        .BUSER_o(axi4_master_0_BUSER),
        .BREADY_i(axi4_master_0_BREADY),
        .ARID_i(axi4_master_0_ARID),
        .ARADDR_i(axi4_master_0_ARADDR),
        .ARLEN_i(axi4_master_0_ARLEN),
        .ARSIZE_i(axi4_master_0_ARSIZE),
        .ARBURST_i(axi4_master_0_ARBURST),
        .ARLOCK_i(axi4_master_0_ARLOCK),
        .ARCACHE_i(axi4_master_0_ARCACHE),
        .ARPROT_i(axi4_master_0_ARPROT),
        .ARREGION_i(axi4_master_0_ARREGION),
        .ARUSER_i(axi4_master_0_ARUSER),
        .ARQOS_i(axi4_master_0_ARQOS),
        .ARVALID_i(axi4_master_0_ARVALID),
        .ARREADY_o(axi4_master_0_ARREADY),
        .RID_o(axi4_master_0_RID),
        .RDATA_o(axi4_master_0_RDATA),
        .RRESP_o(axi4_master_0_RRESP),
        .RLAST_o(axi4_master_0_RLAST),
        .RUSER_o(axi4_master_0_RUSER),
        .RVALID_o(axi4_master_0_RVALID),
        .RREADY_i(axi4_master_0_RREADY),
        .PENABLE(apb_slave_0_PENABLE),
        .PWRITE(apb_slave_0_PWRITE),
        .PADDR(apb_slave_0_PADDR),
        .PSEL(apb_slave_0_PSEL),
        .PWDATA(apb_slave_0_PWDATA),
        .PRDATA(apb_slave_0_PRDATA),
        .PREADY(apb_slave_0_PREADY),
        .PSLVERR(apb_slave_0_PSLVERR)
    );
    
    axi4_master 
    #(
        .ADDR_WIDTH(axi4_master_0_params::AXI4_ADDRESS_WIDTH),
        .RDATA_WIDTH(axi4_master_0_params::AXI4_RDATA_WIDTH),
        .WDATA_WIDTH(axi4_master_0_params::AXI4_WDATA_WIDTH),
        .ID_WIDTH(axi4_master_0_params::AXI4_ID_WIDTH),
        .USER_WIDTH(axi4_master_0_params::AXI4_USER_WIDTH),
        .REGION_MAP_SIZE(axi4_master_0_params::AXI4_REGION_MAP_SIZE),
        .IF_NAME("axi4_master_0"),
        .PATH_NAME("uvm_test_top")
    )
    axi4_master_0
    (
        .ACLK(default_clk_gen_CLK),
        .ARESETn(default_reset_gen_RESET),
        .AWVALID(axi4_master_0_AWVALID),
        .AWADDR(axi4_master_0_AWADDR),
        .AWPROT(axi4_master_0_AWPROT),
        .AWREGION(axi4_master_0_AWREGION),
        .AWLEN(axi4_master_0_AWLEN),
        .AWSIZE(axi4_master_0_AWSIZE),
        .AWBURST(axi4_master_0_AWBURST),
        .AWLOCK(axi4_master_0_AWLOCK),
        .AWCACHE(axi4_master_0_AWCACHE),
        .AWQOS(axi4_master_0_AWQOS),
        .AWID(axi4_master_0_AWID),
        .AWUSER(axi4_master_0_AWUSER),
        .AWREADY(axi4_master_0_AWREADY),
        .ARVALID(axi4_master_0_ARVALID),
        .ARADDR(axi4_master_0_ARADDR),
        .ARPROT(axi4_master_0_ARPROT),
        .ARREGION(axi4_master_0_ARREGION),
        .ARLEN(axi4_master_0_ARLEN),
        .ARSIZE(axi4_master_0_ARSIZE),
        .ARBURST(axi4_master_0_ARBURST),
        .ARLOCK(axi4_master_0_ARLOCK),
        .ARCACHE(axi4_master_0_ARCACHE),
        .ARQOS(axi4_master_0_ARQOS),
        .ARID(axi4_master_0_ARID),
        .ARUSER(axi4_master_0_ARUSER),
        .ARREADY(axi4_master_0_ARREADY),
        .RVALID(axi4_master_0_RVALID),
        .RDATA(axi4_master_0_RDATA),
        .RRESP(axi4_master_0_RRESP),
        .RLAST(axi4_master_0_RLAST),
        .RID(axi4_master_0_RID),
        .RUSER(axi4_master_0_RUSER),
        .RREADY(axi4_master_0_RREADY),
        .WVALID(axi4_master_0_WVALID),
        .WDATA(axi4_master_0_WDATA),
        .WSTRB(axi4_master_0_WSTRB),
        .WLAST(axi4_master_0_WLAST),
        .WUSER(axi4_master_0_WUSER),
        .WREADY(axi4_master_0_WREADY),
        .BVALID(axi4_master_0_BVALID),
        .BRESP(axi4_master_0_BRESP),
        .BID(axi4_master_0_BID),
        .BUSER(axi4_master_0_BUSER),
        .BREADY(axi4_master_0_BREADY)
    );
    
    apb_slave 
    #(
        .ADDR_WIDTH(apb_slave_0_params::APB3_PADDR_BIT_WIDTH),
        .WDATA_WIDTH(apb_slave_0_params::APB3_PWDATA_BIT_WIDTH),
        .RDATA_WIDTH(apb_slave_0_params::APB3_PRDATA_BIT_WIDTH),
        .IF_NAME("apb_slave_0"),
        .PATH_NAME("uvm_test_top"),
        .NUM_SLAVES(apb_slave_0_params::APB3_SLAVE_COUNT)
    )
    apb_slave_0
    (
        .PCLK(default_clk_gen_CLK),
        .PRESETn(default_reset_gen_RESET),
        .PADDR(apb_slave_0_PADDR),
        .PSEL(apb_slave_0_PSEL),
        .PENABLE(apb_slave_0_PENABLE),
        .PWRITE(apb_slave_0_PWRITE),
        .PWDATA(apb_slave_0_PWDATA),
        .PRDATA(apb_slave_0_PRDATA),
        .PREADY(apb_slave_0_PREADY),
        .PSLVERR(apb_slave_0_PSLVERR),
        .PPROT(),
        .PSTRB()
    );
    default_clk_gen default_clk_gen
    (
        .CLK(default_clk_gen_CLK)
    );
    default_reset_gen default_reset_gen
    (
        .RESET(default_reset_gen_RESET),
        .CLK_IN(default_clk_gen_CLK)
    );

endmodule: hdl_top
