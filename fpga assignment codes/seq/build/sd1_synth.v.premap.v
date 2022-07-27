/* Generated by Yosys 0.9+2406 (git sha1 9ac3484, x86_64-conda_cos6-linux-gnu-gcc 1.24.0.133_b0863d8_dirty -fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -fdebug-prefix-map=/root/anaconda3/conda-bld/yosys_1607410735049/work=/usr/local/src/conda/yosys-0.8.0_0003_e80fb742f_20201208_122808 -fdebug-prefix-map=/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda=/usr/local/src/conda-prefix -fPIC -Os) */

(* top =  1  *)
(* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:1.1-89.10" *)
module Sd1(sequence_in, clock, reset, detector_out, a, b, c, d, e, f, g);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:6.8-6.9" *)
  output a;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:7.11-7.22" *)
  wire \amy_jackson(0) ;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:7.11-7.22" *)
  wire \amy_jackson(1) ;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:7.11-7.22" *)
  wire \amy_jackson(2) ;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:6.10-6.11" *)
  output b;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:6.12-6.13" *)
  output c;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:3.7-3.12" *)
  input clock;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:14.11-14.24" *)
  wire \current_state(0) ;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:14.11-14.24" *)
  wire \current_state(1) ;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:14.11-14.24" *)
  wire \current_state(2) ;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:6.14-6.15" *)
  output d;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:8.12-8.24" *)
  output detector_out;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:6.16-6.17" *)
  output e;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:6.18-6.19" *)
  output f;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:6.20-6.21" *)
  output g;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:14.26-14.36" *)
  wire \next_state(0) ;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:14.26-14.36" *)
  wire \next_state(1) ;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:14.26-14.36" *)
  wire \next_state(2) ;
  wire next_state_mux4x0_Q_1_B;
  wire \next_state_mux4x0_Q_D(0) ;
  wire \next_state_mux4x0_Q_D(1) ;
  wire next_state_mux4x0_Q_S0;
  wire next_state_mux4x0_Q_S1;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:4.7-4.12" *)
  input reset;
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:5.7-5.18" *)
  input sequence_in;
  wire sequence_in_LUT3_I0_I1;
  ckpad #(
    .IO_LOC("X22Y33"),
    .IO_PAD("34"),
    .IO_TYPE("CLOCK")
  ) _05_ (
    .P(clock),
    .Q(_00_)
  );
  ckpad #(
    .IO_LOC({0{1'b0}}),
    .IO_PAD({0{1'b0}}),
    .IO_TYPE({0{1'b0}})
  ) _06_ (
    .P(reset),
    .Q(_01_)
  );
  logic_1 _07_ (
    .a(\next_state_mux4x0_Q_D(0) )
  );
  logic_0 _08_ (
    .a(_02_)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X12Y3"),
    .IO_PAD("3"),
    .IO_TYPE("BIDIR")
  ) _09_ (
    .A(_02_),
    .P(a)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X14Y3"),
    .IO_PAD("64"),
    .IO_TYPE("BIDIR")
  ) _10_ (
    .A(_02_),
    .P(b)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X16Y3"),
    .IO_PAD("62"),
    .IO_TYPE("BIDIR")
  ) _11_ (
    .A(_02_),
    .P(c)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X20Y3"),
    .IO_PAD("61"),
    .IO_TYPE("BIDIR")
  ) _12_ (
    .A(_02_),
    .P(d)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X30Y3"),
    .IO_PAD("55"),
    .IO_TYPE("BIDIR")
  ) _13_ (
    .A(_03_),
    .P(detector_out)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X22Y3"),
    .IO_PAD("60"),
    .IO_TYPE("BIDIR")
  ) _14_ (
    .A(\amy_jackson(2) ),
    .P(e)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X24Y3"),
    .IO_PAD("59"),
    .IO_TYPE("BIDIR")
  ) _15_ (
    .A(\amy_jackson(1) ),
    .P(f)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X26Y3"),
    .IO_PAD("57"),
    .IO_TYPE("BIDIR")
  ) _16_ (
    .A(\amy_jackson(0) ),
    .P(g)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X28Y3"),
    .IO_PAD("56"),
    .IO_TYPE("BIDIR")
  ) _17_ (
    .P(sequence_in),
    .Q(_04_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:17.1-23.4|/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_ffs_map.v:86.10-86.60" *)
  dffc current_state_dffc_Q (
    .CLK(_00_),
    .CLR(_01_),
    .D(\next_state(2) ),
    .Q(\current_state(2) )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:17.1-23.4|/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_ffs_map.v:86.10-86.60" *)
  dffc current_state_dffc_Q_1 (
    .CLK(_00_),
    .CLR(_01_),
    .D(\next_state(1) ),
    .Q(\current_state(1) )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/vaman/trunk/fpga/sd1/sd1.v:17.1-23.4|/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_ffs_map.v:86.10-86.60" *)
  dffc current_state_dffc_Q_2 (
    .CLK(_00_),
    .CLR(_01_),
    .D(\next_state(0) ),
    .Q(\current_state(0) )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*I1*~I2)"),
    .INIT(9'h008)
  ) detector_out_LUT3_O (
    .I0(\current_state(1) ),
    .I1(\current_state(2) ),
    .I2(\current_state(0) ),
    .O(_03_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*~I1*~I2)+(I0*~I1*~I2)+(I0*~I1*I2)"),
    .INIT(9'h046)
  ) e_LUT3_O (
    .I0(\next_state(0) ),
    .I1(\next_state(1) ),
    .I2(\next_state(2) ),
    .O(\amy_jackson(2) )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(I0*~I1*~I2)+(I0*I1*~I2)+(I0*~I1*I2)"),
    .INIT(9'h054)
  ) f_LUT3_O (
    .I0(\next_state(2) ),
    .I1(\next_state(0) ),
    .I2(\next_state(1) ),
    .O(\amy_jackson(1) )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(I0*~I1*~I2)+(I0*I1*~I2)+(I0*~I1*I2)+(~I0*I1*I2)"),
    .INIT(9'h0d5)
  ) g_LUT3_O (
    .I0(\next_state(1) ),
    .I1(\next_state(2) ),
    .I2(\next_state(0) ),
    .O(\amy_jackson(0) )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_lut_map.v:40.63-40.132" *)
  LUT4 #(
    .EQN("(I0*I1*~I2*~I3)"),
    .INIT(16'h0008)
  ) next_state_LUT4_O (
    .I0(_04_),
    .I1(\current_state(1) ),
    .I2(\current_state(2) ),
    .I3(\current_state(0) ),
    .O(\next_state(2) )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_cells_map.v:11.12-11.81" *)
  mux4x0 next_state_mux4x0_Q (
    .A(_04_),
    .B(_02_),
    .C(\next_state_mux4x0_Q_D(0) ),
    .D(\next_state_mux4x0_Q_D(1) ),
    .Q(\next_state(1) ),
    .S0(next_state_mux4x0_Q_S0),
    .S1(next_state_mux4x0_Q_S1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_cells_map.v:11.12-11.81" *)
  mux4x0 next_state_mux4x0_Q_1 (
    .A(_02_),
    .B(next_state_mux4x0_Q_1_B),
    .C(\next_state_mux4x0_Q_D(1) ),
    .D(\next_state_mux4x0_Q_D(0) ),
    .Q(\next_state(0) ),
    .S0(next_state_mux4x0_Q_S0),
    .S1(next_state_mux4x0_Q_S1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_lut_map.v:32.63-32.110" *)
  LUT2 #(
    .EQN("(~I0*~I1)+(~I0*I1)+(I0*I1)"),
    .INIT(4'hd)
  ) next_state_mux4x0_Q_S0_LUT2_O (
    .I0(\current_state(1) ),
    .I1(\current_state(2) ),
    .O(next_state_mux4x0_Q_S0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*~I1*~I2)+(I0*~I1*~I2)+(I0*~I1*I2)"),
    .INIT(9'h046)
  ) next_state_mux4x0_Q_S1_LUT3_O (
    .I0(\current_state(0) ),
    .I1(\current_state(1) ),
    .I2(\current_state(2) ),
    .O(next_state_mux4x0_Q_S1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_lut_map.v:28.63-28.99" *)
  LUT1 #(
    .EQN("(I0)"),
    .INIT(1'h1)
  ) sequence_in_LUT1_I0 (
    .I0(_04_),
    .O(\next_state_mux4x0_Q_D(1) )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*I1*~I2)"),
    .INIT(9'h008)
  ) sequence_in_LUT3_I0 (
    .I0(_04_),
    .I1(sequence_in_LUT3_I0_I1),
    .I2(\current_state(1) ),
    .O(next_state_mux4x0_Q_1_B)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/veeracharyulu/qorc-sdk/fpga_toolchain_install/v1.3.1/conda/bin/../share/yosys/quicklogic/pp3_lut_map.v:32.63-32.110" *)
  LUT2 #(
    .EQN("(~I0*~I1)"),
    .INIT(4'h1)
  ) sequence_in_LUT3_I0_I1_LUT2_O (
    .I0(\current_state(2) ),
    .I1(\current_state(0) ),
    .O(sequence_in_LUT3_I0_I1)
  );
endmodule
