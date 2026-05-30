# Day 14 - Week 2 Revision + Missing Topics

## Objective

Revised sequential circuit concepts and implemented the missing topics from Week 2:
- MOD-4 Counter
- Mealy FSM

---

# Concepts Covered

## Revision Topics

- Flip-Flops (D, JK, SR, T)
- Registers
- Shift Registers
- Up Counter
- Down Counter
- Moore FSM
- Traffic Light Controller

---

# New Topics Implemented

## 1. MOD-4 Counter

### Description

A counter that counts:

0 → 1 → 2 → 3 → 0

and repeats continuously.

### Concepts Learned

- Modulo Counting
- Counter Rollover
- Reset Logic
- Sequential Circuits

### Files

- mod4_counter.v
- tb_mod4_counter.v

---

## 2. Mealy FSM

### Description

A finite state machine whose output depends on:

- Present State
- Current Input

### Concepts Learned

- State Transition
- Output Logic
- Mealy FSM Design
- State Machine Modeling

### Files

- mealy_fsm.v
- tb_mealy_fsm.v

---

# Moore FSM vs Mealy FSM

| Moore FSM | Mealy FSM |
|------------|------------|
| Output depends only on state | Output depends on state and input |
| Simpler output logic | Faster response |
| Output changes after state transition | Output can change immediately with input |

---

# Important Verilog Concepts Used

## Sequential Logic

```verilog
always @(posedge clk)
```

## Reset Logic

```verilog
if(rst)
```

## State Machine

```verilog
case(state)
```

## Counter Increment

```verilog
count <= count + 1;
```

---

# Simulation Results

Successfully verified:

- MOD-4 counting sequence
- Counter reset operation
- Mealy FSM state transitions
- FSM output behavior

Waveforms simulated using Vivado.

---

# Key Learning

- Counters are sequential circuits driven by clock signals.
- MOD-N counters reset automatically after reaching a predefined count.
- FSMs are used to control system behavior through states.
- Mealy FSM outputs depend on both the current state and input.
- Understanding FSMs is important for processor control units and digital system design.

---

# Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub


