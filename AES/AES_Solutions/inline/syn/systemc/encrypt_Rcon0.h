// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __encrypt_Rcon0_H__
#define __encrypt_Rcon0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct encrypt_Rcon0_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 30;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(encrypt_Rcon0_ram) {
        ram[0] = "0b00000001";
        ram[1] = "0b00000010";
        ram[2] = "0b00000100";
        ram[3] = "0b00001000";
        ram[4] = "0b00010000";
        ram[5] = "0b00100000";
        ram[6] = "0b01000000";
        ram[7] = "0b10000000";
        ram[8] = "0b00011011";
        ram[9] = "0b00110110";
        ram[10] = "0b01101100";
        ram[11] = "0b11011000";
        ram[12] = "0b10101011";
        ram[13] = "0b01001101";
        ram[14] = "0b10011010";
        ram[15] = "0b00101111";
        ram[16] = "0b01011110";
        ram[17] = "0b10111100";
        ram[18] = "0b01100011";
        ram[19] = "0b11000110";
        ram[20] = "0b10010111";
        ram[21] = "0b00110101";
        ram[22] = "0b01101010";
        ram[23] = "0b11010100";
        ram[24] = "0b10110011";
        ram[25] = "0b01111101";
        ram[26] = "0b11111010";
        ram[27] = "0b11101111";
        ram[28] = "0b11000101";
        ram[29] = "0b10010001";


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


SC_MODULE(encrypt_Rcon0) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 30;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


encrypt_Rcon0_ram* meminst;


SC_CTOR(encrypt_Rcon0) {
meminst = new encrypt_Rcon0_ram("encrypt_Rcon0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~encrypt_Rcon0() {
    delete meminst;
}


};//endmodule
#endif