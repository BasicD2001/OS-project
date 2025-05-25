//
// Created by os on 3/12/25.
//

#ifndef SEMAFORKERNEL_H
#define SEMAFORKERNEL_H

#include "../h/list.hpp"

#include "../h/tcb.hpp"

#include "../h/scheduler.hpp"

class TCB;

class SemaforKernel {

public:

  friend class TCB;

  virtual ~SemaforKernel();

  int wait();

  int signal();

  static SemaforKernel* open(int value);

  int close();

    void* operator new(size_t size){ return MemoryAllocator::createAllocator()->alloc(size); }
    void operator delete(void* p){ MemoryAllocator::createAllocator()->dealloc(p); }
    void* operator new[](size_t size){ return MemoryAllocator::createAllocator()->alloc(size); }
    void operator delete[](void* p){ MemoryAllocator::createAllocator()->dealloc(p);  }


private:
    List<TCB> waitingThreads;

    SemaforKernel(int value=1);

    int val;

};

#endif //SEMAFORKERNEL_H
