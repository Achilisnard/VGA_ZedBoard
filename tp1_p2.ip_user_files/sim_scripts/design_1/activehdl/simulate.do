onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_1 -L xpm -L xil_defaultlib -L xlconstant_v1_1_6 -L xlslice_v1_0_2 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_2_0 -L v_tc_v6_1_13 -L v_vid_in_axi4s_v4_0_9 -L v_axi4s_vid_out_v4_0_10 -L xlconcat_v2_1_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
