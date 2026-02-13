# Switch-Level Modeling in Verilog (CMOS Gates)

This repository contains Verilog HDL implementations of basic logic gates and adders using **switch-level modeling**. The designs are implemented using MOS primitives (`pmos`, `nmos`) and power supplies (`supply1`, `supply0`).

---

## 📁 Folder Structure

```
01) Half Adder
02) Full Adder
AND
NAND
NOR
NOT
OR
XNOR
XOR
```

Each folder contains:

* Switch-level Verilog module
* Testbench
* Output Waveform

---

## ⚡ Power Supply Declaration

In switch-level modeling, power rails are defined using `supply1` and `supply0`.

```verilog
supply1 vdd;   // Logic 1 (Power)
supply0 gnd;   // Logic 0 (Ground)
```

* `supply1` → Constant logic HIGH (1)
* `supply0` → Constant logic LOW (0)

These are used as power sources for CMOS circuits.

---

## 🔌 MOS Primitive Syntax

### NMOS

```verilog
nmos (drain, source, gate);
```

### PMOS

```verilog
pmos (drain, source, gate);
```

### CMOS (Bidirectional)

```verilog
cmos (out, in, control, control_bar);
```

---

## 🧩 Terminal Description

For MOS primitives:

| Terminal | Description      |
| -------- | ---------------- |
| Drain    | Output side      |
| Source   | Input/Power side |
| Gate     | Control signal   |

### Important Rule

> Current flows from **source → drain** when the transistor is ON.

---

## ✅ Operating Conditions

### NMOS

* Turns ON when: `gate = 1`
* Turns OFF when: `gate = 0`
* Passes strong `0`, weak `1`

### PMOS

* Turns ON when: `gate = 0`
* Turns OFF when: `gate = 1`
* Passes strong `1`, weak `0`

---

## 🏗️ CMOS Design Rule

In CMOS logic:

* PMOS network → Connected to `vdd`
* NMOS network → Connected to `gnd`
* Output → Between PMOS and NMOS networks

### Example: Inverter (NOT Gate)

```verilog
module not_gate (input a, output y);

    supply1 vdd;
    supply0 gnd;

    pmos (y, vdd, a);
    nmos (y, gnd, a);

endmodule
```

---

## 📐 Port Declaration Rules

Always declare ports clearly:

```verilog
module gate_name (
    input a,
    input b,
    output y
);
```

Use meaningful signal names for clarity.

---

## 🔄 Internal Wires

Intermediate nodes must be declared using `wire`:

```verilog
wire w1, w2;
```

These represent internal connections between transistors.

---

## 🧪 Testbench Guidelines

A basic testbench should:

1. Declare `reg` for inputs
2. Declare `wire` for outputs
3. Apply all input combinations
4. Monitor output

Example:

```verilog
module tb_not;
    reg a;
    wire y;

    not_gate uut (.a(a), .y(y));

    initial begin
        a = 0; #10;
        a = 1; #10;
        $finish;
    end

    initial
        $monitor("a=%b y=%b", a, y);
endmodule
```

---

## ⚠️ Common Mistakes

❌ Not declaring `supply1` and `supply0`
❌ Reversing drain/source unnecessarily
❌ Floating nodes (unconnected wires)
❌ Missing ground connection
❌ Shorting vdd and gnd

---


## 🎯 Purpose of This Repository

This project is intended for:

* Understanding CMOS transistor-level design
* Learning switch-level modeling in Verilog
* Academic laboratory practice
* VLSI fundamentals

---

## 👤 Author

**Karthik Potnuru**
B.Tech | VLSI / Digital Design

---

If you have suggestions or improvements, feel free to contribute.
