set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {buffer_s_tb} -wdb {buffer_s_tb.wdb} -autoloadwcfg -tclbatch {run_sim.tcl}
