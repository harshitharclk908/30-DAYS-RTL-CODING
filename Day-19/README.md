# Day 19 - Blocking vs Non-Blocking Assignments

## Objective

Learned the difference between blocking and non-blocking assignments in Verilog.

---

# Concepts Covered

- Blocking Assignment (=)
- Non-Blocking Assignment (<=)
- Sequential Logic
- Combinational Logic
- RTL Coding Style

---

# Blocking Assignment

Operator:

```verilog
=
```

Execution occurs line by line.

Example:

```verilog
b = a;
c = b;
```

Both b and c update immediately.

---

# Non-Blocking Assignment

Operator:

```verilog
<=
```

Updates occur simultaneously at the end of the clock cycle.

Example:

```verilog
b <= a;
c <= b;
```

c receives the old value of b.

---

# Files

- blocking_example.v
- nonblocking_example.v
- blocking_nonblocking.v
- tb_blocking_nonblocking.v

---

# Key Rule

Combinational Logic:

```verilog
always @(*)
```

Use:

```verilog
=
```

Sequential Logic:

```verilog
always @(posedge clk)
```

Use:

```verilog
<=
```

---


