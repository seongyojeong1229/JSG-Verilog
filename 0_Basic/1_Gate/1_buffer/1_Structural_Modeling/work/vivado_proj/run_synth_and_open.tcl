# 1. 프로젝트 열기
open_project vivado_proj.xpr
# 2. 'SYNTHESIS -> Run Synthesis' 실행
launch_runs synth_1 -jobs 7
wait_on_run synth_1
# 3. 'SYNTHESIS -> Open Synthesized Design' 실행
open_run synth_1
