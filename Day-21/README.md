# Day 21 - UART Basics

## Objective

Learned UART serial communication and implemented a basic UART transmitter.

---

# Concepts Covered

- UART
- Serial Communication
- UART Frame
- Start Bit
- Stop Bit
- Shift Register

---

# UART

UART stands for:

Universal Asynchronous Receiver Transmitter

It is used for serial communication between devices.

Examples:

- Microcontroller ↔ PC
- FPGA ↔ Sensor
- FPGA ↔ FPGA

---

# UART Frame

```text
Start Bit | Data | Stop Bit

     0    | 8-bit|   1
```

---

# Files

- uart_tx.v
- tb_uart_tx.v

---

# Important Verilog Concepts

## Shift Register

```verilog
shift_reg <= shift_reg >> 1;
```

## Serial Transmission

```verilog
tx <= shift_reg[0];
```

## Bit Counter

```verilog
count <= count - 1;
```

---

# Simulation Results

Successfully verified:

- UART Start Bit
- UART Data Transmission
- UART Stop Bit
- Shift Register Operation

---

# Key Learning

- UART sends one bit at a time.
- Communication is asynchronous.
- Shift registers are used for serialization.
- UART is widely used in embedded and FPGA systems.

---

# Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub

