#include "../h/memallocator.hpp"
#include "../test/printing.hpp"

MemoryAllocator* MemoryAllocator::allocator = nullptr;
size_t MemoryAllocator::sizeHeap = (size_t)((char*)(HEAP_END_ADDR) - (char*)(HEAP_START_ADDR));
MemoryAllocator::MemoryAllocator(){
  //size_t sizeOfHeap=(size_t)((char*)(HEAP_START_ADDR)-(char*)(HEAP_END_ADDR));
  blockHead=(FreeBlock*)((uint8*)HEAP_START_ADDR);
  blockHead->next=nullptr;
  blockHead->size=sizeHeap-sizeof(FreeBlock);
}

MemoryAllocator* MemoryAllocator::createAllocator() {
    if(!allocator){


//        printString("START_ADDR: ");
//        printInt((uint64)HEAP_START_ADDR);
//        printString("\nEND_ADDR: ");
//        printInt((uint64)HEAP_END_ADDR);
//        printString("\nDIFF: ");
//        printInt((uint64)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR));
//        printString("\n");

        allocator = (MemoryAllocator*) HEAP_START_ADDR;
        allocator->blockHead = (FreeBlock*) ((char*) HEAP_START_ADDR + sizeof(MemoryAllocator));
        allocator->blockHead->next= nullptr;
        allocator->blockHead->size = (char*) HEAP_END_ADDR - (char*) HEAP_START_ADDR - sizeof(MemoryAllocator) - sizeof(blockHead);

    }
    return allocator;
}

void* MemoryAllocator::alloc(size_t size) {
    if(size>(size_t)((char*)(HEAP_END_ADDR) - (char*)(HEAP_START_ADDR))) return nullptr;
    //if(size>sizeHeap) return nullptr;
    if(size <= 0) return nullptr;

    FreeBlock* curr=blockHead;
    FreeBlock* prev=nullptr;

    while(curr && curr->size < size){
      prev=curr;
      curr=curr->next;
    }
    if(!curr) return nullptr;


    //postoji ovaj curr
    size_t rest=curr->size-size;
    if(rest>=sizeof(FreeBlock) + MEM_BLOCK_SIZE){
      //dopuniti blok
      curr->size=size;
      FreeBlock* newBlock= (FreeBlock*)((char*)curr +  size + sizeof(FreeBlock));
      newBlock->size=rest-sizeof(FreeBlock);
      if(prev) prev->next=newBlock;
      else blockHead=newBlock;
      newBlock->next = curr->next;
    } else {
      if(prev) prev->next=curr->next;
      else blockHead=curr->next;
    }
    curr->next = nullptr;
    return (char*)curr+sizeof(FreeBlock);


}

int MemoryAllocator::dealloc(void* p) {
      if(p==nullptr) return -1;
      FreeBlock* block=(FreeBlock*)((char*)p - sizeof(FreeBlock));
      if(!block || block->next) return -1;

      FreeBlock* curr=blockHead;
      FreeBlock* prev=nullptr;

      //find block before us
      while(curr && (char*)curr < (char*)block){
          prev=curr;
          curr=curr->next;
      }

      block->next=curr;
      if(prev) prev->next=block;
      else blockHead=block;

      mergeBlocks(block, curr);
      mergeBlocks(prev, block);



      return 0;
}


bool MemoryAllocator::mergeBlocks(FreeBlock* left, FreeBlock* right) {
    if (left && right && (char*)left + sizeof(FreeBlock) + left->size == (char*)right) {
        left->size += sizeof(FreeBlock) + right->size;
        left->next = right->next;
        return true;
    }
    return false;
}