#ifndef MEMALLOCATOR_HPP
#define MEMALLOCATOR_HPP

#include "../lib/hw.h"

#define SIZE_MEM = HEAP_START_ADDR - HEAP_END_ADDR

class MemoryAllocator{
    public:

      static MemoryAllocator* createAllocator();

      void* alloc(size_t size);

      int dealloc(void* p);





    private:
      struct FreeBlock{
        size_t size;
        FreeBlock* next;
      };

      static MemoryAllocator* allocator;

      FreeBlock* blockHead;

      MemoryAllocator();

      MemoryAllocator(const MemoryAllocator&) = delete;

      MemoryAllocator& operator=(const MemoryAllocator&) = delete;

      static size_t sizeHeap;

      bool mergeBlocks(FreeBlock* left, FreeBlock* right);




};

#endif
