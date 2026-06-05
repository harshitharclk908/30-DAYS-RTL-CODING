# Day 20 - Generate Block & Parameterized Adder

## Objective

Learned how to create reusable Verilog modules using parameters and generate blocks.

---

# Concepts Covered

- Parameter
- Generate Block
- Genvar
- Reusable RTL Design
- Configurable Hardware

---

# Parameterized Adder

## Description

A single adder design that can be used for different bit widths.

Example:

```verilog
adder #(4)
adder #(8)
adder #(16)
```

No need to write separate modules.

---

# Generate Block

## Description

Generate blocks automatically create repeated hardware structures.

### Syntax

```verilog
generate

for(i=0;i<4;i=i+1)
begin

...

end

endgenerate
```

---

# Files

- adder.v
- generate_adder.v
- tb_adder.v

---

# Important Verilog Concepts

## Parameter

```verilog
parameter N = 4;
```

## Generate Variable

```verilog
genvar i;
```

## Generate Loop

```verilog
for(i=0;i<4;i=i+1)
```

---

# Simulation Results

Successfully verified:

- Parameterized Adder
- Generate Loop
- Reusable RTL Design

---

# Key Learning

- Parameters make designs scalable.
- Generate blocks reduce code duplication.
- Widely used in processors, FIFOs, and memory systems.

---

# Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub

--