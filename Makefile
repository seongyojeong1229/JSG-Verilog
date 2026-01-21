# =============================================================================
#  Universal Verilog Master Makefile (Full Version: Sim, RTL, Synth)
# =============================================================================
#  [ Usage Summary ]
#
#  1. Simulation (Xsim GUI)
#     - Specific Module: make sim DIR=path/to/dir TOP=module_name
#     - Current Folder:  make sim TOP=module_name
#     - Auto-Discovery:  make sim (Selects first TB/Design file in folder)
#
#  2. RTL Analysis (Vivado Elaborated Design - View Schematic)
#     - Specific Module: make rtl DIR=path/to/dir TOP=module_name
#     - Current Folder:  make rtl TOP=module_name
#
#  3. Synthesis (Run Vivado Synthesis and Open GUI)
#     - Specific Module: make synth DIR=path/to/dir TOP=module_name
#     - Current Folder:  make synth TOP=module_name
#
#  4. Cleanup (Remove work directory and logs)
#     - Complete Clean:  make clean DIR=path/to/dir
#     - Current Clean:   make clean
#
#  [ Execution Examples ]
#  - From Project Root: make sim DIR=1_Basic/1_Gate/2_not_gate TOP=not_gate_s
#  - Inside Module Dir: make synth TOP=not_gate_s
# =============================================================================

# --- 1. Path Configuration ---
# If DIR is not provided, the current working directory is used.
ifeq ($(DIR),)
    TARGET_DIR := $(CURDIR)
else
    TARGET_DIR := $(abspath $(DIR))
endif

# --- 2. File Discovery (Smart Selection) ---
ifeq ($(TOP),)
    # If TOP is not specified: Auto-detect files in the directory.
    TB_FILE      := $(firstword $(wildcard $(TARGET_DIR)/*_tb.v) $(wildcard $(TARGET_DIR)/*_tb.sv))
    DESIGN_FILES := $(filter-out $(TB_FILE), $(wildcard $(TARGET_DIR)/*.v) $(wildcard $(TARGET_DIR)/*.sv))
else
    # If TOP is specified: Select files matching the module name.
    TB_FILE      := $(wildcard $(TARGET_DIR)/$(TOP)_tb.v) $(wildcard $(TARGET_DIR)/$(TOP)_tb.sv)
    DESIGN_FILES := $(wildcard $(TARGET_DIR)/$(TOP).v) $(wildcard $(TARGET_DIR)/$(TOP).sv)
endif

# Module and Tool Settings
TB_MODULE         := $(basename $(notdir $(TB_FILE)))
DESIGN_TOP_MODULE := $(basename $(notdir $(firstword $(DESIGN_FILES))))
VIVADO_PART       := xc7z020clg400-1
WORK_DIR          := $(TARGET_DIR)/work/$(TB_MODULE)
PROJ_DIR          := $(WORK_DIR)/vivado_proj

# --- 3. Targets ---
.PHONY: all sim rtl synth clean

all: sim

# --- 4. Simulation (Xilinx Vivado Simulator - Xsim) ---
sim:
	@if [ -z "$(TB_FILE)" ]; then echo "Error: No Testbench found!"; exit 1; fi
	@echo "==> Running Simulation for: $(TB_MODULE)"
	@mkdir -p $(WORK_DIR)/xsim
	@cd $(WORK_DIR)/xsim && \
	xvlog -sv $(TB_FILE) $(DESIGN_FILES) && \
	xelab --debug wave -snapshot $(TB_MODULE) work.$(TB_MODULE) && \
	echo "log_wave -recursive /" > run.tcl && \
	echo "add_wave /" >> run.tcl && \
	echo "run -all" >> run.tcl && \
	xsim $(TB_MODULE) -gui -wdb $(TB_MODULE).wdb -tclbatch run.tcl

# --- 5. RTL Analysis (Elaboration) ---
rtl:
	@if [ -z "$(DESIGN_FILES)" ]; then echo "Error: No Design files found!"; exit 1; fi
	@echo "==> Opening RTL Schematic for: $(DESIGN_TOP_MODULE)"
	@mkdir -p $(PROJ_DIR)
	@cd $(PROJ_DIR) && \
	echo "create_project -force vivado_proj . -part $(VIVADO_PART)" > run.tcl && \
	for f in $(DESIGN_FILES); do echo "add_files $$f" >> run.tcl; done && \
	echo "set_property top $(DESIGN_TOP_MODULE) [get_filesets sources_1]" >> run.tcl && \
	echo "open_elaborated_design" >> run.tcl && \
	vivado -mode gui -source run.tcl
	
# --- 6. Synthesis ---
synth:
	@if [ -z "$(DESIGN_FILES)" ]; then echo "Error: No Design files found!"; exit 1; fi
	@echo "==> Running Synthesis for: $(DESIGN_TOP_MODULE)"
	@mkdir -p $(PROJ_DIR)
	@cd $(PROJ_DIR) && \
	echo "create_project -force vivado_proj . -part $(VIVADO_PART)" > run.tcl && \
	for f in $(DESIGN_FILES); do echo "add_files $$f" >> run.tcl; done && \
	echo "set_property top $(DESIGN_TOP_MODULE) [get_filesets sources_1]" >> run.tcl && \
	echo "launch_runs synth_1 -jobs 8" >> run.tcl && \
	echo "wait_on_run synth_1" >> run.tcl && \
	echo "open_run synth_1" >> run.tcl && \
	vivado -mode gui -source run.tcl

# --- 7. Cleanup ---
clean:
	@echo "==> Cleaning Artifacts for $(TARGET_DIR)"
	@rm -rf $(TARGET_DIR)/work
	@rm -f $(TARGET_DIR)/vivado*.log $(TARGET_DIR)/vivado*.jou