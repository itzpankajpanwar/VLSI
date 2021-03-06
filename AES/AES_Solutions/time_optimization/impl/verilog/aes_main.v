// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="aes_main,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.742000,HLS_SYN_LAT=1362,HLS_SYN_TPT=none,HLS_SYN_MEM=23,HLS_SYN_DSP=0,HLS_SYN_FF=10756,HLS_SYN_LUT=60361,HLS_VERSION=2019_1}" *)

module aes_main (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_return
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] word_1_address0;
reg    word_1_ce0;
reg    word_1_we0;
reg   [31:0] word_1_d0;
wire   [31:0] word_1_q0;
reg   [7:0] word_1_address1;
reg    word_1_ce1;
reg    word_1_we1;
wire   [31:0] word_1_q1;
reg   [7:0] word_0_address0;
reg    word_0_ce0;
reg    word_0_we0;
reg   [31:0] word_0_d0;
wire   [31:0] word_0_q0;
reg   [7:0] word_0_address1;
reg    word_0_ce1;
reg    word_0_we1;
wire   [31:0] word_0_q1;
reg   [31:0] main_result;
reg   [3:0] statemt_0_address0;
reg    statemt_0_ce0;
reg    statemt_0_we0;
reg   [31:0] statemt_0_d0;
wire   [31:0] statemt_0_q0;
reg   [3:0] statemt_0_address1;
reg    statemt_0_ce1;
reg    statemt_0_we1;
reg   [31:0] statemt_0_d1;
wire   [31:0] statemt_0_q1;
reg   [3:0] statemt_1_address0;
reg    statemt_1_ce0;
reg    statemt_1_we0;
reg   [31:0] statemt_1_d0;
wire   [31:0] statemt_1_q0;
reg   [3:0] statemt_1_address1;
reg    statemt_1_ce1;
reg    statemt_1_we1;
reg   [31:0] statemt_1_d1;
wire   [31:0] statemt_1_q1;
reg   [3:0] key_0_address0;
reg    key_0_ce0;
reg    key_0_we0;
reg   [31:0] key_0_d0;
wire   [31:0] key_0_q0;
reg   [3:0] key_0_address1;
reg    key_0_ce1;
reg    key_0_we1;
reg   [31:0] key_0_d1;
wire   [31:0] key_0_q1;
wire    grp_decrypt_fu_246_ap_start;
wire    grp_decrypt_fu_246_ap_done;
wire    grp_decrypt_fu_246_ap_idle;
wire    grp_decrypt_fu_246_ap_ready;
wire   [3:0] grp_decrypt_fu_246_statemt_0_address0;
wire    grp_decrypt_fu_246_statemt_0_ce0;
wire    grp_decrypt_fu_246_statemt_0_we0;
wire   [31:0] grp_decrypt_fu_246_statemt_0_d0;
wire   [3:0] grp_decrypt_fu_246_statemt_0_address1;
wire    grp_decrypt_fu_246_statemt_0_ce1;
wire    grp_decrypt_fu_246_statemt_0_we1;
wire   [31:0] grp_decrypt_fu_246_statemt_0_d1;
wire   [3:0] grp_decrypt_fu_246_statemt_1_address0;
wire    grp_decrypt_fu_246_statemt_1_ce0;
wire    grp_decrypt_fu_246_statemt_1_we0;
wire   [31:0] grp_decrypt_fu_246_statemt_1_d0;
wire   [3:0] grp_decrypt_fu_246_statemt_1_address1;
wire    grp_decrypt_fu_246_statemt_1_ce1;
wire    grp_decrypt_fu_246_statemt_1_we1;
wire   [31:0] grp_decrypt_fu_246_statemt_1_d1;
wire   [3:0] grp_decrypt_fu_246_key_0_address0;
wire    grp_decrypt_fu_246_key_0_ce0;
wire   [3:0] grp_decrypt_fu_246_key_0_address1;
wire    grp_decrypt_fu_246_key_0_ce1;
wire   [4:0] grp_decrypt_fu_246_round_val;
wire    grp_decrypt_fu_246_round_val_ap_vld;
wire   [7:0] grp_decrypt_fu_246_word_0_address0;
wire    grp_decrypt_fu_246_word_0_ce0;
wire    grp_decrypt_fu_246_word_0_we0;
wire   [31:0] grp_decrypt_fu_246_word_0_d0;
wire   [7:0] grp_decrypt_fu_246_word_0_address1;
wire    grp_decrypt_fu_246_word_0_ce1;
wire    grp_decrypt_fu_246_word_0_we1;
wire   [31:0] grp_decrypt_fu_246_word_0_d1;
wire   [7:0] grp_decrypt_fu_246_word_1_address0;
wire    grp_decrypt_fu_246_word_1_ce0;
wire    grp_decrypt_fu_246_word_1_we0;
wire   [31:0] grp_decrypt_fu_246_word_1_d0;
wire   [7:0] grp_decrypt_fu_246_word_1_address1;
wire    grp_decrypt_fu_246_word_1_ce1;
wire    grp_decrypt_fu_246_word_1_we1;
wire   [31:0] grp_decrypt_fu_246_word_1_d1;
wire   [31:0] grp_decrypt_fu_246_main_result_o;
wire    grp_decrypt_fu_246_main_result_o_ap_vld;
wire    grp_encrypt_fu_268_ap_start;
wire    grp_encrypt_fu_268_ap_done;
wire    grp_encrypt_fu_268_ap_idle;
wire    grp_encrypt_fu_268_ap_ready;
wire   [3:0] grp_encrypt_fu_268_statemt_0_address0;
wire    grp_encrypt_fu_268_statemt_0_ce0;
wire    grp_encrypt_fu_268_statemt_0_we0;
wire   [31:0] grp_encrypt_fu_268_statemt_0_d0;
wire   [3:0] grp_encrypt_fu_268_statemt_0_address1;
wire    grp_encrypt_fu_268_statemt_0_ce1;
wire    grp_encrypt_fu_268_statemt_0_we1;
wire   [31:0] grp_encrypt_fu_268_statemt_0_d1;
wire   [3:0] grp_encrypt_fu_268_statemt_1_address0;
wire    grp_encrypt_fu_268_statemt_1_ce0;
wire    grp_encrypt_fu_268_statemt_1_we0;
wire   [31:0] grp_encrypt_fu_268_statemt_1_d0;
wire   [3:0] grp_encrypt_fu_268_statemt_1_address1;
wire    grp_encrypt_fu_268_statemt_1_ce1;
wire    grp_encrypt_fu_268_statemt_1_we1;
wire   [31:0] grp_encrypt_fu_268_statemt_1_d1;
wire   [3:0] grp_encrypt_fu_268_key_0_address0;
wire    grp_encrypt_fu_268_key_0_ce0;
wire   [7:0] grp_encrypt_fu_268_word_1_address0;
wire    grp_encrypt_fu_268_word_1_ce0;
wire    grp_encrypt_fu_268_word_1_we0;
wire   [31:0] grp_encrypt_fu_268_word_1_d0;
wire   [7:0] grp_encrypt_fu_268_word_1_address1;
wire    grp_encrypt_fu_268_word_1_ce1;
wire   [7:0] grp_encrypt_fu_268_word_0_address0;
wire    grp_encrypt_fu_268_word_0_ce0;
wire    grp_encrypt_fu_268_word_0_we0;
wire   [31:0] grp_encrypt_fu_268_word_0_d0;
wire   [7:0] grp_encrypt_fu_268_word_0_address1;
wire    grp_encrypt_fu_268_word_0_ce1;
wire   [4:0] grp_encrypt_fu_268_round_val;
wire    grp_encrypt_fu_268_round_val_ap_vld;
wire   [31:0] grp_encrypt_fu_268_main_result_o;
wire    grp_encrypt_fu_268_main_result_o_ap_vld;
reg    grp_decrypt_fu_246_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    grp_encrypt_fu_268_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg   [11:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 main_result = 32'd0;
#0 grp_decrypt_fu_246_ap_start_reg = 1'b0;
#0 grp_encrypt_fu_268_ap_start_reg = 1'b0;
end

aes_main_word_1 #(
    .DataWidth( 32 ),
    .AddressRange( 240 ),
    .AddressWidth( 8 ))
word_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(word_1_address0),
    .ce0(word_1_ce0),
    .we0(word_1_we0),
    .d0(word_1_d0),
    .q0(word_1_q0),
    .address1(word_1_address1),
    .ce1(word_1_ce1),
    .we1(word_1_we1),
    .d1(grp_decrypt_fu_246_word_1_d1),
    .q1(word_1_q1)
);

aes_main_word_1 #(
    .DataWidth( 32 ),
    .AddressRange( 240 ),
    .AddressWidth( 8 ))
word_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(word_0_address0),
    .ce0(word_0_ce0),
    .we0(word_0_we0),
    .d0(word_0_d0),
    .q0(word_0_q0),
    .address1(word_0_address1),
    .ce1(word_0_ce1),
    .we1(word_0_we1),
    .d1(grp_decrypt_fu_246_word_0_d1),
    .q1(word_0_q1)
);

aes_main_statemt_0 #(
    .DataWidth( 32 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
statemt_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(statemt_0_address0),
    .ce0(statemt_0_ce0),
    .we0(statemt_0_we0),
    .d0(statemt_0_d0),
    .q0(statemt_0_q0),
    .address1(statemt_0_address1),
    .ce1(statemt_0_ce1),
    .we1(statemt_0_we1),
    .d1(statemt_0_d1),
    .q1(statemt_0_q1)
);

aes_main_statemt_0 #(
    .DataWidth( 32 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
statemt_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(statemt_1_address0),
    .ce0(statemt_1_ce0),
    .we0(statemt_1_we0),
    .d0(statemt_1_d0),
    .q0(statemt_1_q0),
    .address1(statemt_1_address1),
    .ce1(statemt_1_ce1),
    .we1(statemt_1_we1),
    .d1(statemt_1_d1),
    .q1(statemt_1_q1)
);

aes_main_statemt_0 #(
    .DataWidth( 32 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
key_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(key_0_address0),
    .ce0(key_0_ce0),
    .we0(key_0_we0),
    .d0(key_0_d0),
    .q0(key_0_q0),
    .address1(key_0_address1),
    .ce1(key_0_ce1),
    .we1(key_0_we1),
    .d1(key_0_d1),
    .q1(key_0_q1)
);

decrypt grp_decrypt_fu_246(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_decrypt_fu_246_ap_start),
    .ap_done(grp_decrypt_fu_246_ap_done),
    .ap_idle(grp_decrypt_fu_246_ap_idle),
    .ap_ready(grp_decrypt_fu_246_ap_ready),
    .statemt_0_address0(grp_decrypt_fu_246_statemt_0_address0),
    .statemt_0_ce0(grp_decrypt_fu_246_statemt_0_ce0),
    .statemt_0_we0(grp_decrypt_fu_246_statemt_0_we0),
    .statemt_0_d0(grp_decrypt_fu_246_statemt_0_d0),
    .statemt_0_q0(statemt_0_q0),
    .statemt_0_address1(grp_decrypt_fu_246_statemt_0_address1),
    .statemt_0_ce1(grp_decrypt_fu_246_statemt_0_ce1),
    .statemt_0_we1(grp_decrypt_fu_246_statemt_0_we1),
    .statemt_0_d1(grp_decrypt_fu_246_statemt_0_d1),
    .statemt_0_q1(statemt_0_q1),
    .statemt_1_address0(grp_decrypt_fu_246_statemt_1_address0),
    .statemt_1_ce0(grp_decrypt_fu_246_statemt_1_ce0),
    .statemt_1_we0(grp_decrypt_fu_246_statemt_1_we0),
    .statemt_1_d0(grp_decrypt_fu_246_statemt_1_d0),
    .statemt_1_q0(statemt_1_q0),
    .statemt_1_address1(grp_decrypt_fu_246_statemt_1_address1),
    .statemt_1_ce1(grp_decrypt_fu_246_statemt_1_ce1),
    .statemt_1_we1(grp_decrypt_fu_246_statemt_1_we1),
    .statemt_1_d1(grp_decrypt_fu_246_statemt_1_d1),
    .statemt_1_q1(statemt_1_q1),
    .key_0_address0(grp_decrypt_fu_246_key_0_address0),
    .key_0_ce0(grp_decrypt_fu_246_key_0_ce0),
    .key_0_q0(key_0_q0),
    .key_0_address1(grp_decrypt_fu_246_key_0_address1),
    .key_0_ce1(grp_decrypt_fu_246_key_0_ce1),
    .key_0_q1(key_0_q1),
    .round_val(grp_decrypt_fu_246_round_val),
    .round_val_ap_vld(grp_decrypt_fu_246_round_val_ap_vld),
    .word_0_address0(grp_decrypt_fu_246_word_0_address0),
    .word_0_ce0(grp_decrypt_fu_246_word_0_ce0),
    .word_0_we0(grp_decrypt_fu_246_word_0_we0),
    .word_0_d0(grp_decrypt_fu_246_word_0_d0),
    .word_0_q0(word_0_q0),
    .word_0_address1(grp_decrypt_fu_246_word_0_address1),
    .word_0_ce1(grp_decrypt_fu_246_word_0_ce1),
    .word_0_we1(grp_decrypt_fu_246_word_0_we1),
    .word_0_d1(grp_decrypt_fu_246_word_0_d1),
    .word_0_q1(word_0_q1),
    .word_1_address0(grp_decrypt_fu_246_word_1_address0),
    .word_1_ce0(grp_decrypt_fu_246_word_1_ce0),
    .word_1_we0(grp_decrypt_fu_246_word_1_we0),
    .word_1_d0(grp_decrypt_fu_246_word_1_d0),
    .word_1_q0(word_1_q0),
    .word_1_address1(grp_decrypt_fu_246_word_1_address1),
    .word_1_ce1(grp_decrypt_fu_246_word_1_ce1),
    .word_1_we1(grp_decrypt_fu_246_word_1_we1),
    .word_1_d1(grp_decrypt_fu_246_word_1_d1),
    .word_1_q1(word_1_q1),
    .main_result_i(main_result),
    .main_result_o(grp_decrypt_fu_246_main_result_o),
    .main_result_o_ap_vld(grp_decrypt_fu_246_main_result_o_ap_vld)
);

encrypt grp_encrypt_fu_268(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_encrypt_fu_268_ap_start),
    .ap_done(grp_encrypt_fu_268_ap_done),
    .ap_idle(grp_encrypt_fu_268_ap_idle),
    .ap_ready(grp_encrypt_fu_268_ap_ready),
    .statemt_0_address0(grp_encrypt_fu_268_statemt_0_address0),
    .statemt_0_ce0(grp_encrypt_fu_268_statemt_0_ce0),
    .statemt_0_we0(grp_encrypt_fu_268_statemt_0_we0),
    .statemt_0_d0(grp_encrypt_fu_268_statemt_0_d0),
    .statemt_0_q0(statemt_0_q0),
    .statemt_0_address1(grp_encrypt_fu_268_statemt_0_address1),
    .statemt_0_ce1(grp_encrypt_fu_268_statemt_0_ce1),
    .statemt_0_we1(grp_encrypt_fu_268_statemt_0_we1),
    .statemt_0_d1(grp_encrypt_fu_268_statemt_0_d1),
    .statemt_0_q1(statemt_0_q1),
    .statemt_1_address0(grp_encrypt_fu_268_statemt_1_address0),
    .statemt_1_ce0(grp_encrypt_fu_268_statemt_1_ce0),
    .statemt_1_we0(grp_encrypt_fu_268_statemt_1_we0),
    .statemt_1_d0(grp_encrypt_fu_268_statemt_1_d0),
    .statemt_1_q0(statemt_1_q0),
    .statemt_1_address1(grp_encrypt_fu_268_statemt_1_address1),
    .statemt_1_ce1(grp_encrypt_fu_268_statemt_1_ce1),
    .statemt_1_we1(grp_encrypt_fu_268_statemt_1_we1),
    .statemt_1_d1(grp_encrypt_fu_268_statemt_1_d1),
    .statemt_1_q1(statemt_1_q1),
    .key_0_address0(grp_encrypt_fu_268_key_0_address0),
    .key_0_ce0(grp_encrypt_fu_268_key_0_ce0),
    .key_0_q0(key_0_q0),
    .word_1_address0(grp_encrypt_fu_268_word_1_address0),
    .word_1_ce0(grp_encrypt_fu_268_word_1_ce0),
    .word_1_we0(grp_encrypt_fu_268_word_1_we0),
    .word_1_d0(grp_encrypt_fu_268_word_1_d0),
    .word_1_q0(word_1_q0),
    .word_1_address1(grp_encrypt_fu_268_word_1_address1),
    .word_1_ce1(grp_encrypt_fu_268_word_1_ce1),
    .word_1_q1(word_1_q1),
    .word_0_address0(grp_encrypt_fu_268_word_0_address0),
    .word_0_ce0(grp_encrypt_fu_268_word_0_ce0),
    .word_0_we0(grp_encrypt_fu_268_word_0_we0),
    .word_0_d0(grp_encrypt_fu_268_word_0_d0),
    .word_0_q0(word_0_q0),
    .word_0_address1(grp_encrypt_fu_268_word_0_address1),
    .word_0_ce1(grp_encrypt_fu_268_word_0_ce1),
    .word_0_q1(word_0_q1),
    .round_val(grp_encrypt_fu_268_round_val),
    .round_val_ap_vld(grp_encrypt_fu_268_round_val_ap_vld),
    .main_result_i(main_result),
    .main_result_o(grp_encrypt_fu_268_main_result_o),
    .main_result_o_ap_vld(grp_encrypt_fu_268_main_result_o_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_decrypt_fu_246_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_decrypt_fu_246_ap_start_reg <= 1'b1;
        end else if ((grp_decrypt_fu_246_ap_ready == 1'b1)) begin
            grp_decrypt_fu_246_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_encrypt_fu_268_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_encrypt_fu_268_ap_start_reg <= 1'b1;
        end else if ((grp_encrypt_fu_268_ap_ready == 1'b1)) begin
            grp_encrypt_fu_268_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_encrypt_fu_268_main_result_o_ap_vld == 1'b1))) begin
        main_result <= grp_encrypt_fu_268_main_result_o;
    end else if (((1'b1 == ap_CS_fsm_state12) & (grp_decrypt_fu_246_main_result_o_ap_vld == 1'b1))) begin
        main_result <= grp_decrypt_fu_246_main_result_o;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (grp_decrypt_fu_246_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (grp_decrypt_fu_246_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        key_0_address0 = 4'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        key_0_address0 = 4'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        key_0_address0 = 4'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        key_0_address0 = 4'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        key_0_address0 = 4'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        key_0_address0 = 4'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        key_0_address0 = 4'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        key_0_address0 = 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        key_0_address0 = grp_encrypt_fu_268_key_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        key_0_address0 = grp_decrypt_fu_246_key_0_address0;
    end else begin
        key_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        key_0_address1 = 4'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        key_0_address1 = 4'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        key_0_address1 = 4'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        key_0_address1 = 4'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        key_0_address1 = 4'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        key_0_address1 = 4'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        key_0_address1 = 4'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        key_0_address1 = 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        key_0_address1 = grp_decrypt_fu_246_key_0_address1;
    end else begin
        key_0_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        key_0_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        key_0_ce0 = grp_encrypt_fu_268_key_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        key_0_ce0 = grp_decrypt_fu_246_key_0_ce0;
    end else begin
        key_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        key_0_ce1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        key_0_ce1 = grp_decrypt_fu_246_key_0_ce1;
    end else begin
        key_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        key_0_d0 = 32'd79;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        key_0_d0 = 32'd9;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        key_0_d0 = 32'd171;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        key_0_d0 = 32'd210;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        key_0_d0 = 32'd40;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        key_0_d0 = 32'd21;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        key_0_d0 = 32'd43;
    end else begin
        key_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        key_0_d1 = 32'd60;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        key_0_d1 = 32'd207;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        key_0_d1 = 32'd136;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        key_0_d1 = 32'd247;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        key_0_d1 = 32'd166;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        key_0_d1 = 32'd174;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        key_0_d1 = 32'd22;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        key_0_d1 = 32'd126;
    end else begin
        key_0_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        key_0_we0 = 1'b1;
    end else begin
        key_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        key_0_we1 = 1'b1;
    end else begin
        key_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        statemt_0_address0 = 4'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        statemt_0_address0 = 4'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        statemt_0_address0 = 4'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        statemt_0_address0 = 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_0_address0 = grp_encrypt_fu_268_statemt_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_0_address0 = grp_decrypt_fu_246_statemt_0_address0;
    end else begin
        statemt_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        statemt_0_address1 = 4'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        statemt_0_address1 = 4'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        statemt_0_address1 = 4'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        statemt_0_address1 = 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_0_address1 = grp_encrypt_fu_268_statemt_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_0_address1 = grp_decrypt_fu_246_statemt_0_address1;
    end else begin
        statemt_0_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        statemt_0_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_0_ce0 = grp_encrypt_fu_268_statemt_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_0_ce0 = grp_decrypt_fu_246_statemt_0_ce0;
    end else begin
        statemt_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        statemt_0_ce1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_0_ce1 = grp_encrypt_fu_268_statemt_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_0_ce1 = grp_decrypt_fu_246_statemt_0_ce1;
    end else begin
        statemt_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        statemt_0_d0 = 32'd224;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        statemt_0_d0 = 32'd49;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        statemt_0_d0 = 32'd136;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        statemt_0_d0 = 32'd50;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_0_d0 = grp_encrypt_fu_268_statemt_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_0_d0 = grp_decrypt_fu_246_statemt_0_d0;
    end else begin
        statemt_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        statemt_0_d1 = 32'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        statemt_0_d1 = 32'd152;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        statemt_0_d1 = 32'd48;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        statemt_0_d1 = 32'd246;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_0_d1 = grp_encrypt_fu_268_statemt_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_0_d1 = grp_decrypt_fu_246_statemt_0_d1;
    end else begin
        statemt_0_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        statemt_0_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_0_we0 = grp_encrypt_fu_268_statemt_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_0_we0 = grp_decrypt_fu_246_statemt_0_we0;
    end else begin
        statemt_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        statemt_0_we1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_0_we1 = grp_encrypt_fu_268_statemt_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_0_we1 = grp_decrypt_fu_246_statemt_0_we1;
    end else begin
        statemt_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        statemt_1_address0 = 4'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        statemt_1_address0 = 4'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        statemt_1_address0 = 4'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        statemt_1_address0 = 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_1_address0 = grp_encrypt_fu_268_statemt_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_1_address0 = grp_decrypt_fu_246_statemt_1_address0;
    end else begin
        statemt_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        statemt_1_address1 = 4'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        statemt_1_address1 = 4'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        statemt_1_address1 = 4'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        statemt_1_address1 = 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_1_address1 = grp_encrypt_fu_268_statemt_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_1_address1 = grp_decrypt_fu_246_statemt_1_address1;
    end else begin
        statemt_1_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        statemt_1_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_1_ce0 = grp_encrypt_fu_268_statemt_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_1_ce0 = grp_decrypt_fu_246_statemt_1_ce0;
    end else begin
        statemt_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        statemt_1_ce1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_1_ce1 = grp_encrypt_fu_268_statemt_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_1_ce1 = grp_decrypt_fu_246_statemt_1_ce1;
    end else begin
        statemt_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        statemt_1_d0 = 32'd55;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        statemt_1_d0 = 32'd49;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        statemt_1_d0 = 32'd90;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        statemt_1_d0 = 32'd67;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_1_d0 = grp_encrypt_fu_268_statemt_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_1_d0 = grp_decrypt_fu_246_statemt_1_d0;
    end else begin
        statemt_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        statemt_1_d1 = 32'd52;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        statemt_1_d1 = 32'd162;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        statemt_1_d1 = 32'd141;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        statemt_1_d1 = 32'd168;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_1_d1 = grp_encrypt_fu_268_statemt_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_1_d1 = grp_decrypt_fu_246_statemt_1_d1;
    end else begin
        statemt_1_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        statemt_1_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_1_we0 = grp_encrypt_fu_268_statemt_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_1_we0 = grp_decrypt_fu_246_statemt_1_we0;
    end else begin
        statemt_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        statemt_1_we1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        statemt_1_we1 = grp_encrypt_fu_268_statemt_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        statemt_1_we1 = grp_decrypt_fu_246_statemt_1_we1;
    end else begin
        statemt_1_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_0_address0 = grp_encrypt_fu_268_word_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_0_address0 = grp_decrypt_fu_246_word_0_address0;
    end else begin
        word_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_0_address1 = grp_encrypt_fu_268_word_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_0_address1 = grp_decrypt_fu_246_word_0_address1;
    end else begin
        word_0_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_0_ce0 = grp_encrypt_fu_268_word_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_0_ce0 = grp_decrypt_fu_246_word_0_ce0;
    end else begin
        word_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_0_ce1 = grp_encrypt_fu_268_word_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_0_ce1 = grp_decrypt_fu_246_word_0_ce1;
    end else begin
        word_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_0_d0 = grp_encrypt_fu_268_word_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_0_d0 = grp_decrypt_fu_246_word_0_d0;
    end else begin
        word_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_0_we0 = grp_encrypt_fu_268_word_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_0_we0 = grp_decrypt_fu_246_word_0_we0;
    end else begin
        word_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        word_0_we1 = grp_decrypt_fu_246_word_0_we1;
    end else begin
        word_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_1_address0 = grp_encrypt_fu_268_word_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_1_address0 = grp_decrypt_fu_246_word_1_address0;
    end else begin
        word_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_1_address1 = grp_encrypt_fu_268_word_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_1_address1 = grp_decrypt_fu_246_word_1_address1;
    end else begin
        word_1_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_1_ce0 = grp_encrypt_fu_268_word_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_1_ce0 = grp_decrypt_fu_246_word_1_ce0;
    end else begin
        word_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_1_ce1 = grp_encrypt_fu_268_word_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_1_ce1 = grp_decrypt_fu_246_word_1_ce1;
    end else begin
        word_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_1_d0 = grp_encrypt_fu_268_word_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_1_d0 = grp_decrypt_fu_246_word_1_d0;
    end else begin
        word_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        word_1_we0 = grp_encrypt_fu_268_word_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        word_1_we0 = grp_decrypt_fu_246_word_1_we0;
    end else begin
        word_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        word_1_we1 = grp_decrypt_fu_246_word_1_we1;
    end else begin
        word_1_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_encrypt_fu_268_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_decrypt_fu_246_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = 32'd0;

assign grp_decrypt_fu_246_ap_start = grp_decrypt_fu_246_ap_start_reg;

assign grp_encrypt_fu_268_ap_start = grp_encrypt_fu_268_ap_start_reg;

endmodule //aes_main
