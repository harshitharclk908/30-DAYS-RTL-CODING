# Day 17 - Barrel Shifter

## Objective

Learned Barrel Shifter design and implemented left and right shift operations using Verilog.

---

# Concepts Covered

- Barrel Shifter
- Logical Left Shift
- Logical Right Shift
- Shift Operators
- Combinational Logic

---

# Barrel Shifter

## Description

A barrel shifter shifts data by a specified number of bit positions in a single operation.

It is commonly used in processors and ALUs.

---

# Files

- barrel_shifter.v
- tb_barrel_shifter.v

---

# Important Verilog Operators

## Left Shift

```verilog
data_in << shift
```

## Right Shift

```verilog
data_in >> shift
```

---

# Simulation Results

Successfully verified:

- Left Shift Operation
- Right Shift Operation
- Different Shift Amounts

---

# Key Learning

- Barrel shifters are combinational circuits.
- They perform multiple-bit shifts in one operation.
- Shift operators are heavily used in ALUs and processor datapaths.

---

# Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub

-