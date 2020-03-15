@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sat Mar 14 20:59:48 -0400 2020
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim four_bit_add_sub_testbench_behav -key {Behavioral:sim_1:Functional:four_bit_add_sub_testbench} -tclbatch four_bit_add_sub_testbench.tcl -log simulate.log"
call xsim  four_bit_add_sub_testbench_behav -key {Behavioral:sim_1:Functional:four_bit_add_sub_testbench} -tclbatch four_bit_add_sub_testbench.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
