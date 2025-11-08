# 1. In-Memory 프로젝트 생성
create_project -in_memory -part xc7z020clg400-1
# 2. 소스 파일 읽기 (Testbench 제외)
read_verilog [ glob ../buffer_s.v ]
# 3. Full Synthesis 실행 (최적화 포함)
synth_design -top buffer_s
# 4. Synthesized 뷰어 열기
open_synth_design
