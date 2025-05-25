//
// Created by marko on 20.4.22..
//

#include "../lib/mem.h"
#include "../h/syscall_cpp.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{

    void * res= MemoryAllocator::createAllocator()->alloc(n);
    return res;
}

void *operator new[](size_t n)
{
    void * res= MemoryAllocator::createAllocator()->alloc(n);
    return res;
}

void operator delete(void *p) noexcept
{
    MemoryAllocator::createAllocator()->dealloc(p);
}

void operator delete[](void *p) noexcept
{
    MemoryAllocator::createAllocator()->dealloc(p);
}