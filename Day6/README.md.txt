# Day 06 - Adders & Subtractors (Verilog RTL)

## 🎯 Objective
Design and understand multi-bit arithmetic circuits using Verilog HDL.

---

## 📚 Concepts Covered


### . Ripple Carry Adder
- Built using full adders
- Carry propagates from LSB to MSB
- Simple but slow due to delay

---

### . 4-bit Subtractor
Uses 2’s complement method:

A - B = A + (~B + 1)

---

### 4. Carry Propagation
Carry moves stage by stage causing delay in RCA.

---

### 5. Overflow
Occurs when result exceeds bit width.

Example:
1111 + 0001 = 10000 (overflow)

---

## 🧪 Key Learnings

- Structural design using modules
- Carry propagation concept
- Multi-bit arithmetic operations
- Subtraction using 2’s complement
- Basic overflow understanding

---

## ⚙️ Tools Used
- Verilog HDL
- Vivado 
- GitHub

---

## 👨‍💻 Author
30 Days RTL Coding Challenge