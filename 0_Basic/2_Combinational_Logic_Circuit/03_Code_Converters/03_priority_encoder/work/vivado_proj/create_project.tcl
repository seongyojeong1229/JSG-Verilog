# 1. 프로젝트 생성
create_project -force vivado_proj . -part xc7z020clg400-1
# 2. 소스 파일 추가 (Testbench 제외)
add_files ../../priority_encoder.v
# 3. 최상위 모듈 설정
set_property top priority_encoder [get_filesets sources_1]
update_compile_order -fileset sources_1
exit
