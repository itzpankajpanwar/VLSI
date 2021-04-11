# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 13
set hasByteEnable 0
set MemName decrypt_invSbox
set CoreName ap_simcore_mem
set PortList { 1 1 1 1 }
set DataWd 8
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "01010010" "00001001" "01101010" "11010101" "00110000" "00110110" "10100101" "00111000" "10111111" "01000000" "10100011" "10011110" "10000001" "11110011" "11010111" "11111011" "01111100" "11100011" "00111001" "10000010" "10011011" "00101111" "11111111" "10000111" "00110100" "10001110" "01000011" "01000100" "11000100" "11011110" "11101001" "11001011" "01010100" "01111011" "10010100" "00110010" "10100110" "11000010" "00100011" "00111101" "11101110" "01001100" "10010101" "00001011" "01000010" "11111010" "11000011" "01001110" "00001000" "00101110" "10100001" "01100110" "00101000" "11011001" "00100100" "10110010" "01110110" "01011011" "10100010" "01001001" "01101101" "10001011" "11010001" "00100101" "01110010" "11111000" "11110110" "01100100" "10000110" "01101000" "10011000" "00010110" "11010100" "10100100" "01011100" "11001100" "01011101" "01100101" "10110110" "10010010" "01101100" "01110000" "01001000" "01010000" "11111101" "11101101" "10111001" "11011010" "01011110" "00010101" "01000110" "01010111" "10100111" "10001101" "10011101" "10000100" "10010000" "11011000" "10101011" "00000000" "10001100" "10111100" "11010011" "00001010" "11110111" "11100100" "01011000" "00000101" "10111000" "10110011" "01000101" "00000110" "11010000" "00101100" "00011110" "10001111" "11001010" "00111111" "00001111" "00000010" "11000001" "10101111" "10111101" "00000011" "00000001" "00010011" "10001010" "01101011" "00111010" "10010001" "00010001" "01000001" "01001111" "01100111" "11011100" "11101010" "10010111" "11110010" "11001111" "11001110" "11110000" "10110100" "11100110" "01110011" "10010110" "10101100" "01110100" "00100010" "11100111" "10101101" "00110101" "10000101" "11100010" "11111001" "00110111" "11101000" "00011100" "01110101" "11011111" "01101110" "01000111" "11110001" "00011010" "01110001" "00011101" "00101001" "11000101" "10001001" "01101111" "10110111" "01100010" "00001110" "10101010" "00011000" "10111110" "00011011" "11111100" "01010110" "00111110" "01001011" "11000110" "11010010" "01111001" "00100000" "10011010" "11011011" "11000000" "11111110" "01111000" "11001101" "01011010" "11110100" "00011111" "11011101" "10101000" "00110011" "10001000" "00000111" "11000111" "00110001" "10110001" "00010010" "00010000" "01011001" "00100111" "10000000" "11101100" "01011111" "01100000" "01010001" "01111111" "10101001" "00011001" "10110101" "01001010" "00001101" "00101101" "11100101" "01111010" "10011111" "10010011" "11001001" "10011100" "11101111" "10100000" "11100000" "00111011" "01001101" "10101110" "00101010" "11110101" "10110000" "11001000" "11101011" "10111011" "00111100" "10000011" "01010011" "10011001" "01100001" "00010111" "00101011" "00000100" "01111110" "10111010" "01110111" "11010110" "00100110" "11100001" "01101001" "00010100" "01100011" "01010101" "00100001" "00001100" "01111101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 4 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 4 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 14
set hasByteEnable 0
set MemName decrypt_out_dec_scud
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 8
set AddrRange 16
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "00110010" "01000011" "11110110" "10101000" "10001000" "01011010" "00110000" "10001101" "00110001" "00110001" "10011000" "10100010" "11100000" "00110111" "00000111" "00110100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 15
set hasByteEnable 0
set MemName decrypt_ret
set CoreName ap_simcore_mem
set PortList { 2 1 }
set DataWd 32
set AddrRange 32
set AddrWd 5
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name statemt_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename statemt_0 \
    op interface \
    ports { statemt_0_address0 { O 4 vector } statemt_0_ce0 { O 1 bit } statemt_0_we0 { O 1 bit } statemt_0_d0 { O 32 vector } statemt_0_q0 { I 32 vector } statemt_0_address1 { O 4 vector } statemt_0_ce1 { O 1 bit } statemt_0_we1 { O 1 bit } statemt_0_d1 { O 32 vector } statemt_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'statemt_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name statemt_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename statemt_1 \
    op interface \
    ports { statemt_1_address0 { O 4 vector } statemt_1_ce0 { O 1 bit } statemt_1_we0 { O 1 bit } statemt_1_d0 { O 32 vector } statemt_1_q0 { I 32 vector } statemt_1_address1 { O 4 vector } statemt_1_ce1 { O 1 bit } statemt_1_we1 { O 1 bit } statemt_1_d1 { O 32 vector } statemt_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'statemt_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name key_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename key_0 \
    op interface \
    ports { key_0_address0 { O 4 vector } key_0_ce0 { O 1 bit } key_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'key_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name word_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename word_1 \
    op interface \
    ports { word_1_address0 { O 8 vector } word_1_ce0 { O 1 bit } word_1_we0 { O 1 bit } word_1_d0 { O 32 vector } word_1_q0 { I 32 vector } word_1_address1 { O 8 vector } word_1_ce1 { O 1 bit } word_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'word_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name word_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename word_0 \
    op interface \
    ports { word_0_address0 { O 8 vector } word_0_ce0 { O 1 bit } word_0_we0 { O 1 bit } word_0_d0 { O 32 vector } word_0_q0 { I 32 vector } word_0_address1 { O 8 vector } word_0_ce1 { O 1 bit } word_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'word_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name round_val \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_round_val \
    op interface \
    ports { round_val { O 5 vector } round_val_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name nb \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_nb \
    op interface \
    ports { nb { O 4 vector } nb_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name main_result \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_main_result \
    op interface \
    ports { main_result_i { I 32 vector } main_result_o { O 32 vector } main_result_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


