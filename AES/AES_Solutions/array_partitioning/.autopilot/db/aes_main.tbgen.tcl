set moduleName aes_main
set isTopModule 1
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
set C_modelName {aes_main}
set C_modelType { int 32 }
set C_modelArgList {
}
set C_modelArgMapList {[ 
	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 7
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "12"],
		"CDFG" : "aes_main",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2514", "EstimateLatencyMax" : "2674",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_decrypt_fu_250"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_encrypt_fu_278"}],
		"Port" : [
			{"Name" : "word_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "word_1"},
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "word_1"}]},
			{"Name" : "Sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "Sbox"},
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "Sbox"}]},
			{"Name" : "Rcon0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "Rcon0"},
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "Rcon0"}]},
			{"Name" : "word_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "word_0"},
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "word_0"}]},
			{"Name" : "round_val", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "round_val"},
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "round_val"}]},
			{"Name" : "nb", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "nb"},
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "nb"}]},
			{"Name" : "out_enc_statemt", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "out_enc_statemt"}]},
			{"Name" : "main_result", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "main_result"},
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "main_result"}]},
			{"Name" : "statemt_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "statemt_0"},
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "statemt_0"}]},
			{"Name" : "statemt_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "statemt_1"},
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "statemt_1"}]},
			{"Name" : "key_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_encrypt_fu_278", "Port" : "key_0"},
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "key_0"}]},
			{"Name" : "invSbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "invSbox"}]},
			{"Name" : "out_dec_statemt", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_decrypt_fu_250", "Port" : "out_dec_statemt"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.word_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.word_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.statemt_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.statemt_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.key_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_250", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11"],
		"CDFG" : "decrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1652", "EstimateLatencyMax" : "1732",
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
			{"Name" : "nb", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "invSbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_dec_statemt", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "main_result", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_250.Sbox_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_250.Rcon0_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_250.invSbox_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_250.out_dec_statemt_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_250.ret_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_278", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17"],
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
			{"Name" : "nb", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_enc_statemt", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "main_result", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_278.Sbox_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_278.Rcon0_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_278.out_enc_statemt_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_278.ret_0_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_278.ret_1_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	aes_main {
		word_1 {Type IO LastRead -1 FirstWrite -1}
		Sbox {Type I LastRead -1 FirstWrite -1}
		Rcon0 {Type I LastRead -1 FirstWrite -1}
		word_0 {Type IO LastRead -1 FirstWrite -1}
		round_val {Type O LastRead -1 FirstWrite -1}
		nb {Type O LastRead -1 FirstWrite -1}
		out_enc_statemt {Type I LastRead -1 FirstWrite -1}
		main_result {Type IO LastRead -1 FirstWrite -1}
		statemt_0 {Type IO LastRead -1 FirstWrite -1}
		statemt_1 {Type IO LastRead -1 FirstWrite -1}
		key_0 {Type IO LastRead -1 FirstWrite -1}
		invSbox {Type I LastRead -1 FirstWrite -1}
		out_dec_statemt {Type I LastRead -1 FirstWrite -1}}
	decrypt {
		statemt_0 {Type IO LastRead 18 FirstWrite 4}
		statemt_1 {Type IO LastRead 18 FirstWrite 4}
		key_0 {Type I LastRead 2 FirstWrite -1}
		word_1 {Type IO LastRead 13 FirstWrite 3}
		Sbox {Type I LastRead -1 FirstWrite -1}
		Rcon0 {Type I LastRead -1 FirstWrite -1}
		word_0 {Type IO LastRead 13 FirstWrite 3}
		round_val {Type O LastRead -1 FirstWrite 2}
		nb {Type O LastRead -1 FirstWrite 2}
		invSbox {Type I LastRead -1 FirstWrite -1}
		out_dec_statemt {Type I LastRead -1 FirstWrite -1}
		main_result {Type IO LastRead 14 FirstWrite 14}}
	encrypt {
		statemt_0 {Type IO LastRead 14 FirstWrite 4}
		statemt_1 {Type IO LastRead 14 FirstWrite 4}
		key_0 {Type I LastRead 2 FirstWrite -1}
		word_1 {Type IO LastRead 13 FirstWrite 3}
		Sbox {Type I LastRead -1 FirstWrite -1}
		Rcon0 {Type I LastRead -1 FirstWrite -1}
		word_0 {Type IO LastRead 13 FirstWrite 3}
		round_val {Type O LastRead -1 FirstWrite 2}
		nb {Type O LastRead -1 FirstWrite 2}
		out_enc_statemt {Type I LastRead -1 FirstWrite -1}
		main_result {Type IO LastRead 14 FirstWrite 14}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2514", "Max" : "2674"}
	, {"Name" : "Interval", "Min" : "2515", "Max" : "2675"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
