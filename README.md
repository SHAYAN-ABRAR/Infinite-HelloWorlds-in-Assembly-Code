# Infinite Hello World in Assembly 🚀

This project contains a simple x86 assembly language program that **non-stop prints "HELLO WORLD"** using a **signed conditional jump (JL)** instruction.

## 💡 Purpose

This program is a learning demo to show how signed loops and conditional jumps work in Assembly. By initializing a signed value (like `CX = -1`) and using `JL` (Jump if Less), the program loops infinitely and keeps printing a message.

## 🧠 How It Works

- `CX` register is initialized with `-1` (a signed negative number).
- Inside the loop:
  - The program prints `HELLO WORLD` using `INT 21H` with AH = `09H`.
  - It uses `DEC CX` and `JL` to jump back.
- Since `CX` is always negative, the condition is always true — resulting in an infinite loop.


