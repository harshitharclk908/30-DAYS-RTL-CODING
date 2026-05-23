# Day 07 - ALU Design in Verilog

## 🎯 Objective
Design a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

---

##  Concepts Covered
- Arithmetic operations
- Logic operations
- always block
- case statement
- opcode selection
- combinational RTL design

---

## Operations Implemented

| Select | Operation |
|--------|------------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT |

---

##  Theory

### What is an ALU?
ALU stands for Arithmetic Logic Unit.

It performs:
- arithmetic operations
- logical operations

based on control/select signals.

---

### Role of ALU
ALU is one of the most important blocks in:
- CPUs
- processors
- datapaths
- digital systems

---

### always @(*) Block
Used for combinational logic.

Whenever input changes:
- output updates automatically.

---

