# Day 10 — Counters

## Topics Covered
- 4-bit Up Counter
- 4-bit Down Counter
- Sequential Counting
- Overflow
- Underflow

---

## Files
- upcounter.v
- tb_upcounter.v
- downcounter.v
- tb_downcounter.v

---

## Concepts Learned

### Up Counter
Counter increments at every positive clock edge.

Example:
0000 → 0001 → 0010 → 0011

---

### Down Counter
Counter decrements at every positive clock edge.

Example:
0011 → 0010 → 0001 → 0000

---

### Overflow
In 4-bit counter:

1111 + 1 = 0000

---

### Underflow

0000 - 1 = 1111

---

## Key Learning
Counters are sequential circuits built using:
- flip-flops
- registers
- clock signals

Counters are widely used in:
- timers
- processors
- FSMs
- communication systems