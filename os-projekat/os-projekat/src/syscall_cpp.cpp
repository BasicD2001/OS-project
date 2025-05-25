//
// Created by os on 3/5/25.
//

#include "../h/syscall_cpp.hpp"



int Thread::start(){
     if(!body) {
         return thread_create(&myHandle, &wrapper, this);

    }
    else{
         return thread_create(&myHandle,body,this->arg);
    }

}

  Thread::Thread (void (*body)(void*), void* arg){
    this->body = body;
    this->arg = arg;
  }

Thread::~Thread() {
    delete myHandle;
}

 void Thread ::dispatch(){
  return thread_dispatch();
}

Thread::Thread() {
   body= nullptr;
}

void Thread::wrapper(void *arg) {
    Thread* t = (Thread*)arg;
    t->run();
}

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
   return sem_wait(myHandle);
}

int Semaphore::signal() {
   return sem_signal(myHandle);
}

char Console::getc (){
    char k = ::getc();
    return k;
}
void Console::putc (char c){
    ::putc(c);
}

//void *operator new(size_t size) {
//    return mem_alloc(size);
//
//}
//
//void operator delete(void *p) {
//    mem_free(p);
//
//}


