# Day 22 - SPI Protocol Basics

## Objective

Learned SPI communication and implemented a basic SPI Master transmitter.

---

# Concepts Covered

- SPI Protocol
- MOSI
- MISO
- SCLK
- CS (Chip Select)
- Shift Register

---

# SPI

SPI stands for:

Serial Peripheral Interface

Used for communication between:

- Microcontroller and Sensor
- FPGA and ADC
- FPGA and EEPROM

---

# SPI Signals

## MOSI

Master Out Slave In

## MISO

Master In Slave Out

## SCLK

Serial Clock

## CS

Chip Select

---

# Files

- spi_master.v
- tb_spi_master.v

---

# Important Verilog Concepts

## Shift Register

```verilog
shift_reg <= shift_reg << 1;
```

## Serial Transmission

```verilog
mosi <= shift_reg[7];
```

## Clock Generation

```verilog
sclk <= ~sclk;
```

---

# Simulation Results

Successfully verified:

- SPI Clock Generation
- MOSI Data Transfer
- Chip Select Operation
- Shift Register Transmission

---

# Key Learning

- SPI is synchronous communication.
- SPI uses a clock signal.
- Data is transferred serially.
- SPI is faster than UART.

---

# Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub

---
