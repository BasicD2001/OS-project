//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/SemaforKernel.hpp"
#include "../test/printing.hpp"

void Riscv::popSppSpie()
//VRACANJE PRETHODNIH PRIVILEGIJA KAO I PRETHODNOG STANJA STO SE TICE MASKIRANJA PREKIDA
/*mora da bude bude non inline,ne da se njen kod ugradjuje vec da se ona pozove
jer ako se ugradi na mesto poziva menja se ra*/
{
    uint64 volatile sstatus;
    sstatus = r_sstatus();
    if(TCB::running->kernelThread){
        sstatus = sstatus | SSTATUS_SPP;
    }
    else{
        sstatus = sstatus & ~SSTATUS_SPP;
    }
    w_sstatus(sstatus);
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

/*
KLLJUCNA STVAR:
POSTOJI ODREDJENI PROBLEM:NAPRAVILI SMO THREAD WRAPPER KOJI SE UVEK POZIVA ZA NOVOKREIRANU NIT,A SVE OVO NASTAJE KADA SCHEDULER IZABERE
NOVOSTALU NIT IZ DISPATCHA,A DISPATCH SE POZVAO IZ PREKIDNE RUTINA,STO ZNACI DA MI DIREKTNO IZ PREKIDNE RUTINE ULAZIMO U TRHEAD WRAPPER KOJI
ZAPRAVO POZIVA BODY TJ FUNKCIJU,ALI TO BI ZNACILO DA SE PREKIDNA RUTINA NIKAEDA NIJE NI ZAVRSILA,BILO BI POTREBNO DA NEKAKO IZADJEMO IZ NJE,
OVO JE SPECIFICAN SLUCAJ SAMO KADA SE NIT PRVI PUT BUDI,SVAKI SLEDECI PUT NEMA PROBLEMA JER CE SE IZ DISPATHA IZACI NA DEO ISPOD DISPATHA KOJI SVE REGULISE
TJ SKIDA SA STEKA SVE ITD ITD,TO JE DEO HALNDERA ISPOD DISPATHA


DRUGI PROBLEM JE TO STO IMAMO REGISTAR SIP U KOM SE NALAZE INFORMACIJE O PRETHODNOM STANJU PRIVILEGIJA,KAO I TO DA LI SU DOZVOLJENI PREKIDI ILI NE
PRI ULASKU U PREKIDNU RUTINU PREKO ECALL,OVE STVARI SU PROMENJENE,PA SU NPR BLOKIRANI PREKIDI I PROMENJEN JE VEROVATNO REZIM U PRIVILEGOVAN


STA MOZE DA BUDE RESENJE DA SE U OVOM SPECIFICNOM SLUCAJU IZADJEMO IZ PREKIDNE RUTINE I VRATIMO OVE BITE U SIP?
RESENJE JE DA ZAPRAVO PRE POCETKA BODYJA U WRAPPERU URADIMO SRET KOJI IMPLICITNO NAMESTA BITOVE U SIP NA ONE ODGOVARAJUCE,KAO STO IH MENJA U ECALL
MEDJUTIM AKO BI SAMO URADILI SRET ON BI SE VRATIO NA ADRESU ZAPISANU U SEPC ,A ADRESA U SEPC JE ADRESA KOJA BI NAS VRATILA DIREKTNO U ONU STARU NIT,KOJU SMO PREKINULI
JER JE TO ZAPAMCENO PRI ECALLU KOJI SE IZVRSIO IZ STARE NITI!!!!!(OVO ZA ECALL JE ZA SINHRONE STO JE JEDINO I BITNO)


RESENJE JE DA SE U SEPC STAVI RA,KOJI PREDSTAVLJA ADRESU ISPOD OVE FUNKCIJE TJ NASTAVK IZVRSAVANJA THREAD WRAPPER,I ONDA SE SA SRET
REGULISE OVAJ SIP I ODE NA SEPC KOJI ZAPRAVO NASTAVLJA IZVRSAVANJE WRAPPERA


zbog ovoga je vazno da ova funkcija ne bude inline da bi se namestio ovaj ra
*/


void Riscv::handleSupervisorTrap()
//OVDE ULAZIMO PRI BILO KOM EXCEPTIONU JER SMO TAKO STAVILI U STVEC(NA 2 NAJNIZA BITA 0)
{   //printString("Trap!\n");

    uint64 volatile a1, a2, a3, a4,a0;
    a0=Riscv::r_a0();
    a1 = Riscv::r_a1();
    a2 = Riscv::r_a2();
    a3 = Riscv::r_a3();
    a4 = Riscv::r_a4();
    uint64 scause = r_scause();



    //procitamo scause da vidimo sto smo usli,ispod pitamo sta se desilo
    /*masina je napralvjena da prekid od tajmera tretira kao supervisorski softverski prekid
    a to je prekid od tajmera
    druga stvar je spoljasnji supervisorski prekid,od konzole npr*/
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {

        //OVO JE ZA EXCEPTION KOJI DOLAZI ILI IZ USER MODE ILI IZ SUPERVIZORSKOG,PA SMO STAVILI ILI JER SVAKAKO ULAZIMO TU
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        int code=(int)a0;
        switch (code){
            case (0x01):{ //mem_alloc
                size_t num=(size_t)a1;
                //__asm__ volatile("mv %0,a1":"=r"(num));
                size_t size = num * MEM_BLOCK_SIZE;
                MemoryAllocator* memoryAllocator= MemoryAllocator::createAllocator();
                void* ret = memoryAllocator->alloc(size);
                __asm__ volatile("sd %[a], 10 * 8(s0)" : : [a] "r"(ret));
                //__asm__ volatile("mv a0,%0"::"r"(ret));
                uint64 volatile sepc = Riscv::r_sepc()+4;
                Riscv::w_sepc(sepc);
                break;
            }
            case(0x02): { //mem_free
                void *free=(void*)a1;
                //__asm__ volatile("mv %0, a1":"=r"(free));
                MemoryAllocator* memoryAllocator= MemoryAllocator::createAllocator();
                int ret = memoryAllocator->dealloc(free);
                //__asm__ volatile("mv a0,%0"::"r"(ret));
                __asm__ volatile("sd %[a], 10 * 8(s0)" : : [a] "r"(ret));
                uint64 volatile sepc = Riscv::r_sepc()+4;
                Riscv::w_sepc(sepc);
                break;
            }
          case(0x11):{
            //thread_create
              int  ret;
//              TCB**  handle;
//              __asm__ volatile ("mv %0, a1":"=r"(handle));
//              TCB::ThreadFunction   start;
//              __asm__ volatile("mv %0, a2":"=r"(start));
//              void* arg;
//              __asm__ volatile("mv %0, a3":"=r"(arg));
//              uint64*   stack;
//              //__asm__ volatile("mv %0, a4":"=r"(stack));
//              uint64 volatile a4;
//                __asm__ volatile("mv %[savedValue], a4" :  [savedValue] "=r" (a4));
//              stack=(uint64*) a4;
              TCB** handle=(TCB**)a1;

              TCB::ThreadFunction start=(TCB::ThreadFunction)a2;

              void* arg=(void*)a3;

              uint64* stack=(uint64*)a4;




              *handle=TCB::createThread(start,arg,stack);

              if(!handle){
                  ret=-1;
              }else{
                  ret=0;
              }
              __asm__ volatile("mv a0,%0"::"r"(ret));
              uint64 volatile sepc = Riscv::r_sepc()+4;
              Riscv::w_sepc(sepc);
              break;
          }
          case(0x12):{
            //thread exit
            uint64 volatile sepc = r_sepc() + 4;
            uint64 volatile sstatus = r_sstatus();
            int ret=-1;
            TCB::running->setFinished(true);
            TCB::dispatch();
            __asm__ volatile("mv a0,%0"::"r"(ret));
             w_sstatus(sstatus);
              w_sepc(sepc);
            break;
          }
          case(0x13):{
            //thread dispatch
              uint64 volatile sepc = r_sepc() + 4;
              uint64 volatile sstatus = r_sstatus();
              TCB::dispatch();
              w_sstatus(sstatus);
              w_sepc(sepc);
              break;
          }
          case(0x21):{
            //sem open
             uint64 volatile sepc = r_sepc() + 4;

            int ret;
            SemaforKernel** handle=(SemaforKernel**)a1;
            unsigned init=(unsigned)a2;

            *handle=SemaforKernel::open(init);

              if(!*handle){
                  ret=-1;
              }else{
                  ret=0;
              }
              __asm__ volatile("mv a0,%0"::"r"(ret));

               w_sepc(sepc);
              break;
          }
          case(0x22):{
            //sem close
             uint64 volatile sepc = r_sepc() + 4;

             //int ret;
             sem_t handle=(sem_t)a1;

             handle->~SemaforKernel();

             //__asm__ volatile("mv a0,%0"::"r"(ret));


              w_sepc(sepc);
              break;
          }
          case(0x23):{
            //sem wait
             uint64 volatile sepc = r_sepc() + 4;
             uint64 volatile sstatus = r_sstatus();

            // int ret;
             sem_t handle=(sem_t)a1;

            handle->wait();

             //__asm__ volatile("mv a0,%0"::"r"(ret));

             w_sepc(sepc);
              w_sstatus(sstatus);
              break;
          }
          case(0x24):{
            //sem signal
             uint64 volatile sepc = r_sepc() + 4;

              //int ret;
             sem_t handle=(sem_t)a1;

             handle->signal();

             //__asm__ volatile("mv a0,%0"::"r"(ret));

              w_sepc(sepc);
              break;
          }
           case(0x41):{
                uint64 volatile sepc = r_sepc()+4;
                char  a=__getc();
                //__asm__ volatile("mv a0, %0" : : "r" (a));
                 __asm__ volatile("sd %[a], 10 * 8(s0)" : : [a] "r"(a));
                w_sepc(sepc);
                break;
            }
            case(0x42):{
                uint64  c = r_a1();
                uint64 volatile sepc = r_sepc()+4;
                __putc(c);
                w_sepc(sepc);
                break;
            }

        }

    } else if(scause == 0x8000000000000001UL)//BNT = 1, exception:no
    {
        /*
         PCB::timeSliceCounter++;
         if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
         {
             uint64 volatile sepc = r_sepc();
             uint64 volatile sstatus = r_sstatus();
             PCB::timeSliceCounter = 0;
             PCB::dispatch();
             sstatus = previousPrivilege(sstatus);
             w_sstatus(sstatus);
             w_sepc(sepc);
         }*/
        mc_sip(SIP_SSIP);

    }else if(scause == 0x8000000000000009UL){

        console_handler();
    }else{
        uint64 sepc = r_sepc();
        uint64 stval = r_stval();

        printString("scause: 0x");
        printInt(scause, 16);
        printString("\n");

        printString("sepc: 0x");
        printInt(sepc, 16);
        printString("\n");

        printString("stval: 0x");
        printInt(stval, 16);
        printString("\n");
    }

    // Očisti SSIP bit za svaki prekid koji je ušao (uključujući ecall)
    mc_sip(SIP_SSIP);
}



