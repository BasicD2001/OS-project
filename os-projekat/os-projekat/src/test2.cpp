#include "../h/test2.hpp"

//void funkcijica(int a,int b,int c){
//  if(a>b){
//    printString("a>b\n");
//  }
//  if(c) printString("c>0\n");
//}


static volatile bool finishedA = false;

static uint64 fibonacci(uint64 n) {
  if (n == 0 || n == 1) { return n; }
  if (n % 10 == 0) { thread_dispatch(); }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

static void workerBodyA(void* arg) {
  for (uint64 i = 0; i < 10; i++) {
    printString("A: i="); printInt(i); printString("\n");
    for (uint64 j = 0; j < 10000; j++) {
      for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
      thread_dispatch();
    }
  }
  printString("A finished!\n");
  finishedA = true;
}



void test2(){
//  printString("Usli smo u test\n");
//  funkcijica(1,2,3);
//  thread_dispatch();
//  funkcijica(2,1,3);
//  printString("Zavrsen test\n");
//
//
//  thread_t threads[4];
//  thread_create(&threads[0], workerBodyA, nullptr);
//  printString("ThreadA created\n");

  thread_t threads[1];
  thread_create(&threads[0], workerBodyA, nullptr);
//  thread_t newOne=TCB::createThread(&workerBodyA, nullptr,
//new uint64[TCB::STACK_SIZE]
//);
  printString("ThreadA created\n");

  while (!finishedA) {
    thread_dispatch();

  }


}