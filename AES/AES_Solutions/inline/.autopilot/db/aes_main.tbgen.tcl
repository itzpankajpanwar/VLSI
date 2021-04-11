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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "11"],
		"CDFG" : "aes_main",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2966", "EstimateLatencyMax" : "3126",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_decrypt_fu_237"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_encrypt_fu_261"}],
		"Port" : [
			{"Name" : "word", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_encrypt_fu_261", "Port" : "word"},
					{"ID" : "4", "SubInstance" : "grp_decrypt_fu_237", "Port" : "word"}]},
			{"Name" : "Sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_encrypt_fu_261", "Port" : "Sbox"},
					{"ID" : "4", "SubInstance" : "grp_decrypt_fu_237", "Port" : "Sbox"}]},
			{"Name" : "Rcon0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_encrypt_fu_261", "Port" : "Rcon0"},
					{"ID" : "4", "SubInstance" : "grp_decrypt_fu_237", "Port" : "Rcon0"}]},
			{"Name" : "round_val", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_encrypt_fu_261", "Port" : "round_val"},
					{"ID" : "4", "SubInstance" : "grp_decrypt_fu_237", "Port" : "round_val"}]},
			{"Name" : "nb", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_encrypt_fu_261", "Port" : "nb"},
					{"ID" : "4", "SubInstance" : "grp_decrypt_fu_237", "Port" : "nb"}]},
			{"Name" : "out_enc_statemt", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_encrypt_fu_261", "Port" : "out_enc_statemt"}]},
			{"Name" : "main_result", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_encrypt_fu_261", "Port" : "main_result"},
					{"ID" : "4", "SubInstance" : "grp_decrypt_fu_237", "Port" : "main_result"}]},
			{"Name" : "statemt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_encrypt_fu_261", "Port" : "statemt"},
					{"ID" : "4", "SubInstance" : "grp_decrypt_fu_237", "Port" : "statemt"}]},
			{"Name" : "key", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_encrypt_fu_261", "Port" : "key"},
					{"ID" : "4", "SubInstance" : "grp_decrypt_fu_237", "Port" : "key"}]},
			{"Name" : "invSbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_decrypt_fu_237", "Port" : "invSbox"}]},
			{"Name" : "out_dec_statemt", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_decrypt_fu_237", "Port" : "out_dec_statemt"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.word_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.statemt_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.key_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_237", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_237.Sbox_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_237.Rcon0_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_237.invSbox_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_237.out_dec_statemt_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_237.ret_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decrypt_fu_237.aes_main_mux_42_3cud_U13", "Parent" : "4"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_261", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16"],
		"CDFG" : "encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1095", "EstimateLatencyMax" : "1175",
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
			{"Name" : "out_enc_statemt", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "main_result", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_261.Sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_261.Rcon0_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_261.out_enc_statemt_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_261.ret_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encrypt_fu_261.aes_main_mux_42_3cud_U1", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	aes_main {
		word {Type IO LastRead -1 FirstWrite -1}
		Sbox {Type I LastRead -1 FirstWrite -1}
		Rcon0 {Type I LastRead -1 FirstWrite -1}
		round_val {Type O LastRead -1 FirstWrite -1}
		nb {Type O LastRead -1 FirstWrite -1}
		out_enc_statemt {Type I LastRead -1 FirstWrite -1}
		main_result {Type IO LastRead -1 FirstWrite -1}
		statemt {Type IO LastRead -1 FirstWrite -1}
		key {Type IO LastRead -1 FirstWrite -1}
		invSbox {Type I LastRead -1 FirstWrite -1}
		out_dec_statemt {Type I LastRead -1 FirstWrite -1}}
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
		main_result {Type IO LastRead 22 FirstWrite 22}}
	encrypt {
		statemt {Type IO LastRead 22 FirstWrite 5}
		key {Type I LastRead 2 FirstWrite -1}
		word {Type IO LastRead 22 FirstWrite 3}
		Sbox {Type I LastRead -1 FirstWrite -1}
		Rcon0 {Type I LastRead -1 FirstWrite -1}
		round_val {Type O LastRead -1 FirstWrite 2}
		nb {Type O LastRead -1 FirstWrite 2}
		out_enc_statemt {Type I LastRead -1 FirstWrite -1}
		main_result {Type IO LastRead 22 FirstWrite 22}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2966", "Max" : "3126"}
	, {"Name" : "Interval", "Min" : "2967", "Max" : "3127"}
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
