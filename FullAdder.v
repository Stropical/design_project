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
// CREATED		"Mon Oct  7 11:59:48 2024"

module FullAdder(
	A,
	B,
	CIN,
	Sum,
	COUT
);


input wire	A;
input wire	B;
input wire	CIN;
output wire	Sum;
output wire	COUT;

wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;




assign	SYNTHESIZED_WIRE_3 = CIN & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_2 = A & B;

assign	SYNTHESIZED_WIRE_4 = A ^ B;

assign	Sum = SYNTHESIZED_WIRE_4 ^ CIN;

assign	COUT = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;


endmodule
