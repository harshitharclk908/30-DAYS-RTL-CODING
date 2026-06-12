# Day 27 - Verification Basics

## Objective

Learned the basics of verification and testbench development in Verilog.

---

# Concepts Covered

- Testbench
- Verification
- $display
- $monitor
- $dumpfile
- $dumpvars

---

# Files

- counter.v
- tb_counter.v

---

# Verification Commands

## $display

Prints a message once.

Example:

```verilog
$display("Simulation Started");
```

---

## $monitor

Continuously monitors signal changes.

Example:

```verilog
$monitor("count=%d",count);
```

---

## $dumpfile

Creates waveform file.

Example:

```verilog
$dumpfile("counter.vcd");
```

---

## $dumpvars

Stores signal values for waveform viewing.

Example:

```verilog
$dumpvars(0,tb_counter);
```

---

# Simulation Results

Successfully verified:

✓ Counter Operation

✓ Reset Functionality

✓ Waveform Generation

✓ Signal Monitoring

---

# Key Learning

- Verification is used to check RTL correctness.
- Testbenches generate stimulus.
- Waveforms help debug designs.
- $monitor and $display are essential debugging tools.

---

# Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub
