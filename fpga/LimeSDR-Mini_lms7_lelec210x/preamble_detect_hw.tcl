# TCL File Generated by Component Editor 18.1
# Thu Nov 04 16:40:49 CET 2021
# DO NOT MODIFY


#
# preamble_detect "preamble_detect" v1.0
#  2021.11.04.16:40:49
#
#

#
# request TCL package from ACDS 16.1
#
package require -exact qsys 16.1


#
# module preamble_detect
#
set_module_property DESCRIPTION ""
set_module_property NAME preamble_detect
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP LELEC2102_IPs
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME preamble_detect
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


#
# file sets
#
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL preamble_detect
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file preamble_detect.sv SYSTEM_VERILOG PATH ip/preamble_detect/preamble_detect.sv TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL preamble_detect
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file preamble_detect.sv SYSTEM_VERILOG PATH ip/preamble_detect/preamble_detect.sv


#
# parameters
#
add_parameter DATA_WIDTH INTEGER 12
set_parameter_property DATA_WIDTH DEFAULT_VALUE 12
set_parameter_property DATA_WIDTH DISPLAY_NAME DATA_WIDTH
set_parameter_property DATA_WIDTH TYPE INTEGER
set_parameter_property DATA_WIDTH UNITS None
set_parameter_property DATA_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DATA_WIDTH HDL_PARAMETER true
add_parameter FILTER_LEN_WIDTH INTEGER 6
set_parameter_property FILTER_LEN_WIDTH DEFAULT_VALUE 6
set_parameter_property FILTER_LEN_WIDTH DISPLAY_NAME FILTER_LEN_WIDTH
set_parameter_property FILTER_LEN_WIDTH TYPE INTEGER
set_parameter_property FILTER_LEN_WIDTH UNITS None
set_parameter_property FILTER_LEN_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property FILTER_LEN_WIDTH HDL_PARAMETER true
add_parameter PASSTHROUGH_LEN_WIDTH INTEGER 10
set_parameter_property PASSTHROUGH_LEN_WIDTH DEFAULT_VALUE 10
set_parameter_property PASSTHROUGH_LEN_WIDTH DISPLAY_NAME PASSTHROUGH_LEN_WIDTH
set_parameter_property PASSTHROUGH_LEN_WIDTH TYPE INTEGER
set_parameter_property PASSTHROUGH_LEN_WIDTH UNITS None
set_parameter_property PASSTHROUGH_LEN_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property PASSTHROUGH_LEN_WIDTH HDL_PARAMETER true


#
# display items
#


#
# connection point clock_sink
#
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clock_sink_clk clk Input 1


#
# connection point reset_sink
#
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink reset_sink_reset reset Input 1


#
# connection point avalon_streaming_sink
#
add_interface avalon_streaming_sink avalon_streaming end
set_interface_property avalon_streaming_sink associatedClock clock_sink
set_interface_property avalon_streaming_sink associatedReset reset_sink
set_interface_property avalon_streaming_sink dataBitsPerSymbol 12
set_interface_property avalon_streaming_sink errorDescriptor ""
set_interface_property avalon_streaming_sink firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_sink maxChannel 0
set_interface_property avalon_streaming_sink readyLatency 0
set_interface_property avalon_streaming_sink ENABLED true
set_interface_property avalon_streaming_sink EXPORT_OF ""
set_interface_property avalon_streaming_sink PORT_NAME_MAP ""
set_interface_property avalon_streaming_sink CMSIS_SVD_VARIABLES ""
set_interface_property avalon_streaming_sink SVD_ADDRESS_GROUP ""

add_interface_port avalon_streaming_sink avalon_streaming_sink_data data Input 2*DATA_WIDTH
add_interface_port avalon_streaming_sink avalon_streaming_sink_valid valid Input 1


#
# connection point avalon_streaming_source
#
add_interface avalon_streaming_source avalon_streaming start
set_interface_property avalon_streaming_source associatedClock clock_sink
set_interface_property avalon_streaming_source associatedReset reset_sink
set_interface_property avalon_streaming_source dataBitsPerSymbol 12
set_interface_property avalon_streaming_source errorDescriptor ""
set_interface_property avalon_streaming_source firstSymbolInHighOrderBits true
set_interface_property avalon_streaming_source maxChannel 0
set_interface_property avalon_streaming_source readyLatency 0
set_interface_property avalon_streaming_source ENABLED true
set_interface_property avalon_streaming_source EXPORT_OF ""
set_interface_property avalon_streaming_source PORT_NAME_MAP ""
set_interface_property avalon_streaming_source CMSIS_SVD_VARIABLES ""
set_interface_property avalon_streaming_source SVD_ADDRESS_GROUP ""

add_interface_port avalon_streaming_source avalon_streaming_source_data data Output 2*DATA_WIDTH
add_interface_port avalon_streaming_source avalon_streaming_source_valid valid Output 1


#
# connection point cfg
#
add_interface cfg conduit end
set_interface_property cfg associatedClock clock_sink
set_interface_property cfg associatedReset reset_sink
set_interface_property cfg ENABLED true
set_interface_property cfg EXPORT_OF ""
set_interface_property cfg PORT_NAME_MAP ""
set_interface_property cfg CMSIS_SVD_VARIABLES ""
set_interface_property cfg SVD_ADDRESS_GROUP ""

add_interface_port cfg cfg_enable cfg_enable Input 1
add_interface_port cfg cfg_FILTER_LEN cfg_FILTER_LEN Input FILTER_LEN_WIDTH
add_interface_port cfg cfg_PASSTHROUGH_LEN cfg_PASSTHROUGH_LEN Input PASSTHROUGH_LEN_WIDTH
add_interface_port cfg cfg_THRESHOLD cfg_THRESHOLD Input 32
add_interface_port cfg debug_sum debug_sum Output 32
add_interface_port cfg debug_count debug_count Output 32
