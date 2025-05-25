//
// Created by os on 3/3/25.
//

#ifndef SCHEDULER_H
#define SCHEDULER_H

#include "../h/list.hpp"

class TCB;

class Scheduler
{
private:
    static List<TCB> readyThreadQueue;

public:
    static TCB *get();

    static void put(TCB *ccb);

};



#endif //SCHEDULER_H
