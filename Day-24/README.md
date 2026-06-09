# Day 24 - RISC-V Datapath Basics

## Objective

Learned the fundamental blocks of a RISC-V datapath.

---

## Concepts Covered

- Program Counter (PC)
- ALU
- Instruction Fetch
- Datapath Basics
- RISC-V Architecture

---

## Files

- pc.v
- tb_pc.v
- alu.v
- tb_alu.v

---

## Program Counter

The Program Counter stores the address of the current instruction.

Every clock cycle:

PC = PC + 4

because each RISC-V instruction occupies 4 bytes.

---

## ALU Operations

Implemented:

- ADD
- SUB
- AND
- OR
- XOR

using a 3-bit ALU control signal.

---

## Basic Datapath Flow

PC
↓
Instruction Memory
↓
Decoder
↓
Register File
↓
ALU
↓
Data Memory
↓
Write Back

---

## Simulation Results

Verified:

✓ PC Increment

✓ PC Reset

✓ ALU Arithmetic Operations

✓ ALU Logical Operations

---

## Key Learning

- PC controls instruction execution flow.
- ALU performs arithmetic and logical operations.
- Datapath is the path through which data travels inside a processor.
- RISC-V instructions are 32 bits wide.

---

## Tools UseD

- Vivado 2018.2
- Verilog HDL
- GitHub
