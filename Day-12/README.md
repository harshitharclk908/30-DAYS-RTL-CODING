# Day 12 - Traffic Light Controller FSM

## Objective
Learned how to design a Traffic Light Controller using Finite State Machine (FSM) concepts in Verilog.

---

## Concepts Covered

- FSM (Finite State Machine)
- Moore FSM
- State transition logic
- Sequential logic
- Combinational output logic
- Reset operation
- Traffic light controller design
- Clock-based state change
- Testbench writing
- Waveform analysis

---

## FSM States

| State | Light ON |
|--------|----------|
| 00     | RED      |
| 01     | GREEN    |
| 10     | YELLOW   |

Sequence:

RED → GREEN → YELLOW → RED

---

## Files

- traffic_light.v
- tb_traffic_light.v

---

## Key Learning

- Understood how FSM changes states using clock edges.
- Learned difference between sequential and combinational blocks.
- Learned why reset is important in digital systems.
- Understood Moore FSM where output depends only on current state.
- Learned how controllers are designed in RTL.

---

## Simulation Result

Successfully simulated traffic light sequence:

- RED ON
- GREEN ON
- YELLOW ON
- Repeat

Waveform verified successfully.




## Important Verilog Syntax Learned

### Sequential Block

```verilog
always @(posedge clk)