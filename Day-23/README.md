# Day 23 - I2C Basics

## Objective

Learned I2C communication and implemented a basic I2C Master transmitter.

---

# Concepts Covered

- I2C Protocol
- SDA
- SCL
- Start Condition
- Stop Condition
- ACK/NACK
- Shift Register

---

# I2C

I2C stands for:

Inter-Integrated Circuit

Uses only two wires:

- SDA
- SCL

---

# I2C Signals

## SDA

Serial Data Line

## SCL

Serial Clock Line

---

# Files

- i2c_master.v
- tb_i2c_master.v

---

# Important Verilog Concepts

## Shift Register

```verilog
shift_reg <= shift_reg << 1;
```

## Serial Data Transfer

```verilog
sda <= shift_reg[7];
```

## Clock Generation

```verilog
scl <= ~scl;
```

---

# Simulation Results

Successfully verified:

- I2C Start Condition
- SDA Data Transfer
- SCL Clock Generation

---

# Key Learning

- I2C uses only two wires.
- Multiple devices can share the same bus.
- Communication is synchronous.
- ACK/NACK is used for confirmation.

---

# Difference Between UART, SPI and I2C

| Feature | UART | SPI | I2C |
|----------|----------|----------|----------|
| Clock | No | Yes | Yes |
| Wires | 2 | 4 | 2 |
| Speed | Medium | Fast | Medium |
| Multi-device | No | Limited | Yes |

---

# Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub

  