// Copyright (C) 2023  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"
// CREATED		"Mon Oct 28 12:13:48 2024"

module FourReg(
	E,
	RESET,
	D,
	O
);


input wire	E;
input wire	RESET;
input wire	[3:0] D;
output wire	[3:0] O;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
reg	DFF_inst;
reg	DFF_inst1;
reg	DFF_inst2;
reg	DFF_inst3;





always@(posedge E or negedge RESET)
begin
if (!RESET)
	begin
	DFF_inst <= 0;
	end
else
	begin
	DFF_inst <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge E or negedge RESET)
begin
if (!RESET)
	begin
	DFF_inst1 <= 0;
	end
else
	begin
	DFF_inst1 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge E or negedge RESET)
begin
if (!RESET)
	begin
	DFF_inst2 <= 0;
	end
else
	begin
	DFF_inst2 <= SYNTHESIZED_WIRE_2;
	end
end


always@(posedge E or negedge RESET)
begin
if (!RESET)
	begin
	DFF_inst3 <= 0;
	end
else
	begin
	DFF_inst3 <= SYNTHESIZED_WIRE_3;
	end
end


FourSplit	b2v_inst4(
	.I(D),
	.A(SYNTHESIZED_WIRE_0),
	.B(SYNTHESIZED_WIRE_1),
	.C(SYNTHESIZED_WIRE_2),
	.D(SYNTHESIZED_WIRE_3));


FourCombine	b2v_inst5(
	.A(DFF_inst),
	.B(DFF_inst1),
	.C(DFF_inst2),
	.D(DFF_inst3),
	.I(O));


endmodule
