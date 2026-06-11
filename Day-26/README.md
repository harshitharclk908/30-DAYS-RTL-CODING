# Instruction Memory

## Objective

Learned how Instruction Memory stores and provides instructions to the processor during the Instruction Fetch stage.

---

## Concepts Covered

- Instruction Memory
- Instruction Fetch (IF)
- Memory Addressing
- RISC-V Datapath

---

## Description

Instruction Memory stores the program instructions.

The Program Counter (PC) provides the address, and the corresponding instruction is fetched from memory.

---

## Verilog Concept

```verilog
assign instruction = mem[address[5:2]];
```

The address is divided by 4 because each RISC-V instruction is 32 bits (4 bytes).

---

## Memory Initialization

Example:

```verilog
mem[0] = 32'h00000013;
mem[1] = 32'h00100093;
mem[2] = 32'h00200113;
```

---

## Address Mapping

| Address | Memory Location |
|----------|----------|
| 0  | mem[0] |
| 4  | mem[1] |
| 8  | mem[2] |
| 12 | mem[3] |

---

## Files

- instruction_memory.v
- tb_instruction_memory.v

---

## Simulation Results

Successfully verified:

✓ Instruction Fetch

✓ Memory Address Decoding

✓ Instruction Output

---

## Key Learning

- Instruction Memory stores processor instructions.
- PC provides instruction addresses.
- Instructions are fetched during the IF stage.
- Address increments by 4 for every instruction.

---

## Applications

- RISC-V Processor
- CPU Design
- Microcontrollers
- FPGA-based Processors

---

## Tools Used

- Vivado 2018.2
- Verilog HDL
- GitHub

---

