//
// Created by os on 3/12/25.
//

#include "../h/SemaforKernel.hpp"

SemaforKernel::SemaforKernel(int value){
  val=value;

}

SemaforKernel* SemaforKernel::open(int value){
  return new SemaforKernel(value);
}

SemaforKernel::~SemaforKernel(){

  while(waitingThreads.peekLast()){
    TCB* go=waitingThreads.removeFirst();

  go->semDead=true;
  }
}

int SemaforKernel::wait(){
  val--;
  if(val<0){
    waitingThreads.addLast(TCB::running);

     TCB* old=TCB::running;
     TCB* newT=Scheduler::get();
     TCB::running=newT;

     TCB::contextSwitch(&old->context,&newT->context);
  }

  if(TCB::running->semDead) return -1;
  else return 0;
}

int SemaforKernel::signal(){
  val++;
  if(val<=0){
    if(!waitingThreads.peekFirst()) return -1;

    TCB* away=waitingThreads.removeFirst();
    if(away->isFinished()) return -1;
    Scheduler::put(away);

  }
  return 0;
}

//int SemaforKernel::close(){
//  TCB* curr=waitingThreads.peekFirst();
//  while(curr){
//    curr->semDead=true;
//    curr=waitingThreads.getNext(curr);
//  }
//  return 1;
//}





