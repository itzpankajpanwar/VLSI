// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_main_HH_
#define _aes_main_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "decrypt.h"
#include "encrypt.h"
#include "aes_main_word_1.h"
#include "aes_main_statemt_0.h"
#include "aes_main_key_0.h"

namespace ap_rtl {

struct aes_main : public sc_module {
    // Port declarations 7
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    aes_main(sc_module_name name);
    SC_HAS_PROCESS(aes_main);

    ~aes_main();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    aes_main_word_1* word_1_U;
    aes_main_word_1* word_0_U;
    aes_main_statemt_0* statemt_0_U;
    aes_main_statemt_0* statemt_1_U;
    aes_main_key_0* key_0_U;
    decrypt* grp_decrypt_fu_250;
    encrypt* grp_encrypt_fu_278;
    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > word_1_address0;
    sc_signal< sc_logic > word_1_ce0;
    sc_signal< sc_logic > word_1_we0;
    sc_signal< sc_lv<32> > word_1_d0;
    sc_signal< sc_lv<32> > word_1_q0;
    sc_signal< sc_lv<8> > word_1_address1;
    sc_signal< sc_logic > word_1_ce1;
    sc_signal< sc_lv<32> > word_1_q1;
    sc_signal< sc_lv<8> > word_0_address0;
    sc_signal< sc_logic > word_0_ce0;
    sc_signal< sc_logic > word_0_we0;
    sc_signal< sc_lv<32> > word_0_d0;
    sc_signal< sc_lv<32> > word_0_q0;
    sc_signal< sc_lv<8> > word_0_address1;
    sc_signal< sc_logic > word_0_ce1;
    sc_signal< sc_lv<32> > word_0_q1;
    sc_signal< sc_lv<32> > main_result;
    sc_signal< sc_lv<4> > statemt_0_address0;
    sc_signal< sc_logic > statemt_0_ce0;
    sc_signal< sc_logic > statemt_0_we0;
    sc_signal< sc_lv<32> > statemt_0_d0;
    sc_signal< sc_lv<32> > statemt_0_q0;
    sc_signal< sc_lv<4> > statemt_0_address1;
    sc_signal< sc_logic > statemt_0_ce1;
    sc_signal< sc_logic > statemt_0_we1;
    sc_signal< sc_lv<32> > statemt_0_d1;
    sc_signal< sc_lv<32> > statemt_0_q1;
    sc_signal< sc_lv<4> > statemt_1_address0;
    sc_signal< sc_logic > statemt_1_ce0;
    sc_signal< sc_logic > statemt_1_we0;
    sc_signal< sc_lv<32> > statemt_1_d0;
    sc_signal< sc_lv<32> > statemt_1_q0;
    sc_signal< sc_lv<4> > statemt_1_address1;
    sc_signal< sc_logic > statemt_1_ce1;
    sc_signal< sc_logic > statemt_1_we1;
    sc_signal< sc_lv<32> > statemt_1_d1;
    sc_signal< sc_lv<32> > statemt_1_q1;
    sc_signal< sc_lv<4> > key_0_address0;
    sc_signal< sc_logic > key_0_ce0;
    sc_signal< sc_logic > key_0_we0;
    sc_signal< sc_lv<32> > key_0_d0;
    sc_signal< sc_lv<32> > key_0_q0;
    sc_signal< sc_lv<4> > key_0_address1;
    sc_signal< sc_logic > key_0_ce1;
    sc_signal< sc_logic > key_0_we1;
    sc_signal< sc_lv<32> > key_0_d1;
    sc_signal< sc_logic > grp_decrypt_fu_250_ap_start;
    sc_signal< sc_logic > grp_decrypt_fu_250_ap_done;
    sc_signal< sc_logic > grp_decrypt_fu_250_ap_idle;
    sc_signal< sc_logic > grp_decrypt_fu_250_ap_ready;
    sc_signal< sc_lv<4> > grp_decrypt_fu_250_statemt_0_address0;
    sc_signal< sc_logic > grp_decrypt_fu_250_statemt_0_ce0;
    sc_signal< sc_logic > grp_decrypt_fu_250_statemt_0_we0;
    sc_signal< sc_lv<32> > grp_decrypt_fu_250_statemt_0_d0;
    sc_signal< sc_lv<4> > grp_decrypt_fu_250_statemt_0_address1;
    sc_signal< sc_logic > grp_decrypt_fu_250_statemt_0_ce1;
    sc_signal< sc_logic > grp_decrypt_fu_250_statemt_0_we1;
    sc_signal< sc_lv<32> > grp_decrypt_fu_250_statemt_0_d1;
    sc_signal< sc_lv<4> > grp_decrypt_fu_250_statemt_1_address0;
    sc_signal< sc_logic > grp_decrypt_fu_250_statemt_1_ce0;
    sc_signal< sc_logic > grp_decrypt_fu_250_statemt_1_we0;
    sc_signal< sc_lv<32> > grp_decrypt_fu_250_statemt_1_d0;
    sc_signal< sc_lv<4> > grp_decrypt_fu_250_statemt_1_address1;
    sc_signal< sc_logic > grp_decrypt_fu_250_statemt_1_ce1;
    sc_signal< sc_logic > grp_decrypt_fu_250_statemt_1_we1;
    sc_signal< sc_lv<32> > grp_decrypt_fu_250_statemt_1_d1;
    sc_signal< sc_lv<4> > grp_decrypt_fu_250_key_0_address0;
    sc_signal< sc_logic > grp_decrypt_fu_250_key_0_ce0;
    sc_signal< sc_lv<8> > grp_decrypt_fu_250_word_1_address0;
    sc_signal< sc_logic > grp_decrypt_fu_250_word_1_ce0;
    sc_signal< sc_logic > grp_decrypt_fu_250_word_1_we0;
    sc_signal< sc_lv<32> > grp_decrypt_fu_250_word_1_d0;
    sc_signal< sc_lv<8> > grp_decrypt_fu_250_word_1_address1;
    sc_signal< sc_logic > grp_decrypt_fu_250_word_1_ce1;
    sc_signal< sc_lv<8> > grp_decrypt_fu_250_word_0_address0;
    sc_signal< sc_logic > grp_decrypt_fu_250_word_0_ce0;
    sc_signal< sc_logic > grp_decrypt_fu_250_word_0_we0;
    sc_signal< sc_lv<32> > grp_decrypt_fu_250_word_0_d0;
    sc_signal< sc_lv<8> > grp_decrypt_fu_250_word_0_address1;
    sc_signal< sc_logic > grp_decrypt_fu_250_word_0_ce1;
    sc_signal< sc_lv<5> > grp_decrypt_fu_250_round_val;
    sc_signal< sc_logic > grp_decrypt_fu_250_round_val_ap_vld;
    sc_signal< sc_lv<4> > grp_decrypt_fu_250_nb;
    sc_signal< sc_logic > grp_decrypt_fu_250_nb_ap_vld;
    sc_signal< sc_lv<32> > grp_decrypt_fu_250_main_result_o;
    sc_signal< sc_logic > grp_decrypt_fu_250_main_result_o_ap_vld;
    sc_signal< sc_logic > grp_encrypt_fu_278_ap_start;
    sc_signal< sc_logic > grp_encrypt_fu_278_ap_done;
    sc_signal< sc_logic > grp_encrypt_fu_278_ap_idle;
    sc_signal< sc_logic > grp_encrypt_fu_278_ap_ready;
    sc_signal< sc_lv<4> > grp_encrypt_fu_278_statemt_0_address0;
    sc_signal< sc_logic > grp_encrypt_fu_278_statemt_0_ce0;
    sc_signal< sc_logic > grp_encrypt_fu_278_statemt_0_we0;
    sc_signal< sc_lv<32> > grp_encrypt_fu_278_statemt_0_d0;
    sc_signal< sc_lv<4> > grp_encrypt_fu_278_statemt_0_address1;
    sc_signal< sc_logic > grp_encrypt_fu_278_statemt_0_ce1;
    sc_signal< sc_logic > grp_encrypt_fu_278_statemt_0_we1;
    sc_signal< sc_lv<32> > grp_encrypt_fu_278_statemt_0_d1;
    sc_signal< sc_lv<4> > grp_encrypt_fu_278_statemt_1_address0;
    sc_signal< sc_logic > grp_encrypt_fu_278_statemt_1_ce0;
    sc_signal< sc_logic > grp_encrypt_fu_278_statemt_1_we0;
    sc_signal< sc_lv<32> > grp_encrypt_fu_278_statemt_1_d0;
    sc_signal< sc_lv<4> > grp_encrypt_fu_278_statemt_1_address1;
    sc_signal< sc_logic > grp_encrypt_fu_278_statemt_1_ce1;
    sc_signal< sc_logic > grp_encrypt_fu_278_statemt_1_we1;
    sc_signal< sc_lv<32> > grp_encrypt_fu_278_statemt_1_d1;
    sc_signal< sc_lv<4> > grp_encrypt_fu_278_key_0_address0;
    sc_signal< sc_logic > grp_encrypt_fu_278_key_0_ce0;
    sc_signal< sc_lv<8> > grp_encrypt_fu_278_word_1_address0;
    sc_signal< sc_logic > grp_encrypt_fu_278_word_1_ce0;
    sc_signal< sc_logic > grp_encrypt_fu_278_word_1_we0;
    sc_signal< sc_lv<32> > grp_encrypt_fu_278_word_1_d0;
    sc_signal< sc_lv<8> > grp_encrypt_fu_278_word_1_address1;
    sc_signal< sc_logic > grp_encrypt_fu_278_word_1_ce1;
    sc_signal< sc_lv<8> > grp_encrypt_fu_278_word_0_address0;
    sc_signal< sc_logic > grp_encrypt_fu_278_word_0_ce0;
    sc_signal< sc_logic > grp_encrypt_fu_278_word_0_we0;
    sc_signal< sc_lv<32> > grp_encrypt_fu_278_word_0_d0;
    sc_signal< sc_lv<8> > grp_encrypt_fu_278_word_0_address1;
    sc_signal< sc_logic > grp_encrypt_fu_278_word_0_ce1;
    sc_signal< sc_lv<5> > grp_encrypt_fu_278_round_val;
    sc_signal< sc_logic > grp_encrypt_fu_278_round_val_ap_vld;
    sc_signal< sc_lv<4> > grp_encrypt_fu_278_nb;
    sc_signal< sc_logic > grp_encrypt_fu_278_nb_ap_vld;
    sc_signal< sc_lv<32> > grp_encrypt_fu_278_main_result_o;
    sc_signal< sc_logic > grp_encrypt_fu_278_main_result_o_ap_vld;
    sc_signal< sc_logic > grp_decrypt_fu_250_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > grp_encrypt_fu_278_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state1;
    static const sc_lv<12> ap_ST_fsm_state2;
    static const sc_lv<12> ap_ST_fsm_state3;
    static const sc_lv<12> ap_ST_fsm_state4;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_state7;
    static const sc_lv<12> ap_ST_fsm_state8;
    static const sc_lv<12> ap_ST_fsm_state9;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_state11;
    static const sc_lv<12> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_7E;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<32> ap_const_lv32_AE;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_D2;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<32> ap_const_lv32_A6;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_AB;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<32> ap_const_lv32_F7;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<32> ap_const_lv32_88;
    static const sc_lv<4> ap_const_lv4_B;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_C;
    static const sc_lv<32> ap_const_lv32_CF;
    static const sc_lv<4> ap_const_lv4_D;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_4F;
    static const sc_lv<4> ap_const_lv4_E;
    static const sc_lv<32> ap_const_lv32_3C;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<32> ap_const_lv32_F6;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_98;
    static const sc_lv<32> ap_const_lv32_E0;
    static const sc_lv<32> ap_const_lv32_43;
    static const sc_lv<32> ap_const_lv32_A8;
    static const sc_lv<32> ap_const_lv32_5A;
    static const sc_lv<32> ap_const_lv32_8D;
    static const sc_lv<32> ap_const_lv32_A2;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_34;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_grp_decrypt_fu_250_ap_start();
    void thread_grp_encrypt_fu_278_ap_start();
    void thread_key_0_address0();
    void thread_key_0_address1();
    void thread_key_0_ce0();
    void thread_key_0_ce1();
    void thread_key_0_d0();
    void thread_key_0_d1();
    void thread_key_0_we0();
    void thread_key_0_we1();
    void thread_statemt_0_address0();
    void thread_statemt_0_address1();
    void thread_statemt_0_ce0();
    void thread_statemt_0_ce1();
    void thread_statemt_0_d0();
    void thread_statemt_0_d1();
    void thread_statemt_0_we0();
    void thread_statemt_0_we1();
    void thread_statemt_1_address0();
    void thread_statemt_1_address1();
    void thread_statemt_1_ce0();
    void thread_statemt_1_ce1();
    void thread_statemt_1_d0();
    void thread_statemt_1_d1();
    void thread_statemt_1_we0();
    void thread_statemt_1_we1();
    void thread_word_0_address0();
    void thread_word_0_address1();
    void thread_word_0_ce0();
    void thread_word_0_ce1();
    void thread_word_0_d0();
    void thread_word_0_we0();
    void thread_word_1_address0();
    void thread_word_1_address1();
    void thread_word_1_ce0();
    void thread_word_1_ce1();
    void thread_word_1_d0();
    void thread_word_1_we0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
