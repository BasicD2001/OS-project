//
// Created by os on 3/3/25.
//

#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP
#include "../lib/hw.h"
#include "tcb.hpp"





typedef TCB* thread_t;
class SemaforKernel;
typedef SemaforKernel* sem_t;

void* mem_alloc(size_t size);

int mem_free(void*);

int thread_create(thread_t* handle,void(*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();


int sem_open (
 sem_t* handle,
 unsigned init
);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

char getc ();

void putc (char);




#endif //SYSCALL_C_HPP
