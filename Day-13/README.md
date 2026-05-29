# Day 13 - Shift Registers

## Objective

Learned different types of shift registers and how serial and parallel data transfer works in Verilog.

---

# Concepts Covered

- Sequential Circuits
- Shift Registers
- Serial Communication
- Parallel Communication
- Left Shift Operation
- Clock-based Data Transfer
- Register Storage

---

# Shift Registers Implemented

## 1. SISO (Serial In Serial Out)

- Serial input
- Serial output
- One bit shifted per clock

### Files

- siso.v
- tb_siso.v

---

## 2. SIPO (Serial In Parallel Out)

- Serial input
- Parallel output

### Files

- sipo.v
- tb_sipo.v

---

## 3. PISO (Parallel In Serial Out)

- Parallel load
- Serial output

### Files

- piso.v
- tb_piso.v

---

## 4. PIPO (Parallel In Parallel Out)

- Parallel input
- Parallel output

### Files

- pipo.v
- tb_pipo.v

---

# Important Verilog Concepts

## Sequential Logic

```verilog
always @(posedge clk)