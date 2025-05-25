//
// Created by os on 3/3/25.
//

#include "../h/syscall_c.hpp"
#include "../h/SemaforKernel.hpp"
#include "../test/printing.hpp"
#include "../lib/mem.h"


void* mem_alloc(size_t size){
    size_t volatile num=(size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    uint64 volatile code=0x01;

    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("mv a1, %0" : : "r" (num));

    __asm__ volatile("ecall");

    void *ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

int mem_free(void* addr){

    uint64 volatile code=0x01;
    uint64 volatile add=(uint64)addr;

    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("mv a1, %0" : : "r" (add));

    __asm__ volatile("ecall");

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}


int thread_create(thread_t* handle,void(*start_routine)(void*), void* arg) {

  uint64 volatile code=0x11;
  uint64 volatile  handleC=(uint64)handle;
  uint64 volatile functionC=(uint64)start_routine;
  uint64 volatile  argC=(uint64)arg;
  uint64* volatile stack=new uint64[TCB::STACK_SIZE];


  __asm__ volatile("mv a0, %0" : : "r" (code));
  __asm__ volatile("mv a1, %0" : : "r" (handleC));
  __asm__ volatile("mv a2, %0" : : "r" (functionC));
   __asm__ volatile("mv a3, %0" : : "r" (argC));
   __asm__ volatile("mv a4, %[stackp]" : : [stackp] "r" ((uint64)stack));

  __asm__ volatile("ecall");

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int thread_exit(){
    uint64  volatile code=0x12;

    __asm__ volatile("mv a0, %0" : : "r" (code));

    __asm__ volatile("ecall");

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

void thread_dispatch(){
    uint64 volatile code=0x13;

    __asm__ volatile("mv a0, %0" : : "r" (code));

    __asm__ volatile("ecall");

}

int sem_open (sem_t* handle, unsigned init){
  uint64 volatile code=0x21;
  uint64 volatile handleC=(uint64)handle;
  uint64 volatile initC=(uint64)init;

    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("mv a1, %0" : : "r" (handleC));
    __asm__ volatile("mv a2, %0" : : "r" (initC));

    __asm__ volatile("ecall");

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int sem_close (sem_t handle){
  if(!handle) return -1;

  uint64 volatile code=0x22;
  uint64 volatile handleC=(uint64)handle;

    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("mv a1, %0" : : "r" (handleC));

    __asm__ volatile("ecall");

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int sem_wait (sem_t id){
  if(!id) return -1;

  uint64 volatile code=0x23;
  uint64 volatile handleC=(uint64)id;

  __asm__ volatile("mv a0, %0" : : "r" (code));
  __asm__ volatile("mv a1, %0" : : "r" (handleC));

  __asm__ volatile("ecall");

  int ret;
  __asm__ volatile("mv %0, a0" : "=r" (ret));
  return ret;

}

int sem_signal (sem_t id){
  if(!id) return -1;
  uint64 volatile code=0x24;
  uint64 volatile handleC=(uint64)id;

  __asm__ volatile("mv a0, %0" : : "r" (code));
  __asm__ volatile("mv a1, %0" : : "r" (handleC));

  __asm__ volatile("ecall");

  int ret;
  __asm__ volatile("mv %0, a0" : "=r" (ret));

  return ret;

}


char getc(){

    uint64   code=0x41;
    __asm__ volatile("mv a0, %[instrcode]" : : [instrcode] "r" (code));
    char  ret;
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

void putc(char c){
    uint64  code=0x42;
    __asm__ volatile("mv a1, %[val]" : : [val] "r" ((uint64)c));
    __asm__ volatile("mv a0, %[instrcode]" : : [instrcode] "r" (code));
    __asm__ volatile("ecall");
}




