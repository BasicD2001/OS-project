# 🖥️ Operating System Kernel - C / C++ / Assembly

This is a custom-designed **operating system kernel** developed as part of the **Operating Systems course**. The project was built from scratch using **C**, **C++**, and **Assembly**, targeting low-level OS concepts and mechanisms typically found in real-world systems.

## 🧠 Project Overview

The goal of this project was to design and implement a basic yet functional kernel that supports:

- Thread creation, destruction and context switching
- Cooperative thread scheduling with a custom scheduler
- Semaphore-based synchronization
- Interrupt handling (including timer and software interrupts)
- Console I/O operations and communication
- System calls and user-kernel mode separation

All core functionalities have been implemented **manually**, without relying on external libraries or operating system services.

## 🛠️ Technologies Used

- **C** and **C++** – for kernel logic and data structures  
- **RISC-V Assembly** – for context switching, interrupt management, and low-level system routines  
- **RISCV Emulator / QEMU** – for development and testing

## 🔧 Features

- ✅ Custom preemptive **scheduler**
- ✅ Thread lifecycle management (`create`, `start`, `dispatch`, `exit`)
- ✅ **Semaphores** for mutual exclusion and synchronization
- ✅ Full **interrupt handling** with timer-based context switching
- ✅ Low-level **system calls** interface (`ecall`) between user and kernel space
- ✅ **Console communication** via standard output/input (with internal buffering)
- ✅ Support for both **kernel threads** and **user threads**
- ✅ Memory management integration via custom `new`/`delete`
