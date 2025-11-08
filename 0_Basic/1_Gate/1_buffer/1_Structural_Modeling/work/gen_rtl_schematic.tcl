# 1. In-Memory 프로젝트 생성
create_project -in_memory -part xc7z020clg400-1
# 2. 소스 파일 읽기 (Testbench 제외)
read_verilog [ glob ../buffer_s.v ]
# 3. RTL Elaboration 실행 (최적화 없이)
synth_design -top buffer_s -rtl -rtl_skip_mlo -name rtl_1
# 4. RTL 뷰어 열기
open_rtl_design -name rtl_1
