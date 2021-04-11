set moduleName decrypt
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
set C_modelName {decrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ statemt int 32 regular {array 32 { 2 2 } 1 1 }  }
	{ key int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ word int 32 regular {array 480 { 2 1 } 1 1 } {global 2}  }
	{ round_val int 5 regular {pointer 1} {global 1}  }
	{ nb int 4 regular {pointer 1} {global 1}  }
	{ main_result int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "statemt", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "key", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "word", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "word","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 119,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "round_val", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "nb", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "main_result", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "main_result","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ statemt_address0 sc_out sc_lv 5 signal 0 } 
	{ statemt_ce0 sc_out sc_logic 1 signal 0 } 
	{ statemt_we0 sc_out sc_logic 1 signal 0 } 
	{ statemt_d0 sc_out sc_lv 32 signal 0 } 
	{ statemt_q0 sc_in sc_lv 32 signal 0 } 
	{ statemt_address1 sc_out sc_lv 5 signal 0 } 
	{ statemt_ce1 sc_out sc_logic 1 signal 0 } 
	{ statemt_we1 sc_out sc_logic 1 signal 0 } 
	{ statemt_d1 sc_out sc_lv 32 signal 0 } 
	{ statemt_q1 sc_in sc_lv 32 signal 0 } 
	{ key_address0 sc_out sc_lv 5 signal 1 } 
	{ key_ce0 sc_out sc_logic 1 signal 1 } 
	{ key_q0 sc_in sc_lv 32 signal 1 } 
	{ word_address0 sc_out sc_lv 9 signal 2 } 
	{ word_ce0 sc_out sc_logic 1 signal 2 } 
	{ word_we0 sc_out sc_logic 1 signal 2 } 
	{ word_d0 sc_out sc_lv 32 signal 2 } 
	{ word_q0 sc_in sc_lv 32 signal 2 } 
	{ word_address1 sc_out sc_lv 9 signal 2 } 
	{ word_ce1 sc_out sc_logic 1 signal 2 } 
	{ word_q1 sc_in sc_lv 32 signal 2 } 
	{ round_val sc_out sc_lv 5 signal 3 } 
	{ round_val_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ nb sc_out sc_lv 4 signal 4 } 
	{ nb_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ main_result_i sc_in sc_lv 32 signal 5 } 
	{ main_result_o sc_out sc_lv 32 signal 5 } 
	{ main_result_o_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "statemt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "statemt", "role": "address0" }} , 
 	{ "name": "statemt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt", "role": "ce0" }} , 
 	{ "name": "statemt_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt", "role": "we0" }} , 
 	{ "name": "statemt_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt", "role": "d0" }} , 
 	{ "name": "statemt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt", "role": "q0" }} , 
 	{ "name": "statemt_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "statemt", "role": "address1" }} , 
 	{ "name": "statemt_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt", "role": "ce1" }} , 
 	{ "name": "statemt_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "statemt", "role": "we1" }} , 
 	{ "name": "statemt_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt", "role": "d1" }} , 
 	{ "name": "statemt_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "statemt", "role": "q1" }} , 
 	{ "name": "key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "key", "role": "address0" }} , 
 	{ "name": "key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ce0" }} , 
 	{ "name": "key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "key", "role": "q0" }} , 
 	{ "name": "word_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "word", "role": "address0" }} , 
 	{ "name": "word_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word", "role": "ce0" }} , 
 	{ "name": "word_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word", "role": "we0" }} , 
 	{ "name": "word_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word", "role": "d0" }} , 
 	{ "name": "word_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word", "role": "q0" }} , 
 	{ "name": "word_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "word", "role": "address1" }} , 
 	{ "name": "word_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "word", "role": "ce1" }} , 
 	{ "name": "word_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "word", "role": "q1" }} , 
 	{ "name": "round_val", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "round_val", "role": "default" }} , 
 	{ "name": "round_val_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "round_val", "role": "ap_vld" }} , 
 	{ "name": "nb", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "nb", "role": "default" }} , 
 	{ "name": "nb_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "nb", "role": "ap_vld" }} , 
 	{ "name": "main_result_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "main_result", "role": "i" }} , 
 	{ "name": "main_result_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "main_result", "role": "o" }} , 
 	{ "name": "main_result_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "main_result", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "decrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1860", "EstimateLatencyMax" : "1940",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "statemt", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "word", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "round_val", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "nb", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "invSbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_dec_statemt", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "main_result", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.invSbox_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_dec_statemt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ret_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes_main_mux_42_3cud_U13", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	decrypt {
		statemt {Type IO LastRead 30 FirstWrite 5}
		key {Type I LastRead 2 FirstWrite -1}
		word {Type IO LastRead 22 FirstWrite 3}
		Sbox {Type I LastRead -1 FirstWrite -1}
		Rcon0 {Type I LastRead -1 FirstWrite -1}
		round_val {Type O LastRead -1 FirstWrite 2}
		nb {Type O LastRead -1 FirstWrite 2}
		invSbox {Type I LastRead -1 FirstWrite -1}
		out_dec_statemt {Type I LastRead -1 FirstWrite -1}
		main_result {Type IO LastRead 22 FirstWrite 22}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1860", "Max" : "1940"}
	, {"Name" : "Interval", "Min" : "1860", "Max" : "1940"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	statemt { ap_memory {  { statemt_address0 mem_address 1 5 }  { statemt_ce0 mem_ce 1 1 }  { statemt_we0 mem_we 1 1 }  { statemt_d0 mem_din 1 32 }  { statemt_q0 mem_dout 0 32 }  { statemt_address1 MemPortADDR2 1 5 }  { statemt_ce1 MemPortCE2 1 1 }  { statemt_we1 MemPortWE2 1 1 }  { statemt_d1 MemPortDIN2 1 32 }  { statemt_q1 MemPortDOUT2 0 32 } } }
	key { ap_memory {  { key_address0 mem_address 1 5 }  { key_ce0 mem_ce 1 1 }  { key_q0 mem_dout 0 32 } } }
	word { ap_memory {  { word_address0 mem_address 1 9 }  { word_ce0 mem_ce 1 1 }  { word_we0 mem_we 1 1 }  { word_d0 mem_din 1 32 }  { word_q0 mem_dout 0 32 }  { word_address1 MemPortADDR2 1 9 }  { word_ce1 MemPortCE2 1 1 }  { word_q1 MemPortDOUT2 0 32 } } }
	round_val { ap_vld {  { round_val out_data 1 5 }  { round_val_ap_vld out_vld 1 1 } } }
	nb { ap_vld {  { nb out_data 1 4 }  { nb_ap_vld out_vld 1 1 } } }
	main_result { ap_ovld {  { main_result_i in_data 0 32 }  { main_result_o out_data 1 32 }  { main_result_o_ap_vld out_vld 1 1 } } }
}
