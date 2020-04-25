
UVM_DEPS += my_env.svh
UVM_DEPS += my_first_test.svh

UVM_PKG := my_pkg.sv

DUT := dut.sv
TOP := top.sv

TOP_NAME := top
TOP_SIM := top_sim

XVLOG := xvlog -L uvm -sv 
XELAB := xelab $(TOP_NAME) -L uvm -s $(TOP_SIM) -debug typical

ALL_DEPS := $(UVM_DEPS)
ALL_DEPS += $(UVM_PKG)
ALL_DEPS += $(DUT)
ALL_DEPS += $(TOP)

CLEAN_TARGETS := *.log
CLEAN_TARGETS += *.pb
CLEAN_TARGETS += *.dir
CLEAN_TARGETS += *.jou
CLEAN_TARGETS += *.wdb

.PHONY: all clean

all: $(ALL_DEPS)
	$(XVLOG) $(UVM_PKG)
	$(XVLOG) $(DUT)
	$(XVLOG) $(TOP)
	$(XELAB)
	xsim $(TOP_SIM) -R

clean:
	rm -rf $(CLEAN_TARGETS)

