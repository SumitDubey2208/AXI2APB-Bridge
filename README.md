# AXI2APB Bridge

This project implements an AXI4 to APB bridge. It allows an AXI4 master to communicate with an APB slave.

## Project Structure

The project is structured as follows:

-   `axi_2apb_bridge/`: Contains the RTL implementation of the AXI2APB bridge.
    -   [axi_2apb_bridge/axi2apb_bridge.sv](axi_2apb_bridge/axi2apb_bridge.sv): Top-level module for the AXI4 to APB bridge.
    -   [axi_2apb_bridge/axi_ar_buffer.sv](axi_2apb_bridge/axi_ar_buffer.sv): AXI read address buffer.
    -   [axi_2apb_bridge/axi_aw_buffer.sv](axi_2apb_bridge/axi_aw_buffer.sv): AXI write address buffer.
    -   [axi_2apb_bridge/axi_b_buffer.sv](axi_2apb_bridge/axi_b_buffer.sv): AXI write response buffer.
    -   [axi_2apb_bridge/axi_r_buffer.sv](axi_2apb_bridge/axi_r_buffer.sv): AXI read data buffer.
    -   [axi_2apb_bridge/axi_w_buffer.sv](axi_2apb_bridge/axi_w_buffer.sv): AXI write data buffer.
    -   [axi_2apb_bridge/axi_slice.sv](axi_2apb_bridge/axi_slice.sv): AXI slice module.
    -   [axi_2apb_bridge/axi_slice_wrap.sv](axi_2apb_bridge/axi_slice_wrap.sv): AXI slice wrapper module.
    -   [axi_2apb_bridge/axi_single_slice.sv](axi_2apb_bridge/axi_single_slice.sv): AXI single slice module.
    -   [axi_2apb_bridge/assertions.svh](axi_2apb_bridge/assertions.svh): Assertions for the AXI2APB bridge.
    -   [axi_2apb_bridge/fifo_v1.sv](axi_2apb_bridge/fifo_v1.sv): FIFO version 1.
    -   [axi_2apb_bridge/fifo_v2.sv](axi_2apb_bridge/fifo_v2.sv): FIFO version 2.
    -   [axi_2apb_bridge/fifo_v3.sv](axi_2apb_bridge/fifo_v3.sv): FIFO version 3.
-   `axi_2apb_bridge_testbench/`: Contains the testbench environment for verifying the AXI2APB bridge.
    -   `config_policies/`: Contains configuration policies for the testbench.
        -   [axi_2apb_bridge_testbench/config_policies/apb_slave_0_config_policy.svh](axi_2apb_bridge_testbench/config_policies/apb_slave_0_config_policy.svh): APB slave configuration policy.
        -   [axi_2apb_bridge_testbench/config_policies/axi4_master_0_config_policy.svh](axi_2apb_bridge_testbench/config_policies/axi4_master_0_config_policy.svh): AXI4 master configuration policy.
        -   [axi_2apb_bridge_testbench/config_policies/top_params_pkg.sv](axi_2apb_bridge_testbench/config_policies/top_params_pkg.sv): Top-level parameters package.
    -   `uvm_tb/`: Contains the UVM testbench.
        -   [axi_2apb_bridge_testbench/uvm_tb/top_pkg.sv](axi_2apb_bridge_testbench/uvm_tb/top_pkg.sv): Top-level package.
        -   [axi_2apb_bridge_testbench/uvm_tb/top_env.svh](axi_2apb_bridge_testbench/uvm_tb/top_env.svh): Top-level environment.
        -   [axi_2apb_bridge_testbench/uvm_tb/top_test_base.svh](axi_2apb_bridge_testbench/uvm_tb/top_test_base.svh): Top-level test base class.
        -   [axi_2apb_bridge_testbench/uvm_tb/top_example_vseq.svh](axi_2apb_bridge_testbench/uvm_tb/top_example_vseq.svh): Top-level example virtual sequence.
        -   [axi_2apb_bridge_testbench/uvm_tb/hdl_top.sv](axi_2apb_bridge_testbench/uvm_tb/hdl_top.sv): HDL top module.
        -   [axi_2apb_bridge_testbench/uvm_tb/hvl_top.sv](axi_2apb_bridge_testbench/uvm_tb/hvl_top.sv): HVL top module.
        -   [axi_2apb_bridge_testbench/uvm_tb/default_clk_gen.sv](axi_2apb_bridge_testbench/uvm_tb/default_clk_gen.sv): Default clock generator.
        -   [axi_2apb_bridge_testbench/uvm_tb/default_reset_gen.sv](axi_2apb_bridge_testbench/uvm_tb/default_reset_gen.sv): Default reset generator.
        -   [axi_2apb_bridge_testbench/uvm_tb/Makefile](axi_2apb_bridge_testbench/uvm_tb/Makefile): Makefile for simulation.
    -   `uvmf/`: Contains the UVMF testbench (likely a mirrored or alternative testbench setup).

## Key Files

-   [axi_2apb_bridge/axi2apb_bridge.sv](axi_2apb_bridge/axi2apb_bridge.sv): The core AXI2APB bridge RTL implementation.
-   [axi_2apb_bridge_testbench/uvm_tb/top_test_base.svh](axi_2apb_bridge_testbench/uvm_tb/top_test_base.svh):  Defines the base test class for the UVM environment.
-   [axi_2apb_bridge_testbench/uvm_tb/top_example_vseq.svh](axi_2apb_bridge_testbench/uvm_tb/top_example_vseq.svh): An example virtual sequence to stimulate the AXI2APB bridge.

## Simulation

The project includes Makefiles for running simulations with QuestaSim and VCS.

### QuestaSim

To run a simulation with QuestaSim, navigate to the `axi_2apb_bridge_testbench/uvm_tb/` directory and run:

```bash
make all