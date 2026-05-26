# Day 08 - Flip-Flops & Sequential Logic

## 🎯 Objective
Learn sequential circuit design using Verilog HDL.

---

## 📚 Concepts Covered
- Sequential logic
- Clock signal
- D Flip-Flop
- Reset operation
- T Flip-Flop
- Edge-triggered circuits

---

## 🧪 Programs Implemented

### 1. D Flip-Flop
Stores input data on positive edge of clock.

### 2. D Flip-Flop with Reset
Adds reset functionality to initialize output.

### 3. T Flip-Flop
Toggles output when T = 1.

---

## 🧠 Theory

### Sequential Logic
In sequential circuits:
- output depends on present input
- output also depends on previous state

Unlike combinational circuits,
memory is involved.

---

### Clock Signal
Clock synchronizes operations in sequential circuits.

Most flip-flops work on:
```text id="d8rm1"
posedge clk