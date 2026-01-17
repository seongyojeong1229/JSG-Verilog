# =============================================================================
#  범용 Verilog Makefile (for Vivado Project Mode)
#
#  * 이 Makefile은 GUI의 흐름과 100% 동일하게 작동합니다.
#  * 'work/vivado_proj' 디렉토리에 실제 Vivado 프로젝트를 생성합니다.
#
#  사용법:
#    - make sim      : (Xsim) 시뮬레이션을 실행하고, 파형 GUI를 엽니다.
#    - make rtl      : (Vivado) 'RTL Schematic' (Elaborated) GUI를 엽니다.
#    - make synth    : (Vivado) Synthesis를 실행하고 'Synthesized' GUI를 엽니다.
#    - make clean    : 모든 임시 파일과 work 디렉토리를 삭제합니다.
# =============================================================================

# --- 1. 자동 변수 설정 ---

# 작업 디렉토리 이름
WORK_DIR = work
PROJ_NAME = vivado_proj
PROJ_DIR = $(WORK_DIR)/$(PROJ_NAME)

# 테스트벤치 파일(_tb.v 또는 testbench.v)을 자동으로 찾습니다.
# [FIX 1] Line 26: '&(wildcard ...)' -> '$(wildcard ...)' 오타 수정
TB_FILE := $(firstword $(wildcard *_tb.v) $(wildcard testbench.v) $(wildcard *_tb.sv) $(wildcard testbench.sv))

# 테스트벤치 파일을 제외한 모든 .v 파일을 설계(Design) 파일로 자동 인식합니다.
DESIGN_FILES := $(filter-out $(TB_FILE), $(wildcard *.v) $(wildcard *.sv))

# 테스트벤치 파일 이름에서 '.v' 또는 '.sv'를 제거하여 최상위 모듈 이름을 추론합니다.
# [FIX 2] Line 32: .v와 .sv 확장자를 모두 제거하도록 수정
TB_MODULE := $(patsubst %.sv,%,$(patsubst %.v,%,$(TB_FILE)))

# 디자인 파일 중 첫 번째 파일을 Top 모듈로 가정합니다.
# [FIX 3] Line 35: .v와 .sv 확장자를 모두 제거하도록 수정
DESIGN_TOP_MODULE := $(patsubst %.sv,%,$(patsubst %.v,%,$(firstword $(DESIGN_FILES))))

# Vivado 파형 데이터베이스 파일 이름
WAVE_FILE = $(TB_MODULE).wdb

# 생성될 TCL 스크립트 파일 이름
TCL_SIM = run_sim.tcl
TCL_PROJ = create_project.tcl
TCL_RTL = open_rtl.tcl
TCL_SYNTH = run_synth_and_open.tcl

# Vivado 프로젝트 파트 (필요시 수정)
VIVADO_PART = xc7z020clg400-1

# --- 2. 명령어(Target) 정의 ---
.PHONY: all sim compile elaborate run_gui rtl synth clean create_sim_tcl create_project_tcl create_rtl_tcl create_synth_tcl

# 'make'만 입력하면 'make sim'을 실행
all: sim

# --- 3. 시뮬레이션 (make sim - Non-Project) ---
# 시뮬레이션은 빠르므로 굳이 프로젝트를 만들지 않습니다. (기존 방식 유지)
compile:
	@mkdir -p $(WORK_DIR)/xsim # 시뮬레이션은 별도 폴더에서
	@echo "==> [1/3] Compiling (xvlog)..."
	@cd $(WORK_DIR)/xsim && xvlog --log xvlog.log -sv ../../$(TB_FILE) ../../$(DESIGN_FILES)

elaborate: compile
	@echo "==> [2/3] Elaborating (xelab)..."
	@cd $(WORK_DIR)/xsim && xelab --log xelab.log --debug wave -snapshot $(TB_MODULE) work.$(TB_MODULE)

create_sim_tcl:
	@mkdir -p $(WORK_DIR)/xsim
	@echo "add_wave /" > $(WORK_DIR)/xsim/$(TCL_SIM)
	@echo "run 10000ns" >> $(WORK_DIR)/xsim/$(TCL_SIM)

sim: elaborate create_sim_tcl
	@echo "==> [3/3] Running Simulation GUI (xsim)..."
	@echo "    (파형 뷰어가 열립니다. 닫으면 make가 종료됩니다.)"
	@# [FIX 4] Line 78: '-wdb $(WAVE_FILE)' 옵션 제거.
	@# xelab의 '--debug wave' 옵션으로 인해 .wdb 파일은 어차피 생성되며,
	@# -tclbatch 스크립트가 실행된 후 GUI가 자동으로 해당 파형을 엽니다.
	@cd $(WORK_DIR)/xsim && xsim $(TB_MODULE) -gui -tclbatch $(TCL_SIM)

# --- 4. 프로젝트 생성 (Helper) ---
# 'make rtl'과 'make synth'의 공통 작업: Vivado 프로젝트 생성
create_project_tcl:
	@mkdir -p $(PROJ_DIR)
	@echo "# 1. 프로젝트 생성" > $(PROJ_DIR)/$(TCL_PROJ)
	@echo "create_project -force $(PROJ_NAME) . -part $(VIVADO_PART)" >> $(PROJ_DIR)/$(TCL_PROJ)
	@echo "# 2. 소스 파일 추가 (Testbench 제외)" >> $(PROJ_DIR)/$(TCL_PROJ)
	@# 'glob'이 현재 디렉토리 기준이므로, 상위 폴더의 파일을 참조하도록 경로 수정
	@for file in $(DESIGN_FILES); do \
		echo "add_files ../../$$file" >> $(PROJ_DIR)/$(TCL_PROJ); \
	done
	@echo "# 3. 최상위 모듈 설정" >> $(PROJ_DIR)/$(TCL_PROJ)
	@echo "set_property top $(DESIGN_TOP_MODULE) [get_filesets sources_1]" >> $(PROJ_DIR)/$(TCL_PROJ)
	@echo "update_compile_order -fileset sources_1" >> $(PROJ_DIR)/$(TCL_PROJ)
	@echo "exit" >> $(PROJ_DIR)/$(TCL_PROJ)
	@# --- 프로젝트 생성 실행 ---
	@echo "==> [1/2] Vivado 프로젝트 생성 중..."
	@cd $(PROJ_DIR) && vivado -mode batch -source $(TCL_PROJ)

# --- 5. RTL 회로도 보기 (make rtl - Project Mode) ---
create_rtl_tcl:
	@mkdir -p $(PROJ_DIR)
	@echo "# 1. 프로젝트 열기" > $(PROJ_DIR)/$(TCL_RTL)
	@echo "open_project $(PROJ_NAME).xpr" >> $(PROJ_DIR)/$(TCL_RTL)
	@echo "# 2. 'RTL ANALYSIS -> Open Elaborated Design' 실행" >> $(PROJ_DIR)/$(TCL_RTL)
	@echo "open_elaborated_design" >> $(PROJ_DIR)/$(TCL_RTL)

rtl: create_project_tcl create_rtl_tcl
	@echo "==> [2/2] Launching Vivado GUI for RTL Schematic..."
	@cd $(PROJ_DIR) && vivado -source $(TCL_RTL)

# --- 6. Synthesis 회로도 보기 (make synth - Project Mode) ---
create_synth_tcl:
	@mkdir -p $(PROJ_DIR)
	@echo "# 1. 프로젝트 열기" > $(PROJ_DIR)/$(TCL_SYNTH)
	@echo "open_project $(PROJ_NAME).xpr" >> $(PROJ_DIR)/$(TCL_SYNTH)
	@echo "# 2. 'SYNTHESIS -> Run Synthesis' 실행" >> $(PROJ_DIR)/$(TCL_SYNTH)
	@echo "launch_runs synth_1 -jobs 7" >> $(PROJ_DIR)/$(TCL_SYNTH)
	@echo "wait_on_run synth_1" >> $(PROJ_DIR)/$(TCL_SYNTH)
	@echo "# 3. 'SYNTHESIS -> Open Synthesized Design' 실행" >> $(PROJ_DIR)/$(TCL_SYNTH)
	@echo "open_run synth_1" >> $(PROJ_DIR)/$(TCL_SYNTH)

synth: create_project_tcl create_synth_tcl
	@echo "==> [2/2] Launching Vivado GUI for Synthesis..."
	@echo "    (합성이 진행되며, 완료되면 GUI가 열립니다.)"
	@cd $(PROJ_DIR) && vivado -source $(TCL_SYNTH)

# --- 7. 정리 (make clean) ---
clean:
	@echo "==> Cleaning up work directory and log files..."
	@rm -rf $(WORK_DIR)
	@rm -f vivado*.log vivado*.jou
	@rm -f xsim*.log xsim*.dir
