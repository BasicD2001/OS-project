//
// Created by os on 3/3/25.
//

//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;

TCB::~TCB(){
  if(function) delete stack;
}


TCB *TCB::createThread(ThreadFunction f,void* arg,uint64* stack,bool kernel)
{
    return new TCB(f,arg,stack,kernel);
}



void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::firstFunction(){

    Riscv::popSppSpie();
    running->function(running->arg);
    thread_exit();
}
