# **About Spartan 3E**
The Spartan-3E family is a series of Field-Programmable Gate Arrays (FPGAs) manufactured by Xilinx (now part of AMD). Here's a breakdown of some key specifications of Spartan-3E FPGAs:
- Spartan-3E XC3S250E FPGA 
- * Up to 172 user-I/O pins 
- * 208-pin FBGA package
- * Over 5,000 logic cells 
- 2-line, 16-character LCD screen 
- Two 9-pin RS-232 ports (DTE- and DCE-style) 
- 32 discrete LEDs and DIP switches 
- PS/2 mouse or keyboard port 
- Separate VGA display port 
- Expansion connectors (32 free user I/O arranged in 10 pin FRC) 
- Dual, 8 bit DAC 
- 8 bit, 8 channel ADC 
- USB interface(type B) 
- 8 pushbuttons for trigger, input 
- 6 common anode 7-segment LED display
- Xilinx 2 Mbit Platform Flash configuration PROM

# **About Verilog**
Verilog/SystemVerilog is a type of Hardware description Language (HDL) similar to VHDL. It is used to design and describe the electronic system. Unlike other programming languages, we can just use Verilog which is included in almost all of the FPGA/SoC programming softwares. These softwares include Vivado, Cadence, Xilinx ISE Design Suite, etc.
The syntax of Verilog is based on C and is very easy to transition over from C to Verilog.

# **About Vivado 2023.2**
The Software used in this project is Vivado 2023.2. It is the latest version of Xilinx Vivado Design Suite released in 2023. It is a software environment for development of FPGAs.
This version of Vivado is used as it was most easy for beginners to understand and get familiar with FPGA development environments.
It is used for writing the TopModule, TestBench and run Behavioral Simulations for our code. The code dumping is done using ISE Design Suite 14.7 (Windows 10) version.
[Download Vivado 2023.2](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2023-2.html)

# **About ISE 14.7**
ISE Design Suite 14.7 is an older version of Xilinx Design Suite. It is mostly supported for Windows 7 and earlier versions. The recent update to ISE 14.7 made it available for Windows 10 using Virtual Machine. This is used for the purpose of code dumping in the Spartan 3E FPGA Development Kit. Vivado 2023.2 and similar versions only support the latest FPGA boards starting from Spartan 7. The ISE 14.7 includes older development boards such s Spartan 3, 6,etc.
[Download ISE Design Suite 14.7 (Windows 10)](https://www.xilinx.com/support/download.html/content/xilinx/en/downloadNav/vivado-design-tools/archive-ise.html)
