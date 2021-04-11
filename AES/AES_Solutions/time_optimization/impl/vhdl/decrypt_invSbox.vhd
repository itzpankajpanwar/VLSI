-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity decrypt_invSbox_rom is 
    generic(
             DWIDTH     : integer := 8; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          addr2      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce2       : in std_logic; 
          q2         : out std_logic_vector(DWIDTH-1 downto 0);
          addr3      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce3       : in std_logic; 
          q3         : out std_logic_vector(DWIDTH-1 downto 0);
          addr4      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce4       : in std_logic; 
          q4         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of decrypt_invSbox_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr2_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr3_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr4_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem0 : mem_array := (
    0 => "01010010", 1 => "00001001", 2 => "01101010", 3 => "11010101", 
    4 => "00110000", 5 => "00110110", 6 => "10100101", 7 => "00111000", 
    8 => "10111111", 9 => "01000000", 10 => "10100011", 11 => "10011110", 
    12 => "10000001", 13 => "11110011", 14 => "11010111", 15 => "11111011", 
    16 => "01111100", 17 => "11100011", 18 => "00111001", 19 => "10000010", 
    20 => "10011011", 21 => "00101111", 22 => "11111111", 23 => "10000111", 
    24 => "00110100", 25 => "10001110", 26 => "01000011", 27 => "01000100", 
    28 => "11000100", 29 => "11011110", 30 => "11101001", 31 => "11001011", 
    32 => "01010100", 33 => "01111011", 34 => "10010100", 35 => "00110010", 
    36 => "10100110", 37 => "11000010", 38 => "00100011", 39 => "00111101", 
    40 => "11101110", 41 => "01001100", 42 => "10010101", 43 => "00001011", 
    44 => "01000010", 45 => "11111010", 46 => "11000011", 47 => "01001110", 
    48 => "00001000", 49 => "00101110", 50 => "10100001", 51 => "01100110", 
    52 => "00101000", 53 => "11011001", 54 => "00100100", 55 => "10110010", 
    56 => "01110110", 57 => "01011011", 58 => "10100010", 59 => "01001001", 
    60 => "01101101", 61 => "10001011", 62 => "11010001", 63 => "00100101", 
    64 => "01110010", 65 => "11111000", 66 => "11110110", 67 => "01100100", 
    68 => "10000110", 69 => "01101000", 70 => "10011000", 71 => "00010110", 
    72 => "11010100", 73 => "10100100", 74 => "01011100", 75 => "11001100", 
    76 => "01011101", 77 => "01100101", 78 => "10110110", 79 => "10010010", 
    80 => "01101100", 81 => "01110000", 82 => "01001000", 83 => "01010000", 
    84 => "11111101", 85 => "11101101", 86 => "10111001", 87 => "11011010", 
    88 => "01011110", 89 => "00010101", 90 => "01000110", 91 => "01010111", 
    92 => "10100111", 93 => "10001101", 94 => "10011101", 95 => "10000100", 
    96 => "10010000", 97 => "11011000", 98 => "10101011", 99 => "00000000", 
    100 => "10001100", 101 => "10111100", 102 => "11010011", 103 => "00001010", 
    104 => "11110111", 105 => "11100100", 106 => "01011000", 107 => "00000101", 
    108 => "10111000", 109 => "10110011", 110 => "01000101", 111 => "00000110", 
    112 => "11010000", 113 => "00101100", 114 => "00011110", 115 => "10001111", 
    116 => "11001010", 117 => "00111111", 118 => "00001111", 119 => "00000010", 
    120 => "11000001", 121 => "10101111", 122 => "10111101", 123 => "00000011", 
    124 => "00000001", 125 => "00010011", 126 => "10001010", 127 => "01101011", 
    128 => "00111010", 129 => "10010001", 130 => "00010001", 131 => "01000001", 
    132 => "01001111", 133 => "01100111", 134 => "11011100", 135 => "11101010", 
    136 => "10010111", 137 => "11110010", 138 => "11001111", 139 => "11001110", 
    140 => "11110000", 141 => "10110100", 142 => "11100110", 143 => "01110011", 
    144 => "10010110", 145 => "10101100", 146 => "01110100", 147 => "00100010", 
    148 => "11100111", 149 => "10101101", 150 => "00110101", 151 => "10000101", 
    152 => "11100010", 153 => "11111001", 154 => "00110111", 155 => "11101000", 
    156 => "00011100", 157 => "01110101", 158 => "11011111", 159 => "01101110", 
    160 => "01000111", 161 => "11110001", 162 => "00011010", 163 => "01110001", 
    164 => "00011101", 165 => "00101001", 166 => "11000101", 167 => "10001001", 
    168 => "01101111", 169 => "10110111", 170 => "01100010", 171 => "00001110", 
    172 => "10101010", 173 => "00011000", 174 => "10111110", 175 => "00011011", 
    176 => "11111100", 177 => "01010110", 178 => "00111110", 179 => "01001011", 
    180 => "11000110", 181 => "11010010", 182 => "01111001", 183 => "00100000", 
    184 => "10011010", 185 => "11011011", 186 => "11000000", 187 => "11111110", 
    188 => "01111000", 189 => "11001101", 190 => "01011010", 191 => "11110100", 
    192 => "00011111", 193 => "11011101", 194 => "10101000", 195 => "00110011", 
    196 => "10001000", 197 => "00000111", 198 => "11000111", 199 => "00110001", 
    200 => "10110001", 201 => "00010010", 202 => "00010000", 203 => "01011001", 
    204 => "00100111", 205 => "10000000", 206 => "11101100", 207 => "01011111", 
    208 => "01100000", 209 => "01010001", 210 => "01111111", 211 => "10101001", 
    212 => "00011001", 213 => "10110101", 214 => "01001010", 215 => "00001101", 
    216 => "00101101", 217 => "11100101", 218 => "01111010", 219 => "10011111", 
    220 => "10010011", 221 => "11001001", 222 => "10011100", 223 => "11101111", 
    224 => "10100000", 225 => "11100000", 226 => "00111011", 227 => "01001101", 
    228 => "10101110", 229 => "00101010", 230 => "11110101", 231 => "10110000", 
    232 => "11001000", 233 => "11101011", 234 => "10111011", 235 => "00111100", 
    236 => "10000011", 237 => "01010011", 238 => "10011001", 239 => "01100001", 
    240 => "00010111", 241 => "00101011", 242 => "00000100", 243 => "01111110", 
    244 => "10111010", 245 => "01110111", 246 => "11010110", 247 => "00100110", 
    248 => "11100001", 249 => "01101001", 250 => "00010100", 251 => "01100011", 
    252 => "01010101", 253 => "00100001", 254 => "00001100", 255 => "01111101" );
signal mem1 : mem_array := (
    0 => "01010010", 1 => "00001001", 2 => "01101010", 3 => "11010101", 
    4 => "00110000", 5 => "00110110", 6 => "10100101", 7 => "00111000", 
    8 => "10111111", 9 => "01000000", 10 => "10100011", 11 => "10011110", 
    12 => "10000001", 13 => "11110011", 14 => "11010111", 15 => "11111011", 
    16 => "01111100", 17 => "11100011", 18 => "00111001", 19 => "10000010", 
    20 => "10011011", 21 => "00101111", 22 => "11111111", 23 => "10000111", 
    24 => "00110100", 25 => "10001110", 26 => "01000011", 27 => "01000100", 
    28 => "11000100", 29 => "11011110", 30 => "11101001", 31 => "11001011", 
    32 => "01010100", 33 => "01111011", 34 => "10010100", 35 => "00110010", 
    36 => "10100110", 37 => "11000010", 38 => "00100011", 39 => "00111101", 
    40 => "11101110", 41 => "01001100", 42 => "10010101", 43 => "00001011", 
    44 => "01000010", 45 => "11111010", 46 => "11000011", 47 => "01001110", 
    48 => "00001000", 49 => "00101110", 50 => "10100001", 51 => "01100110", 
    52 => "00101000", 53 => "11011001", 54 => "00100100", 55 => "10110010", 
    56 => "01110110", 57 => "01011011", 58 => "10100010", 59 => "01001001", 
    60 => "01101101", 61 => "10001011", 62 => "11010001", 63 => "00100101", 
    64 => "01110010", 65 => "11111000", 66 => "11110110", 67 => "01100100", 
    68 => "10000110", 69 => "01101000", 70 => "10011000", 71 => "00010110", 
    72 => "11010100", 73 => "10100100", 74 => "01011100", 75 => "11001100", 
    76 => "01011101", 77 => "01100101", 78 => "10110110", 79 => "10010010", 
    80 => "01101100", 81 => "01110000", 82 => "01001000", 83 => "01010000", 
    84 => "11111101", 85 => "11101101", 86 => "10111001", 87 => "11011010", 
    88 => "01011110", 89 => "00010101", 90 => "01000110", 91 => "01010111", 
    92 => "10100111", 93 => "10001101", 94 => "10011101", 95 => "10000100", 
    96 => "10010000", 97 => "11011000", 98 => "10101011", 99 => "00000000", 
    100 => "10001100", 101 => "10111100", 102 => "11010011", 103 => "00001010", 
    104 => "11110111", 105 => "11100100", 106 => "01011000", 107 => "00000101", 
    108 => "10111000", 109 => "10110011", 110 => "01000101", 111 => "00000110", 
    112 => "11010000", 113 => "00101100", 114 => "00011110", 115 => "10001111", 
    116 => "11001010", 117 => "00111111", 118 => "00001111", 119 => "00000010", 
    120 => "11000001", 121 => "10101111", 122 => "10111101", 123 => "00000011", 
    124 => "00000001", 125 => "00010011", 126 => "10001010", 127 => "01101011", 
    128 => "00111010", 129 => "10010001", 130 => "00010001", 131 => "01000001", 
    132 => "01001111", 133 => "01100111", 134 => "11011100", 135 => "11101010", 
    136 => "10010111", 137 => "11110010", 138 => "11001111", 139 => "11001110", 
    140 => "11110000", 141 => "10110100", 142 => "11100110", 143 => "01110011", 
    144 => "10010110", 145 => "10101100", 146 => "01110100", 147 => "00100010", 
    148 => "11100111", 149 => "10101101", 150 => "00110101", 151 => "10000101", 
    152 => "11100010", 153 => "11111001", 154 => "00110111", 155 => "11101000", 
    156 => "00011100", 157 => "01110101", 158 => "11011111", 159 => "01101110", 
    160 => "01000111", 161 => "11110001", 162 => "00011010", 163 => "01110001", 
    164 => "00011101", 165 => "00101001", 166 => "11000101", 167 => "10001001", 
    168 => "01101111", 169 => "10110111", 170 => "01100010", 171 => "00001110", 
    172 => "10101010", 173 => "00011000", 174 => "10111110", 175 => "00011011", 
    176 => "11111100", 177 => "01010110", 178 => "00111110", 179 => "01001011", 
    180 => "11000110", 181 => "11010010", 182 => "01111001", 183 => "00100000", 
    184 => "10011010", 185 => "11011011", 186 => "11000000", 187 => "11111110", 
    188 => "01111000", 189 => "11001101", 190 => "01011010", 191 => "11110100", 
    192 => "00011111", 193 => "11011101", 194 => "10101000", 195 => "00110011", 
    196 => "10001000", 197 => "00000111", 198 => "11000111", 199 => "00110001", 
    200 => "10110001", 201 => "00010010", 202 => "00010000", 203 => "01011001", 
    204 => "00100111", 205 => "10000000", 206 => "11101100", 207 => "01011111", 
    208 => "01100000", 209 => "01010001", 210 => "01111111", 211 => "10101001", 
    212 => "00011001", 213 => "10110101", 214 => "01001010", 215 => "00001101", 
    216 => "00101101", 217 => "11100101", 218 => "01111010", 219 => "10011111", 
    220 => "10010011", 221 => "11001001", 222 => "10011100", 223 => "11101111", 
    224 => "10100000", 225 => "11100000", 226 => "00111011", 227 => "01001101", 
    228 => "10101110", 229 => "00101010", 230 => "11110101", 231 => "10110000", 
    232 => "11001000", 233 => "11101011", 234 => "10111011", 235 => "00111100", 
    236 => "10000011", 237 => "01010011", 238 => "10011001", 239 => "01100001", 
    240 => "00010111", 241 => "00101011", 242 => "00000100", 243 => "01111110", 
    244 => "10111010", 245 => "01110111", 246 => "11010110", 247 => "00100110", 
    248 => "11100001", 249 => "01101001", 250 => "00010100", 251 => "01100011", 
    252 => "01010101", 253 => "00100001", 254 => "00001100", 255 => "01111101" );
signal mem2 : mem_array := (
    0 => "01010010", 1 => "00001001", 2 => "01101010", 3 => "11010101", 
    4 => "00110000", 5 => "00110110", 6 => "10100101", 7 => "00111000", 
    8 => "10111111", 9 => "01000000", 10 => "10100011", 11 => "10011110", 
    12 => "10000001", 13 => "11110011", 14 => "11010111", 15 => "11111011", 
    16 => "01111100", 17 => "11100011", 18 => "00111001", 19 => "10000010", 
    20 => "10011011", 21 => "00101111", 22 => "11111111", 23 => "10000111", 
    24 => "00110100", 25 => "10001110", 26 => "01000011", 27 => "01000100", 
    28 => "11000100", 29 => "11011110", 30 => "11101001", 31 => "11001011", 
    32 => "01010100", 33 => "01111011", 34 => "10010100", 35 => "00110010", 
    36 => "10100110", 37 => "11000010", 38 => "00100011", 39 => "00111101", 
    40 => "11101110", 41 => "01001100", 42 => "10010101", 43 => "00001011", 
    44 => "01000010", 45 => "11111010", 46 => "11000011", 47 => "01001110", 
    48 => "00001000", 49 => "00101110", 50 => "10100001", 51 => "01100110", 
    52 => "00101000", 53 => "11011001", 54 => "00100100", 55 => "10110010", 
    56 => "01110110", 57 => "01011011", 58 => "10100010", 59 => "01001001", 
    60 => "01101101", 61 => "10001011", 62 => "11010001", 63 => "00100101", 
    64 => "01110010", 65 => "11111000", 66 => "11110110", 67 => "01100100", 
    68 => "10000110", 69 => "01101000", 70 => "10011000", 71 => "00010110", 
    72 => "11010100", 73 => "10100100", 74 => "01011100", 75 => "11001100", 
    76 => "01011101", 77 => "01100101", 78 => "10110110", 79 => "10010010", 
    80 => "01101100", 81 => "01110000", 82 => "01001000", 83 => "01010000", 
    84 => "11111101", 85 => "11101101", 86 => "10111001", 87 => "11011010", 
    88 => "01011110", 89 => "00010101", 90 => "01000110", 91 => "01010111", 
    92 => "10100111", 93 => "10001101", 94 => "10011101", 95 => "10000100", 
    96 => "10010000", 97 => "11011000", 98 => "10101011", 99 => "00000000", 
    100 => "10001100", 101 => "10111100", 102 => "11010011", 103 => "00001010", 
    104 => "11110111", 105 => "11100100", 106 => "01011000", 107 => "00000101", 
    108 => "10111000", 109 => "10110011", 110 => "01000101", 111 => "00000110", 
    112 => "11010000", 113 => "00101100", 114 => "00011110", 115 => "10001111", 
    116 => "11001010", 117 => "00111111", 118 => "00001111", 119 => "00000010", 
    120 => "11000001", 121 => "10101111", 122 => "10111101", 123 => "00000011", 
    124 => "00000001", 125 => "00010011", 126 => "10001010", 127 => "01101011", 
    128 => "00111010", 129 => "10010001", 130 => "00010001", 131 => "01000001", 
    132 => "01001111", 133 => "01100111", 134 => "11011100", 135 => "11101010", 
    136 => "10010111", 137 => "11110010", 138 => "11001111", 139 => "11001110", 
    140 => "11110000", 141 => "10110100", 142 => "11100110", 143 => "01110011", 
    144 => "10010110", 145 => "10101100", 146 => "01110100", 147 => "00100010", 
    148 => "11100111", 149 => "10101101", 150 => "00110101", 151 => "10000101", 
    152 => "11100010", 153 => "11111001", 154 => "00110111", 155 => "11101000", 
    156 => "00011100", 157 => "01110101", 158 => "11011111", 159 => "01101110", 
    160 => "01000111", 161 => "11110001", 162 => "00011010", 163 => "01110001", 
    164 => "00011101", 165 => "00101001", 166 => "11000101", 167 => "10001001", 
    168 => "01101111", 169 => "10110111", 170 => "01100010", 171 => "00001110", 
    172 => "10101010", 173 => "00011000", 174 => "10111110", 175 => "00011011", 
    176 => "11111100", 177 => "01010110", 178 => "00111110", 179 => "01001011", 
    180 => "11000110", 181 => "11010010", 182 => "01111001", 183 => "00100000", 
    184 => "10011010", 185 => "11011011", 186 => "11000000", 187 => "11111110", 
    188 => "01111000", 189 => "11001101", 190 => "01011010", 191 => "11110100", 
    192 => "00011111", 193 => "11011101", 194 => "10101000", 195 => "00110011", 
    196 => "10001000", 197 => "00000111", 198 => "11000111", 199 => "00110001", 
    200 => "10110001", 201 => "00010010", 202 => "00010000", 203 => "01011001", 
    204 => "00100111", 205 => "10000000", 206 => "11101100", 207 => "01011111", 
    208 => "01100000", 209 => "01010001", 210 => "01111111", 211 => "10101001", 
    212 => "00011001", 213 => "10110101", 214 => "01001010", 215 => "00001101", 
    216 => "00101101", 217 => "11100101", 218 => "01111010", 219 => "10011111", 
    220 => "10010011", 221 => "11001001", 222 => "10011100", 223 => "11101111", 
    224 => "10100000", 225 => "11100000", 226 => "00111011", 227 => "01001101", 
    228 => "10101110", 229 => "00101010", 230 => "11110101", 231 => "10110000", 
    232 => "11001000", 233 => "11101011", 234 => "10111011", 235 => "00111100", 
    236 => "10000011", 237 => "01010011", 238 => "10011001", 239 => "01100001", 
    240 => "00010111", 241 => "00101011", 242 => "00000100", 243 => "01111110", 
    244 => "10111010", 245 => "01110111", 246 => "11010110", 247 => "00100110", 
    248 => "11100001", 249 => "01101001", 250 => "00010100", 251 => "01100011", 
    252 => "01010101", 253 => "00100001", 254 => "00001100", 255 => "01111101" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem0 : signal is "block_rom";
attribute syn_rom_style of mem1 : signal is "block_rom";
attribute syn_rom_style of mem2 : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem0 : signal is "block";
attribute ROM_STYLE of mem1 : signal is "block";
attribute ROM_STYLE of mem2 : signal is "block";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

memory_access_guard_2: process (addr2) 
begin
      addr2_tmp <= addr2;
--synthesis translate_off
      if (CONV_INTEGER(addr2) > mem_size-1) then
           addr2_tmp <= (others => '0');
      else 
           addr2_tmp <= addr2;
      end if;
--synthesis translate_on
end process;

memory_access_guard_3: process (addr3) 
begin
      addr3_tmp <= addr3;
--synthesis translate_off
      if (CONV_INTEGER(addr3) > mem_size-1) then
           addr3_tmp <= (others => '0');
      else 
           addr3_tmp <= addr3;
      end if;
--synthesis translate_on
end process;

memory_access_guard_4: process (addr4) 
begin
      addr4_tmp <= addr4;
--synthesis translate_off
      if (CONV_INTEGER(addr4) > mem_size-1) then
           addr4_tmp <= (others => '0');
      else 
           addr4_tmp <= addr4;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem0(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem0(CONV_INTEGER(addr1_tmp)); 
        end if;
        if (ce2 = '1') then 
            q2 <= mem1(CONV_INTEGER(addr2_tmp)); 
        end if;
        if (ce3 = '1') then 
            q3 <= mem1(CONV_INTEGER(addr3_tmp)); 
        end if;
        if (ce4 = '1') then 
            q4 <= mem2(CONV_INTEGER(addr4_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity decrypt_invSbox is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address2 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address3 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce3 : IN STD_LOGIC;
        q3 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address4 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce4 : IN STD_LOGIC;
        q4 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of decrypt_invSbox is
    component decrypt_invSbox_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR;
            addr2 : IN STD_LOGIC_VECTOR;
            ce2 : IN STD_LOGIC;
            q2 : OUT STD_LOGIC_VECTOR;
            addr3 : IN STD_LOGIC_VECTOR;
            ce3 : IN STD_LOGIC;
            q3 : OUT STD_LOGIC_VECTOR;
            addr4 : IN STD_LOGIC_VECTOR;
            ce4 : IN STD_LOGIC;
            q4 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    decrypt_invSbox_rom_U :  component decrypt_invSbox_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1,
        addr2 => address2,
        ce2 => ce2,
        q2 => q2,
        addr3 => address3,
        ce3 => ce3,
        q3 => q3,
        addr4 => address4,
        ce4 => ce4,
        q4 => q4);

end architecture;


