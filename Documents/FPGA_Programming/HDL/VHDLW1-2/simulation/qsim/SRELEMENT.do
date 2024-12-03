onerror {exit -code 1}
vlib work
vcom -work work SRELEMENT.vho
vcom -work work SRELEMENT1.vwf.vht
vsim -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.SRELEMENT_vhd_vec_tst
vcd file -direction SRELEMENT.msim.vcd
vcd add -internal SRELEMENT_vhd_vec_tst/*
vcd add -internal SRELEMENT_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
