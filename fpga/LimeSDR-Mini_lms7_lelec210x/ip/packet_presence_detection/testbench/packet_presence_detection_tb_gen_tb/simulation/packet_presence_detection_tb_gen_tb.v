// packet_presence_detection_tb_gen_tb.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module packet_presence_detection_tb_gen_tb (
	);

	wire         packet_presence_detection_tb_gen_inst_source_valid;          // packet_presence_detection_tb_gen_inst:source_valid -> packet_presence_detection_tb_gen_inst_source_bfm:sink_valid
	wire  [23:0] packet_presence_detection_tb_gen_inst_source_data;           // packet_presence_detection_tb_gen_inst:source_data -> packet_presence_detection_tb_gen_inst_source_bfm:sink_data
	wire   [0:0] packet_presence_detection_tb_gen_inst_sink_bfm_src_valid;    // packet_presence_detection_tb_gen_inst_sink_bfm:src_valid -> packet_presence_detection_tb_gen_inst:sink_valid
	wire  [23:0] packet_presence_detection_tb_gen_inst_sink_bfm_src_data;     // packet_presence_detection_tb_gen_inst_sink_bfm:src_data -> packet_presence_detection_tb_gen_inst:sink_data
	wire         packet_presence_detection_tb_gen_inst_clock_bfm_clk_clk;     // packet_presence_detection_tb_gen_inst_clock_bfm:clk -> [packet_presence_detection_tb_gen_inst:clock_clk, packet_presence_detection_tb_gen_inst_reset_bfm:clk, packet_presence_detection_tb_gen_inst_sink_bfm:clk, packet_presence_detection_tb_gen_inst_source_bfm:clk]
	wire         packet_presence_detection_tb_gen_inst_reset_bfm_reset_reset; // packet_presence_detection_tb_gen_inst_reset_bfm:reset -> [packet_presence_detection_tb_gen_inst:reset_reset, packet_presence_detection_tb_gen_inst_sink_bfm:reset, packet_presence_detection_tb_gen_inst_source_bfm:reset]

	packet_presence_detection_tb_gen packet_presence_detection_tb_gen_inst (
		.clock_clk    (packet_presence_detection_tb_gen_inst_clock_bfm_clk_clk),     //  clock.clk
		.reset_reset  (packet_presence_detection_tb_gen_inst_reset_bfm_reset_reset), //  reset.reset
		.sink_data    (packet_presence_detection_tb_gen_inst_sink_bfm_src_data),     //   sink.data
		.sink_valid   (packet_presence_detection_tb_gen_inst_sink_bfm_src_valid),    //       .valid
		.source_data  (packet_presence_detection_tb_gen_inst_source_data),           // source.data
		.source_valid (packet_presence_detection_tb_gen_inst_source_valid)           //       .valid
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (100000000),
		.CLOCK_UNIT (1)
	) packet_presence_detection_tb_gen_inst_clock_bfm (
		.clk (packet_presence_detection_tb_gen_inst_clock_bfm_clk_clk)  // clk.clk
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (1),
		.INITIAL_RESET_CYCLES (50)
	) packet_presence_detection_tb_gen_inst_reset_bfm (
		.reset (packet_presence_detection_tb_gen_inst_reset_bfm_reset_reset), // reset.reset
		.clk   (packet_presence_detection_tb_gen_inst_clock_bfm_clk_clk)      //   clk.clk
	);

	altera_avalon_st_source_bfm #(
		.USE_PACKET       (0),
		.USE_CHANNEL      (0),
		.USE_ERROR        (0),
		.USE_READY        (0),
		.USE_VALID        (1),
		.USE_EMPTY        (0),
		.ST_SYMBOL_W      (12),
		.ST_NUMSYMBOLS    (2),
		.ST_CHANNEL_W     (1),
		.ST_ERROR_W       (1),
		.ST_EMPTY_W       (1),
		.ST_READY_LATENCY (0),
		.ST_BEATSPERCYCLE (1),
		.ST_MAX_CHANNELS  (0),
		.VHDL_ID          (0)
	) packet_presence_detection_tb_gen_inst_sink_bfm (
		.clk               (packet_presence_detection_tb_gen_inst_clock_bfm_clk_clk),     //       clk.clk
		.reset             (packet_presence_detection_tb_gen_inst_reset_bfm_reset_reset), // clk_reset.reset
		.src_data          (packet_presence_detection_tb_gen_inst_sink_bfm_src_data),     //       src.data
		.src_valid         (packet_presence_detection_tb_gen_inst_sink_bfm_src_valid),    //          .valid
		.src_ready         (1'b1),                                                        // (terminated)
		.src_startofpacket (),                                                            // (terminated)
		.src_endofpacket   (),                                                            // (terminated)
		.src_empty         (),                                                            // (terminated)
		.src_channel       (),                                                            // (terminated)
		.src_error         ()                                                             // (terminated)
	);

	altera_avalon_st_sink_bfm #(
		.USE_PACKET       (0),
		.USE_CHANNEL      (0),
		.USE_ERROR        (0),
		.USE_READY        (0),
		.USE_VALID        (1),
		.USE_EMPTY        (0),
		.ST_SYMBOL_W      (12),
		.ST_NUMSYMBOLS    (2),
		.ST_CHANNEL_W     (1),
		.ST_ERROR_W       (1),
		.ST_EMPTY_W       (1),
		.ST_READY_LATENCY (0),
		.ST_BEATSPERCYCLE (1),
		.ST_MAX_CHANNELS  (0),
		.VHDL_ID          (0)
	) packet_presence_detection_tb_gen_inst_source_bfm (
		.clk                (packet_presence_detection_tb_gen_inst_clock_bfm_clk_clk),     //       clk.clk
		.reset              (packet_presence_detection_tb_gen_inst_reset_bfm_reset_reset), // clk_reset.reset
		.sink_data          (packet_presence_detection_tb_gen_inst_source_data),           //      sink.data
		.sink_valid         (packet_presence_detection_tb_gen_inst_source_valid),          //          .valid
		.sink_ready         (),                                                            // (terminated)
		.sink_startofpacket (1'b0),                                                        // (terminated)
		.sink_endofpacket   (1'b0),                                                        // (terminated)
		.sink_empty         (1'b0),                                                        // (terminated)
		.sink_channel       (1'b0),                                                        // (terminated)
		.sink_error         (1'b0)                                                         // (terminated)
	);

endmodule