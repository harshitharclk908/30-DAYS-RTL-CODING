
# Day 03 - Dataflow Modeling in Verilog

## Objective
Learned Dataflow Modeling in Verilog using continuous assignment statements and operators.

---

## Concepts Covered
- Dataflow Modeling
- assign statement
- Continuous Assignment
- wire datatype
- XOR, AND, OR operators
- Half Adder
- Full Adder

 

## Theory

Dataflow modeling describes how data flows from input to output using expressions and operators.

Example:
```verilog
assign y = a & b;
````

The output updates automatically whenever the input changes.


## Programs Implemented

### 1. Half Adder

Performs addition of 2 single-bit inputs.

#### Equation

```text
sum = a ^ b
carry = a & b
```

### 2. Full Adder

Performs addition of 3 single-bit inputs including carry input.

#### Equation

```text
sum = a ^ b ^ cin
carry = (a & b) | (b & cin) | (a & cin)
```



## Files Included

### Source Files

* half_adder.v
* full_adder.v

### Testbench Files

* tb_half_adder.v
* tb_full_adder.v


## Key Learning

* Learned how to use assign statements.
* Understood continuous assignment in Verilog.
* Learned difference between wire and reg.
* Practiced combinational circuit design using Dataflow Modeling.



## Tools Used

* Vivado / ModelSim
* GitHub



## Author

Harshitha R
30 Days RTL Coding Challenge

