// lms_dsp_avalon_st_adapter.v

// This file was auto-generated from altera_avalon_st_adapter_hw.tcl.  If you edit it your changes
// will probably be lost.
//
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module lms_dsp_avalon_st_adapter #(
		parameter inBitsPerSymbol = 12,
		parameter inUsePackets    = 0,
		parameter inDataWidth     = 48,
		parameter inChannelWidth  = 0,
		parameter inErrorWidth    = 0,
		parameter inUseEmptyPort  = 0,
		parameter inUseValid      = 1,
		parameter inUseReady      = 0,
		parameter inReadyLatency  = 0,
		parameter outDataWidth    = 24,
		parameter outChannelWidth = 0,
		parameter outErrorWidth   = 2,
		parameter outUseEmptyPort = 0,
		parameter outUseValid     = 1,
		parameter outUseReady     = 0,
		parameter outReadyLatency = 0
	) (
		input  wire        in_clk_0_clk,   // in_clk_0.clk
		input  wire        in_rst_0_reset, // in_rst_0.reset
		input  wire [47:0] in_0_data,      //     in_0.data
		input  wire        in_0_valid,     //         .valid
		output wire [23:0] out_0_data,     //    out_0.data
		output wire        out_0_valid,    //         .valid
		output wire [1:0]  out_0_error     //         .error
	);

	wire         timing_adapter_0_out_valid;      // timing_adapter_0:out_valid -> data_format_adapter_0:in_valid
	wire  [47:0] timing_adapter_0_out_data;       // timing_adapter_0:out_data -> data_format_adapter_0:in_data
	wire         timing_adapter_0_out_ready;      // data_format_adapter_0:in_ready -> timing_adapter_0:out_ready
	wire         data_format_adapter_0_out_valid; // data_format_adapter_0:out_valid -> error_adapter_0:in_valid
	wire  [23:0] data_format_adapter_0_out_data;  // data_format_adapter_0:out_data -> error_adapter_0:in_data
	wire         data_format_adapter_0_out_ready; // error_adapter_0:in_ready -> data_format_adapter_0:out_ready
	wire         error_adapter_0_out_valid;       // error_adapter_0:out_valid -> timing_adapter_1:in_valid
	wire  [23:0] error_adapter_0_out_data;        // error_adapter_0:out_data -> timing_adapter_1:in_data
	wire         error_adapter_0_out_ready;       // timing_adapter_1:in_ready -> error_adapter_0:out_ready
	wire   [1:0] error_adapter_0_out_error;       // error_adapter_0:out_error -> timing_adapter_1:in_error

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (inBitsPerSymbol != 12)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inbitspersymbol_check ( .error(1'b1) );
		end
		if (inUsePackets != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inusepackets_check ( .error(1'b1) );
		end
		if (inDataWidth != 48)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					indatawidth_check ( .error(1'b1) );
		end
		if (inChannelWidth != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inchannelwidth_check ( .error(1'b1) );
		end
		if (inErrorWidth != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inerrorwidth_check ( .error(1'b1) );
		end
		if (inUseEmptyPort != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inuseemptyport_check ( .error(1'b1) );
		end
		if (inUseValid != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inusevalid_check ( .error(1'b1) );
		end
		if (inUseReady != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inuseready_check ( .error(1'b1) );
		end
		if (inReadyLatency != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					inreadylatency_check ( .error(1'b1) );
		end
		if (outDataWidth != 24)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outdatawidth_check ( .error(1'b1) );
		end
		if (outChannelWidth != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outchannelwidth_check ( .error(1'b1) );
		end
		if (outErrorWidth != 2)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outerrorwidth_check ( .error(1'b1) );
		end
		if (outUseEmptyPort != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outuseemptyport_check ( .error(1'b1) );
		end
		if (outUseValid != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outusevalid_check ( .error(1'b1) );
		end
		if (outUseReady != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outuseready_check ( .error(1'b1) );
		end
		if (outReadyLatency != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					outreadylatency_check ( .error(1'b1) );
		end
	endgenerate

	lms_dsp_avalon_st_adapter_data_format_adapter_0 data_format_adapter_0 (
		.clk       (in_clk_0_clk),                    //   clk.clk
		.reset_n   (~in_rst_0_reset),                 // reset.reset_n
		.in_data   (timing_adapter_0_out_data),       //    in.data
		.in_valid  (timing_adapter_0_out_valid),      //      .valid
		.in_ready  (timing_adapter_0_out_ready),      //      .ready
		.out_data  (data_format_adapter_0_out_data),  //   out.data
		.out_valid (data_format_adapter_0_out_valid), //      .valid
		.out_ready (data_format_adapter_0_out_ready)  //      .ready
	);

	lms_dsp_avalon_st_adapter_error_adapter_0 error_adapter_0 (
		.clk       (in_clk_0_clk),                    //   clk.clk
		.reset_n   (~in_rst_0_reset),                 // reset.reset_n
		.in_data   (data_format_adapter_0_out_data),  //    in.data
		.in_valid  (data_format_adapter_0_out_valid), //      .valid
		.in_ready  (data_format_adapter_0_out_ready), //      .ready
		.out_data  (error_adapter_0_out_data),        //   out.data
		.out_valid (error_adapter_0_out_valid),       //      .valid
		.out_ready (error_adapter_0_out_ready),       //      .ready
		.out_error (error_adapter_0_out_error)        //      .error
	);

	lms_dsp_avalon_st_adapter_timing_adapter_0 timing_adapter_0 (
		.clk       (in_clk_0_clk),               //   clk.clk
		.reset_n   (~in_rst_0_reset),            // reset.reset_n
		.in_data   (in_0_data),                  //    in.data
		.in_valid  (in_0_valid),                 //      .valid
		.out_data  (timing_adapter_0_out_data),  //   out.data
		.out_valid (timing_adapter_0_out_valid), //      .valid
		.out_ready (timing_adapter_0_out_ready)  //      .ready
	);

	lms_dsp_avalon_st_adapter_timing_adapter_1 timing_adapter_1 (
		.clk       (in_clk_0_clk),              //   clk.clk
		.reset_n   (~in_rst_0_reset),           // reset.reset_n
		.in_data   (error_adapter_0_out_data),  //    in.data
		.in_valid  (error_adapter_0_out_valid), //      .valid
		.in_ready  (error_adapter_0_out_ready), //      .ready
		.in_error  (error_adapter_0_out_error), //      .error
		.out_data  (out_0_data),                //   out.data
		.out_valid (out_0_valid),               //      .valid
		.out_error (out_0_error)                //      .error
	);

endmodule
