####################
# Common Setup.

INCDIRS = +incdir+${QUESTA_MVC_HOME}/questa_mvc_src/sv \
          +incdir+${UVMF_HOME}/uvmf_base_pkg \
          +incdir+../config_policies

HVL_SV_SOURCE = hvl_top.sv
HDL_SV_SOURCE = hdl_top.sv

UVM_OPTIONS = +UVM_TESTNAME=top_test_base +SEQ=top_example_vseq

export TOP_DIR_NAME ?= $(shell pwd)

export TOP_DUT_DIR_NAME ?= $(shell pwd)

####################
# Questa support.

all: work sv opt sim

sv: hvl_sv hdl_sv

work:
	vlib work

hvl_sv:
	vlog -f top_filelist.f $(INCDIRS) $(HVL_SV_SOURCE)

hdl_sv:
	vlog -f top_filelist.f $(INCDIRS) $(HDL_SV_SOURCE)

opt:
	vopt hdl_top hvl_top -o top_opt

sim:
	vsim -mvchome ${QUESTA_MVC_HOME} top_opt $(UVM_OPTIONS) +nowarnTSCALE -t 1ns -c -do "run -all; quit"

gui:
	vsim -mvchome ${QUESTA_MVC_HOME} top_opt $(UVM_OPTIONS) +nowarnTSCALE -t 1ns

####################
# Cleanup.

clean:
	rm -rf work transcript vsim.wlf

.PHONY: all sv hvl_sv hdl_sv opt sim gui ius32 ius64 vcs32 vcs64
