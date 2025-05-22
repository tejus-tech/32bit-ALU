# 32bit-ALU in Verilog
Project Description
This Project implements a 32-bit Arithmetic logic unit in Verilog HDL.

---------------------------------------------------------------------------------------------------
# Features in Design
- 32bit input operands A and B
- 3bit control singnal AlU_sel to select operations
- Supported operations:
  - '000': NOT (~A)
  - '001': AND (A&B)
  - '010': OR (A|B)
  - '011': Negation (-A)
  - '011': Addition (A+B)
  - '011': Subtraction (A-B)
  - '011': Multiplication (A*B)
  - '011': Division (A/B)

---------------------------------------------------------------------------------------------------
# Testbench
A custom testbench is included to simulate all ALU operations,
A testbench apllies inputs provided and generates a .vcd file for waveform analysis

---------------------------------------------------------------------------------------------------
# Tools
- EDA Playground
  - online
- icarus verilog + GTKwave
  -iverilog -o sim.vvp ALU_32bit.v ALU_32bit_tb.v - for compile
  -vvp sim.vvp - for simulate
  -gtkwave dump.vcd - for view waveforms

---------------------------------------------------------------------------------------------------
# Sample Wave forms
![image](https://github.com/user-attachments/assets/349638cf-8399-48cf-aa65-3914f9c5eaa0)


