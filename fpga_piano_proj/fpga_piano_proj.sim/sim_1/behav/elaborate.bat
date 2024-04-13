@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto ed8033d40e7f45dca0e6b30aa2257a87 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot piano_tb_behav xil_defaultlib.piano_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
