# Day 15 - RAM and ROM

## Objective

Learned the basics of memory design in Verilog by implementing RAM and ROM.

---

# Concepts Covered

- Memory Arrays
- RAM (Random Access Memory)
- ROM (Read Only Memory)
- Read Operation
- Write Operation
- Addressing
- Write Enable Logic

---

# 1. RAM (Random Access Memory)

## Description

RAM allows both read and write operations.

Data can be stored and modified during execution.

### Features

- Read and Write Support
- Addressable Memory Locations
- Controlled by Write Enable Signal

### Files

- ram.v
- tb_ram.v

---

# 2. ROM (Read Only Memory)

## Description

ROM stores predefined data.

Data can only be read and cannot be modified during operation.

### Features

- Read Only
- Fixed Data Contents
- Address Based Access

### Files

- rom.v
- tb_rom.v

---

# Important Verilog Concepts

## Memory Array

```verilog
reg [7:0] mem [0:3];
```

Represents:

- 4 memory locations
- Each location stores 8 bits

---

## Write Operation

```verilog
if(we)
mem[addr] <= data_in;
```

---

## Read Operation

```verilog
data_out <= mem[addr];
```

---

## Address Selection

```verilog
mem[addr]
```

Accesses a specific memory location.

---

# Simulation Results

Successfully verified:

- RAM Write Operation
- RAM Read Operation
- ROM Data Access
- Address-Based Memory Access

Waveforms simulated using Vivado.

---

# Key Learning

- RAM supports both reading and writing.
- ROM stores fixed data.
- Memory arrays are used to create storage elements in Verilog.
- Address lines select memory locations.
- Write Enable controls memory updates.

---

# Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub

-