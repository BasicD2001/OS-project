//
// Created by os on 3/3/25.
//
//Thread Control Block
#ifndef _TCB_H
#define _TCB_H

#include "../lib/hw.h"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.hpp"


//this is thread control block,information about every created thread
class TCB {
  public:

    ~TCB();

    friend class SemaforKernel;

    using ThreadFunction=void (*)(void*);

    bool isFinished() const{ return finished; }

    void setFinished(bool finish){ finished=finish; }

   static TCB* createThread(ThreadFunction func, void* arg,uint64* stack,bool kernel=false);

   static TCB* running;

   static uint64 const STACK_SIZE = 1024;

    void* operator new(size_t size){ return MemoryAllocator::createAllocator()->alloc(size); }
    void operator delete(void* p){ MemoryAllocator::createAllocator()->dealloc(p); }
    void* operator new[](size_t size){ return MemoryAllocator::createAllocator()->alloc(size); }
    void operator delete[](void* p){ MemoryAllocator::createAllocator()->dealloc(p);  }


 private:


    TCB(ThreadFunction f,void* arguments,uint64* st,bool kernel=false):
            function(f),
            stack(f != nullptr ? st : nullptr),
            context({
                     st != nullptr ? (uint64) &stack[STACK_SIZE] : 0,
                (uint64) &firstFunction,
                    }),
            arg(arguments),
    finished(false), kernelThread(kernel)
   {
      if (f != nullptr) { Scheduler::put(this); }
    }

    friend class Riscv;

    struct Context{
        uint64 sp;
        uint64 ra;
    };

    static void dispatch();

    static void contextSwitch(Context* oldContext, Context* newContext);

    static void firstFunction();



    ThreadFunction function;
    uint64* stack;
    Context context;
    void* arg;
    bool finished;
    bool semDead = false;
    bool kernelThread;



};


#endif //_TCB_H
