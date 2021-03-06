transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/next_state.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/myxor.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/myreg.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/myalu.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/tribuf.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/myfsm.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/mydatapath.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/one_bit_reg.v}

vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/lab_project_TB.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/myalu.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/mydatapath.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/tribuf.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/myxor.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/myreg.v}
vlog -vlog01compat -work work +incdir+D:/Usyd/Dropbox\ (Sydney\ Uni\ Student)/2021\ S1/ELEC\ 2602/Lab/Project\ Final/Project9602 {D:/Usyd/Dropbox (Sydney Uni Student)/2021 S1/ELEC 2602/Lab/Project Final/Project9602/myfsm.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  lab_project_TB

add wave *
view structure
view signals
run 1 us
