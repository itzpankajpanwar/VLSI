############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_Solutions
set_top aes_main
add_files aes/aes.c -cflags "-DHW_COSIM"
add_files -tb aes/aes.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "time_optimization"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
#source "./AES_Solutions/time_optimization/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
