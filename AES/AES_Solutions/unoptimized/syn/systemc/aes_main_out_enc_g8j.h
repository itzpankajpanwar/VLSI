// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __aes_main_out_enc_g8j_H__
#define __aes_main_out_enc_g8j_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct aes_main_out_enc_g8j_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(aes_main_out_enc_g8j_ram) {
        ram[0] = "0b00111001";
        ram[1] = "0b00100101";
        ram[2] = "0b10000100";
        ram[3] = "0b00011101";
        ram[4] = "0b00000010";
        ram[5] = "0b11011100";
        ram[6] = "0b00001001";
        ram[7] = "0b11111011";
        ram[8] = "0b11011100";
        ram[9] = "0b00010001";
        ram[10] = "0b10000101";
        ram[11] = "0b10010111";
        ram[12] = "0b00011001";
        ram[13] = "0b01101010";
        ram[14] = "0b00001011";
        ram[15] = "0b00110010";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(aes_main_out_enc_g8j) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


aes_main_out_enc_g8j_ram* meminst;


SC_CTOR(aes_main_out_enc_g8j) {
meminst = new aes_main_out_enc_g8j_ram("aes_main_out_enc_g8j_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~aes_main_out_enc_g8j() {
    delete meminst;
}


};//endmodule
#endif
