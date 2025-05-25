#include "../lib/hw.h"

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/tcb.hpp"
#include "../h/userMain.hpp"
#include "../test/printing.hpp"
#include "../test/test1.hpp"
#include "../h/test2.hpp"
#include "../test/sem.hpp"







void userWrapper(void*)
{
  printString("userMain started!\n");
  userMain();
  printString("userMain finished!\n");
}


void main(){



  thread_t mainThread=TCB::createThread(nullptr, nullptr, nullptr,true);
  TCB::running=mainThread;

  Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
  Riscv::ms_sstatus(Riscv::SSTATUS_SIE);




  thread_t userThread=TCB::createThread(&userWrapper, nullptr,
  (uint64*)MemoryAllocator::createAllocator()->alloc(DEFAULT_STACK_SIZE*sizeof(uint64))
);

  while(!userThread->isFinished()){

    thread_dispatch();


  }

  delete userThread;

  return;
}
