# Day 16 - FIFO Basics

## Objective

Learned the basics of FIFO (First In First Out) memory and implemented a simple FIFO using Verilog.

---

# Concepts Covered

- FIFO Architecture
- Write Pointer
- Read Pointer
- Memory Array
- Write Operation
- Read Operation
- Sequential Logic

---

# FIFO (First In First Out)

## Description

FIFO stores data in the order it is received.

The first data written into FIFO is the first data read out.

Example:

AA → 55 → 33

Read Order:

AA → 55 → 33

---

# FIFO Architecture

Components:

- Memory Array
- Write Pointer
- Read Pointer

### Memory

```verilog
reg [7:0] mem [0:3];
```

Stores FIFO data.

### Write Pointer

```verilog
wr_ptr
```

Points to next write location.

### Read Pointer

```verilog
rd_ptr
```

Points to next read location.

---

# Files

- fifo.v
- tb_fifo.v

---

# Important Verilog Concepts

## Write Operation

```verilog
mem[wr_ptr] <= data_in;
```

## Read Operation

```verilog
data_out <= mem[rd_ptr];
```

## Pointer Increment

```verilog
wr_ptr <= wr_ptr + 1;
rd_ptr <= rd_ptr + 1;
```

---

# Simulation Results

Successfully verified:

- FIFO Write Operation
- FIFO Read Operation
- Pointer Increment
- Data Storage and Retrieval

---

# Key Learning

- FIFO follows First In First Out principle.
- Data is written using write pointer.
- Data is read using read pointer.
- FIFO is commonly used in UART, SPI, buffers, and processor designs.

---

# Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub

-