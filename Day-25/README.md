# Day 25 - Pipelining Basics

## Objective

Learned the basics of pipelining and implemented a pipeline register.

---

# Concepts Covered

- 5 Stage Pipeline
- IF Stage
- ID Stage
- EX Stage
- MEM Stage
- WB Stage
- Pipeline Registers
- Pipeline Hazards

---

# 5 Stage Pipeline

IF → ID → EX → MEM → WB

---

# Pipeline Register

Stores data between stages.

Example:

IF → IF/ID

ID → ID/EX

EX → EX/MEM

MEM → MEM/WB

---

# Files

- pipeline_reg.v
- tb_pipeline_reg.v

---

# Hazards

## Data Hazard

Instruction dependency.

## Control Hazard

Branch instruction issue.

## Structural Hazard

Resource conflict.

---

# Simulation Results

Successfully verified:

- Pipeline Register
- Sequential Data Transfer
- Reset Operation

---

# Key Learning

- Pipelining improves processor throughput.
- Pipeline registers separate stages.
- Hazards reduce performance.
- Every modern processor uses pipelining.

---

# Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub

-