set moduleName encrypt
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ statemt_0 int 32 regular {array 16 { 2 2 } 1 1 }  }
	{ statemt_1 int 32 regular {array 16 { 2 2 } 1 1 }  }
	{ key_0 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ word_1 int 32 regular {array 240 { 2 1 } 1 1 } {global 2}  }
	{ word_0 int 32 regular {array 240 { 2 1 } 1 1 } {global 2}  }
	{ round_val int 5 regular {pointer 1} {global 1}  }
	{ main_result int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "statemt_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "statemt_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "key_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "word_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "word","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 3,"step" : 2},{"low" : 0,"up" : 119,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "word_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "word","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 2},{"low" : 0,"up" : 119,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "round_val", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "main_result", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "main_result","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ statemt_0_address0 sc_out sc_lv 4 signal 0 } 
	{ statemt_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ statemt_0_we0 sc_out sc_logic 1 signal 0 } 
	{ statemt_0_d0 sc_out sc_lv 32 signal 0 } 
	{ statemt_0_q0 sc_in sc_lv 32 signal 0 } 
	{ statemt_0_address1 sc_out sc_lv 4 signal 0 } 
	{ statemt_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ statemt_0_we1 sc_out sc_logic 1 signal 0 } 
	{ statemt_0_d1 sc_out sc_lv 32 signal 0 } 
	{ statemt_0_q1 sc_in sc_lv 32 signal 0 } 
	{ statemt_1_address0 sc_out sc_lv 4 signal 1 } 
	{ statemt_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ statemt_1_we0 sc_out sc_logic 1 signal 1 } 
	{ statemt_1_d0 sc_out sc_lv 32 signal 1 } 
	{ statemt_1_q0 sc_in sc_lv 32 signal 1 } 
	{ statemt_1_address1 sc_out sc_lv 4 signal 1 } 
	{ statemt_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ statemt_1_we1 sc_out sc_logic 1 signal 1 } 
	{ statemt_1_d1 sc_out sc_lv 32 signal 1 } 
	{ statemt_1_q1 sc_in sc_lv 32 signal 1 } 
	{ key_0_address0 sc_out sc_lv 4 signal 2 } 
	{ key_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ key_0_q0 sc_in sc_lv 32 signal 2 } 
	{ word_1_address0 sc_out sc_lv 8 signal 3 } 
	{ word_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ word_1_we0 sc_out sc_logic 1 signal 3 } 
	{ word_1_d0 sc_out sc_lv 32 signal 3 } 
	{ word_1_q0 sc_in sc_lv 32 signal 3 } 
	{ word_1_address1 sc_out sc_lv 8 signal 3 } 
	{ word_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ word_1_q1 sc_in sc_lv 32 signal 3 } 
	{ word_0_address0 sc_out sc_lv 8 signal 4 } 
	{ word_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ word_0_we0 sc_out sc_logic 1 signal 4 } 
	{ word_0_d0 sc_out sc_lv 32 signal 4 } 
	{ word_0_q0 sc_in sc_lv 32 signal 4 } 
	{ word_0_address1 sc_out sc_lv 8 signal 4 } 
	{ word_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ word_0_q1 sc_in sc_lv 32 signal 4 } 
	{ round_val sc_out sc_lv 5 signal 5 } 
	{ round_val_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ main_result_i sc_in sc_lv 32 signal 6 } 
	{ main_result_o sc_out sc_lv 32 signal 6 } 
	{ main_result_o_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "statemt_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "statemt_0", "role": "address0" }} , 
 	{ "name": "statemt_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt_0", "role": "ce0" }} , 
 	{ "name": "statemt_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt_0", "role": "we0" }} , 
 	{ "name": "statemt_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt_0", "role": "d0" }} , 
 	{ "name": "statemt_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt_0", "role": "q0" }} , 
 	{ "name": "statemt_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "statemt_0", "role": "address1" }} , 
 	{ "name": "statemt_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt_0", "role": "ce1" }} , 
 	{ "name": "statemt_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt_0", "role": "we1" }} , 
 	{ "name": "statemt_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt_0", "role": "d1" }} , 
 	{ "name": "statemt_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt_0", "role": "q1" }} , 
 	{ "name": "statemt_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "statemt_1", "role": "address0" }} , 
 	{ "name": "statemt_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt_1", "role": "ce0" }} , 
 	{ "name": "statemt_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt_1", "role": "we0" }} , 
 	{ "name": "statemt_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt_1", "role": "d0" }} , 
 	{ "name": "statemt_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt_1", "role": "q0" }} , 
 	{ "name": "statemt_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "statemt_1", "role": "address1" }} , 
 	{ "name": "statemt_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt_1", "role": "ce1" }} , 
 	{ "name": "statemt_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt_1", "role": "we1" }} , 
 	{ "name": "statemt_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt_1", "role": "d1" }} , 
 	{ "name": "statemt_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt_1", "role": "q1" }} , 
 	{ "name": "key_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "key_0", "role": "address0" }} , 
 	{ "name": "key_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key_0", "role": "ce0" }} , 
 	{ "name": "key_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "key_0", "role": "q0" }} , 
 	{ "name": "word_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "word_1", "role": "address0" }} , 
 	{ "name": "word_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word_1", "role": "ce0" }} , 
 	{ "name": "word_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word_1", "role": "we0" }} , 
 	{ "name": "word_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word_1", "role": "d0" }} , 
 	{ "name": "word_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word_1", "role": "q0" }} , 
 	{ "name": "word_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "word_1", "role": "address1" }} , 
 	{ "name": "word_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word_1", "role": "ce1" }} , 
 	{ "name": "word_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word_1", "role": "q1" }} , 
 	{ "name": "word_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "word_0", "role": "address0" }} , 
 	{ "name": "word_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word_0", "role": "ce0" }} , 
 	{ "name": "word_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word_0", "role": "we0" }} , 
 	{ "name": "word_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word_0", "role": "d0" }} , 
 	{ "name": "word_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word_0", "role": "q0" }} , 
 	{ "name": "word_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "word_0", "role": "address1" }} , 
 	{ "name": "word_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word_0", "role": "ce1" }} , 
 	{ "name": "word_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word_0", "role": "q1" }} , 
 	{ "name": "round_val", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "round_val", "role": "default" }} , 
 	{ "name": "round_val_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "round_val", "role": "ap_vld" }} , 
 	{ "name": "main_result_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "main_result", "role": "i" }} , 
 	{ "name": "main_result_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "main_result", "role": "o" }} , 
 	{ "name": "main_result_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "main_result", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "851", "EstimateLatencyMax" : "931",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "statemt_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "statemt_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "key_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "word_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "word_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "round_val", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_enc_statemt", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "main_result", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_enc_statemt_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ret_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ret_1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	encrypt {
		statemt_0 {Type IO LastRead 14 FirstWrite 4}
		statemt_1 {Type IO LastRead 14 FirstWrite 4}
		key_0 {Type I LastRead 2 FirstWrite -1}
		word_1 {Type IO LastRead 13 FirstWrite 3}
		Sbox {Type I LastRead -1 FirstWrite -1}
		Rcon0 {Type I LastRead -1 FirstWrite -1}
		word_0 {Type IO LastRead 13 FirstWrite 3}
		round_val {Type O LastRead -1 FirstWrite 2}
		out_enc_statemt {Type I LastRead -1 FirstWrite -1}
		main_result {Type IO LastRead 14 FirstWrite 14}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "851", "Max" : "931"}
	, {"Name" : "Interval", "Min" : "851", "Max" : "931"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	statemt_0 { ap_memory {  { statemt_0_address0 mem_address 1 4 }  { statemt_0_ce0 mem_ce 1 1 }  { statemt_0_we0 mem_we 1 1 }  { statemt_0_d0 mem_din 1 32 }  { statemt_0_q0 mem_dout 0 32 }  { statemt_0_address1 MemPortADDR2 1 4 }  { statemt_0_ce1 MemPortCE2 1 1 }  { statemt_0_we1 MemPortWE2 1 1 }  { statemt_0_d1 MemPortDIN2 1 32 }  { statemt_0_q1 MemPortDOUT2 0 32 } } }
	statemt_1 { ap_memory {  { statemt_1_address0 mem_address 1 4 }  { statemt_1_ce0 mem_ce 1 1 }  { statemt_1_we0 mem_we 1 1 }  { statemt_1_d0 mem_din 1 32 }  { statemt_1_q0 mem_dout 0 32 }  { statemt_1_address1 MemPortADDR2 1 4 }  { statemt_1_ce1 MemPortCE2 1 1 }  { statemt_1_we1 MemPortWE2 1 1 }  { statemt_1_d1 MemPortDIN2 1 32 }  { statemt_1_q1 MemPortDOUT2 0 32 } } }
	key_0 { ap_memory {  { key_0_address0 mem_address 1 4 }  { key_0_ce0 mem_ce 1 1 }  { key_0_q0 mem_dout 0 32 } } }
	word_1 { ap_memory {  { word_1_address0 mem_address 1 8 }  { word_1_ce0 mem_ce 1 1 }  { word_1_we0 mem_we 1 1 }  { word_1_d0 mem_din 1 32 }  { word_1_q0 mem_dout 0 32 }  { word_1_address1 MemPortADDR2 1 8 }  { word_1_ce1 MemPortCE2 1 1 }  { word_1_q1 MemPortDOUT2 0 32 } } }
	word_0 { ap_memory {  { word_0_address0 mem_address 1 8 }  { word_0_ce0 mem_ce 1 1 }  { word_0_we0 mem_we 1 1 }  { word_0_d0 mem_din 1 32 }  { word_0_q0 mem_dout 0 32 }  { word_0_address1 MemPortADDR2 1 8 }  { word_0_ce1 MemPortCE2 1 1 }  { word_0_q1 MemPortDOUT2 0 32 } } }
	round_val { ap_vld {  { round_val out_data 1 5 }  { round_val_ap_vld out_vld 1 1 } } }
	main_result { ap_ovld {  { main_result_i in_data 0 32 }  { main_result_o out_data 1 32 }  { main_result_o_ap_vld out_vld 1 1 } } }
}
