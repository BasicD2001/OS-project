
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	4d813103          	ld	sp,1240(sp) # 8000b4d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	268060ef          	jal	ra,80006284 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_,@function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:

    sd sp, 0*8(a0)
    80001000:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1*8(a0)
    80001004:	00153423          	sd	ra,8(a0)

    ld sp, 0*8(a1)
    80001008:	0005b103          	ld	sp,0(a1)
    ld ra, 1*8(a1)
    8000100c:	0085b083          	ld	ra,8(a1)

    80001010:	00008067          	ret
	...

0000000080001020 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001020:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001024:	00013023          	sd	zero,0(sp)
    80001028:	00113423          	sd	ra,8(sp)
    8000102c:	00213823          	sd	sp,16(sp)
    80001030:	00313c23          	sd	gp,24(sp)
    80001034:	02413023          	sd	tp,32(sp)
    80001038:	02513423          	sd	t0,40(sp)
    8000103c:	02613823          	sd	t1,48(sp)
    80001040:	02713c23          	sd	t2,56(sp)
    80001044:	04813023          	sd	s0,64(sp)
    80001048:	04913423          	sd	s1,72(sp)
    8000104c:	04a13823          	sd	a0,80(sp)
    80001050:	04b13c23          	sd	a1,88(sp)
    80001054:	06c13023          	sd	a2,96(sp)
    80001058:	06d13423          	sd	a3,104(sp)
    8000105c:	06e13823          	sd	a4,112(sp)
    80001060:	06f13c23          	sd	a5,120(sp)
    80001064:	09013023          	sd	a6,128(sp)
    80001068:	09113423          	sd	a7,136(sp)
    8000106c:	09213823          	sd	s2,144(sp)
    80001070:	09313c23          	sd	s3,152(sp)
    80001074:	0b413023          	sd	s4,160(sp)
    80001078:	0b513423          	sd	s5,168(sp)
    8000107c:	0b613823          	sd	s6,176(sp)
    80001080:	0b713c23          	sd	s7,184(sp)
    80001084:	0d813023          	sd	s8,192(sp)
    80001088:	0d913423          	sd	s9,200(sp)
    8000108c:	0da13823          	sd	s10,208(sp)
    80001090:	0db13c23          	sd	s11,216(sp)
    80001094:	0fc13023          	sd	t3,224(sp)
    80001098:	0fd13423          	sd	t4,232(sp)
    8000109c:	0fe13823          	sd	t5,240(sp)
    800010a0:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    800010a4:	591000ef          	jal	ra,80001e34 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800010a8:	00013003          	ld	zero,0(sp)
    800010ac:	00813083          	ld	ra,8(sp)
    800010b0:	01013103          	ld	sp,16(sp)
    800010b4:	01813183          	ld	gp,24(sp)
    800010b8:	02013203          	ld	tp,32(sp)
    800010bc:	02813283          	ld	t0,40(sp)
    800010c0:	03013303          	ld	t1,48(sp)
    800010c4:	03813383          	ld	t2,56(sp)
    800010c8:	04013403          	ld	s0,64(sp)
    800010cc:	04813483          	ld	s1,72(sp)
    800010d0:	05013503          	ld	a0,80(sp)
    800010d4:	05813583          	ld	a1,88(sp)
    800010d8:	06013603          	ld	a2,96(sp)
    800010dc:	06813683          	ld	a3,104(sp)
    800010e0:	07013703          	ld	a4,112(sp)
    800010e4:	07813783          	ld	a5,120(sp)
    800010e8:	08013803          	ld	a6,128(sp)
    800010ec:	08813883          	ld	a7,136(sp)
    800010f0:	09013903          	ld	s2,144(sp)
    800010f4:	09813983          	ld	s3,152(sp)
    800010f8:	0a013a03          	ld	s4,160(sp)
    800010fc:	0a813a83          	ld	s5,168(sp)
    80001100:	0b013b03          	ld	s6,176(sp)
    80001104:	0b813b83          	ld	s7,184(sp)
    80001108:	0c013c03          	ld	s8,192(sp)
    8000110c:	0c813c83          	ld	s9,200(sp)
    80001110:	0d013d03          	ld	s10,208(sp)
    80001114:	0d813d83          	ld	s11,216(sp)
    80001118:	0e013e03          	ld	t3,224(sp)
    8000111c:	0e813e83          	ld	t4,232(sp)
    80001120:	0f013f03          	ld	t5,240(sp)
    80001124:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001128:	10010113          	addi	sp,sp,256


    sret
    8000112c:	10200073          	sret

0000000080001130 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001130:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001134:	00b29a63          	bne	t0,a1,80001148 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001138:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000113c:	fe029ae3          	bnez	t0,80001130 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001140:	00000513          	li	a0,0
    jr ra                  # Return.
    80001144:	00008067          	ret

0000000080001148 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001148:	00100513          	li	a0,1
    8000114c:	00008067          	ret

0000000080001150 <_Z9mem_allocm>:
#include "../h/SemaforKernel.hpp"
#include "../test/printing.hpp"
#include "../lib/mem.h"


void* mem_alloc(size_t size){
    80001150:	fe010113          	addi	sp,sp,-32
    80001154:	00813c23          	sd	s0,24(sp)
    80001158:	02010413          	addi	s0,sp,32
    size_t volatile num=(size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000115c:	03f50513          	addi	a0,a0,63
    80001160:	00655513          	srli	a0,a0,0x6
    80001164:	fea43423          	sd	a0,-24(s0)
    uint64 volatile code=0x01;
    80001168:	00100793          	li	a5,1
    8000116c:	fef43023          	sd	a5,-32(s0)

    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001170:	fe043783          	ld	a5,-32(s0)
    80001174:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" : : "r" (num));
    80001178:	fe843783          	ld	a5,-24(s0)
    8000117c:	00078593          	mv	a1,a5

    __asm__ volatile("ecall");
    80001180:	00000073          	ecall

    void *ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001184:	00050513          	mv	a0,a0
    return ret;
}
    80001188:	01813403          	ld	s0,24(sp)
    8000118c:	02010113          	addi	sp,sp,32
    80001190:	00008067          	ret

0000000080001194 <_Z8mem_freePv>:

int mem_free(void* addr){
    80001194:	fe010113          	addi	sp,sp,-32
    80001198:	00813c23          	sd	s0,24(sp)
    8000119c:	02010413          	addi	s0,sp,32

    uint64 volatile code=0x01;
    800011a0:	00100793          	li	a5,1
    800011a4:	fef43423          	sd	a5,-24(s0)
    uint64 volatile add=(uint64)addr;
    800011a8:	fea43023          	sd	a0,-32(s0)

    __asm__ volatile("mv a0, %0" : : "r" (code));
    800011ac:	fe843783          	ld	a5,-24(s0)
    800011b0:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" : : "r" (add));
    800011b4:	fe043783          	ld	a5,-32(s0)
    800011b8:	00078593          	mv	a1,a5

    __asm__ volatile("ecall");
    800011bc:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800011c0:	00050513          	mv	a0,a0
    return ret;
}
    800011c4:	0005051b          	sext.w	a0,a0
    800011c8:	01813403          	ld	s0,24(sp)
    800011cc:	02010113          	addi	sp,sp,32
    800011d0:	00008067          	ret

00000000800011d4 <_Z13thread_createPP3TCBPFvPvES2_>:


int thread_create(thread_t* handle,void(*start_routine)(void*), void* arg) {
    800011d4:	fc010113          	addi	sp,sp,-64
    800011d8:	02113c23          	sd	ra,56(sp)
    800011dc:	02813823          	sd	s0,48(sp)
    800011e0:	04010413          	addi	s0,sp,64

  uint64 volatile code=0x11;
    800011e4:	01100793          	li	a5,17
    800011e8:	fef43423          	sd	a5,-24(s0)
  uint64 volatile  handleC=(uint64)handle;
    800011ec:	fea43023          	sd	a0,-32(s0)
  uint64 volatile functionC=(uint64)start_routine;
    800011f0:	fcb43c23          	sd	a1,-40(s0)
  uint64 volatile  argC=(uint64)arg;
    800011f4:	fcc43823          	sd	a2,-48(s0)
  uint64* volatile stack=new uint64[TCB::STACK_SIZE];
    800011f8:	00002537          	lui	a0,0x2
    800011fc:	00000097          	auipc	ra,0x0
    80001200:	514080e7          	jalr	1300(ra) # 80001710 <_Znam>
    80001204:	fca43423          	sd	a0,-56(s0)


  __asm__ volatile("mv a0, %0" : : "r" (code));
    80001208:	fe843783          	ld	a5,-24(s0)
    8000120c:	00078513          	mv	a0,a5
  __asm__ volatile("mv a1, %0" : : "r" (handleC));
    80001210:	fe043783          	ld	a5,-32(s0)
    80001214:	00078593          	mv	a1,a5
  __asm__ volatile("mv a2, %0" : : "r" (functionC));
    80001218:	fd843783          	ld	a5,-40(s0)
    8000121c:	00078613          	mv	a2,a5
   __asm__ volatile("mv a3, %0" : : "r" (argC));
    80001220:	fd043783          	ld	a5,-48(s0)
    80001224:	00078693          	mv	a3,a5
   __asm__ volatile("mv a4, %[stackp]" : : [stackp] "r" ((uint64)stack));
    80001228:	fc843783          	ld	a5,-56(s0)
    8000122c:	00078713          	mv	a4,a5

  __asm__ volatile("ecall");
    80001230:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001234:	00050513          	mv	a0,a0
    return ret;

}
    80001238:	0005051b          	sext.w	a0,a0
    8000123c:	03813083          	ld	ra,56(sp)
    80001240:	03013403          	ld	s0,48(sp)
    80001244:	04010113          	addi	sp,sp,64
    80001248:	00008067          	ret

000000008000124c <_Z11thread_exitv>:

int thread_exit(){
    8000124c:	fe010113          	addi	sp,sp,-32
    80001250:	00813c23          	sd	s0,24(sp)
    80001254:	02010413          	addi	s0,sp,32
    uint64  volatile code=0x12;
    80001258:	01200793          	li	a5,18
    8000125c:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001260:	fe843783          	ld	a5,-24(s0)
    80001264:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001268:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000126c:	00050513          	mv	a0,a0
    return ret;

}
    80001270:	0005051b          	sext.w	a0,a0
    80001274:	01813403          	ld	s0,24(sp)
    80001278:	02010113          	addi	sp,sp,32
    8000127c:	00008067          	ret

0000000080001280 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001280:	fe010113          	addi	sp,sp,-32
    80001284:	00813c23          	sd	s0,24(sp)
    80001288:	02010413          	addi	s0,sp,32
    uint64 volatile code=0x13;
    8000128c:	01300793          	li	a5,19
    80001290:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001294:	fe843783          	ld	a5,-24(s0)
    80001298:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000129c:	00000073          	ecall

}
    800012a0:	01813403          	ld	s0,24(sp)
    800012a4:	02010113          	addi	sp,sp,32
    800012a8:	00008067          	ret

00000000800012ac <_Z8sem_openPP13SemaforKernelj>:

int sem_open (sem_t* handle, unsigned init){
    800012ac:	fd010113          	addi	sp,sp,-48
    800012b0:	02813423          	sd	s0,40(sp)
    800012b4:	03010413          	addi	s0,sp,48
  uint64 volatile code=0x21;
    800012b8:	02100793          	li	a5,33
    800012bc:	fef43423          	sd	a5,-24(s0)
  uint64 volatile handleC=(uint64)handle;
    800012c0:	fea43023          	sd	a0,-32(s0)
  uint64 volatile initC=(uint64)init;
    800012c4:	02059593          	slli	a1,a1,0x20
    800012c8:	0205d593          	srli	a1,a1,0x20
    800012cc:	fcb43c23          	sd	a1,-40(s0)

    __asm__ volatile("mv a0, %0" : : "r" (code));
    800012d0:	fe843783          	ld	a5,-24(s0)
    800012d4:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" : : "r" (handleC));
    800012d8:	fe043783          	ld	a5,-32(s0)
    800012dc:	00078593          	mv	a1,a5
    __asm__ volatile("mv a2, %0" : : "r" (initC));
    800012e0:	fd843783          	ld	a5,-40(s0)
    800012e4:	00078613          	mv	a2,a5

    __asm__ volatile("ecall");
    800012e8:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800012ec:	00050513          	mv	a0,a0
    return ret;

}
    800012f0:	0005051b          	sext.w	a0,a0
    800012f4:	02813403          	ld	s0,40(sp)
    800012f8:	03010113          	addi	sp,sp,48
    800012fc:	00008067          	ret

0000000080001300 <_Z9sem_closeP13SemaforKernel>:

int sem_close (sem_t handle){
  if(!handle) return -1;
    80001300:	04050263          	beqz	a0,80001344 <_Z9sem_closeP13SemaforKernel+0x44>
int sem_close (sem_t handle){
    80001304:	fe010113          	addi	sp,sp,-32
    80001308:	00813c23          	sd	s0,24(sp)
    8000130c:	02010413          	addi	s0,sp,32

  uint64 volatile code=0x22;
    80001310:	02200793          	li	a5,34
    80001314:	fef43423          	sd	a5,-24(s0)
  uint64 volatile handleC=(uint64)handle;
    80001318:	fea43023          	sd	a0,-32(s0)

    __asm__ volatile("mv a0, %0" : : "r" (code));
    8000131c:	fe843783          	ld	a5,-24(s0)
    80001320:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" : : "r" (handleC));
    80001324:	fe043783          	ld	a5,-32(s0)
    80001328:	00078593          	mv	a1,a5

    __asm__ volatile("ecall");
    8000132c:	00000073          	ecall

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001330:	00050513          	mv	a0,a0
    80001334:	0005051b          	sext.w	a0,a0
    return ret;

}
    80001338:	01813403          	ld	s0,24(sp)
    8000133c:	02010113          	addi	sp,sp,32
    80001340:	00008067          	ret
  if(!handle) return -1;
    80001344:	fff00513          	li	a0,-1
}
    80001348:	00008067          	ret

000000008000134c <_Z8sem_waitP13SemaforKernel>:

int sem_wait (sem_t id){
  if(!id) return -1;
    8000134c:	04050263          	beqz	a0,80001390 <_Z8sem_waitP13SemaforKernel+0x44>
int sem_wait (sem_t id){
    80001350:	fe010113          	addi	sp,sp,-32
    80001354:	00813c23          	sd	s0,24(sp)
    80001358:	02010413          	addi	s0,sp,32

  uint64 volatile code=0x23;
    8000135c:	02300793          	li	a5,35
    80001360:	fef43423          	sd	a5,-24(s0)
  uint64 volatile handleC=(uint64)id;
    80001364:	fea43023          	sd	a0,-32(s0)

  __asm__ volatile("mv a0, %0" : : "r" (code));
    80001368:	fe843783          	ld	a5,-24(s0)
    8000136c:	00078513          	mv	a0,a5
  __asm__ volatile("mv a1, %0" : : "r" (handleC));
    80001370:	fe043783          	ld	a5,-32(s0)
    80001374:	00078593          	mv	a1,a5

  __asm__ volatile("ecall");
    80001378:	00000073          	ecall

  int ret;
  __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000137c:	00050513          	mv	a0,a0
    80001380:	0005051b          	sext.w	a0,a0
  return ret;

}
    80001384:	01813403          	ld	s0,24(sp)
    80001388:	02010113          	addi	sp,sp,32
    8000138c:	00008067          	ret
  if(!id) return -1;
    80001390:	fff00513          	li	a0,-1
}
    80001394:	00008067          	ret

0000000080001398 <_Z10sem_signalP13SemaforKernel>:

int sem_signal (sem_t id){
  if(!id) return -1;
    80001398:	04050263          	beqz	a0,800013dc <_Z10sem_signalP13SemaforKernel+0x44>
int sem_signal (sem_t id){
    8000139c:	fe010113          	addi	sp,sp,-32
    800013a0:	00813c23          	sd	s0,24(sp)
    800013a4:	02010413          	addi	s0,sp,32
  uint64 volatile code=0x24;
    800013a8:	02400793          	li	a5,36
    800013ac:	fef43423          	sd	a5,-24(s0)
  uint64 volatile handleC=(uint64)id;
    800013b0:	fea43023          	sd	a0,-32(s0)

  __asm__ volatile("mv a0, %0" : : "r" (code));
    800013b4:	fe843783          	ld	a5,-24(s0)
    800013b8:	00078513          	mv	a0,a5
  __asm__ volatile("mv a1, %0" : : "r" (handleC));
    800013bc:	fe043783          	ld	a5,-32(s0)
    800013c0:	00078593          	mv	a1,a5

  __asm__ volatile("ecall");
    800013c4:	00000073          	ecall

  int ret;
  __asm__ volatile("mv %0, a0" : "=r" (ret));
    800013c8:	00050513          	mv	a0,a0
    800013cc:	0005051b          	sext.w	a0,a0

  return ret;

}
    800013d0:	01813403          	ld	s0,24(sp)
    800013d4:	02010113          	addi	sp,sp,32
    800013d8:	00008067          	ret
  if(!id) return -1;
    800013dc:	fff00513          	li	a0,-1
}
    800013e0:	00008067          	ret

00000000800013e4 <_Z4getcv>:


char getc(){
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16

    uint64   code=0x41;
    __asm__ volatile("mv a0, %[instrcode]" : : [instrcode] "r" (code));
    800013f0:	04100793          	li	a5,65
    800013f4:	00078513          	mv	a0,a5
    char  ret;
    __asm__ volatile("ecall");
    800013f8:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800013fc:	00050513          	mv	a0,a0
    return ret;

}
    80001400:	0ff57513          	andi	a0,a0,255
    80001404:	00813403          	ld	s0,8(sp)
    80001408:	01010113          	addi	sp,sp,16
    8000140c:	00008067          	ret

0000000080001410 <_Z4putcc>:

void putc(char c){
    80001410:	ff010113          	addi	sp,sp,-16
    80001414:	00813423          	sd	s0,8(sp)
    80001418:	01010413          	addi	s0,sp,16
    uint64  code=0x42;
    __asm__ volatile("mv a1, %[val]" : : [val] "r" ((uint64)c));
    8000141c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[instrcode]" : : [instrcode] "r" (code));
    80001420:	04200793          	li	a5,66
    80001424:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001428:	00000073          	ecall
}
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_ZL11workerBodyAPv>:
  if (n == 0 || n == 1) { return n; }
  if (n % 10 == 0) { thread_dispatch(); }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

static void workerBodyA(void* arg) {
    80001438:	fe010113          	addi	sp,sp,-32
    8000143c:	00113c23          	sd	ra,24(sp)
    80001440:	00813823          	sd	s0,16(sp)
    80001444:	00913423          	sd	s1,8(sp)
    80001448:	01213023          	sd	s2,0(sp)
    8000144c:	02010413          	addi	s0,sp,32
  for (uint64 i = 0; i < 10; i++) {
    80001450:	00000913          	li	s2,0
    80001454:	0380006f          	j	8000148c <_ZL11workerBodyAPv+0x54>
    printString("A: i="); printInt(i); printString("\n");
    for (uint64 j = 0; j < 10000; j++) {
      for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
      thread_dispatch();
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	e28080e7          	jalr	-472(ra) # 80001280 <_Z15thread_dispatchv>
    for (uint64 j = 0; j < 10000; j++) {
    80001460:	00148493          	addi	s1,s1,1
    80001464:	000027b7          	lui	a5,0x2
    80001468:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000146c:	0097ee63          	bltu	a5,s1,80001488 <_ZL11workerBodyAPv+0x50>
      for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001470:	00000713          	li	a4,0
    80001474:	000077b7          	lui	a5,0x7
    80001478:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000147c:	fce7eee3          	bltu	a5,a4,80001458 <_ZL11workerBodyAPv+0x20>
    80001480:	00170713          	addi	a4,a4,1
    80001484:	ff1ff06f          	j	80001474 <_ZL11workerBodyAPv+0x3c>
  for (uint64 i = 0; i < 10; i++) {
    80001488:	00190913          	addi	s2,s2,1
    8000148c:	00900793          	li	a5,9
    80001490:	0527e063          	bltu	a5,s2,800014d0 <_ZL11workerBodyAPv+0x98>
    printString("A: i="); printInt(i); printString("\n");
    80001494:	00008517          	auipc	a0,0x8
    80001498:	b8c50513          	addi	a0,a0,-1140 # 80009020 <CONSOLE_STATUS+0x10>
    8000149c:	00003097          	auipc	ra,0x3
    800014a0:	3b0080e7          	jalr	944(ra) # 8000484c <_Z11printStringPKc>
    800014a4:	00000613          	li	a2,0
    800014a8:	00a00593          	li	a1,10
    800014ac:	0009051b          	sext.w	a0,s2
    800014b0:	00003097          	auipc	ra,0x3
    800014b4:	54c080e7          	jalr	1356(ra) # 800049fc <_Z8printIntiii>
    800014b8:	00008517          	auipc	a0,0x8
    800014bc:	d0850513          	addi	a0,a0,-760 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800014c0:	00003097          	auipc	ra,0x3
    800014c4:	38c080e7          	jalr	908(ra) # 8000484c <_Z11printStringPKc>
    for (uint64 j = 0; j < 10000; j++) {
    800014c8:	00000493          	li	s1,0
    800014cc:	f99ff06f          	j	80001464 <_ZL11workerBodyAPv+0x2c>
    }
  }
  printString("A finished!\n");
    800014d0:	00008517          	auipc	a0,0x8
    800014d4:	b5850513          	addi	a0,a0,-1192 # 80009028 <CONSOLE_STATUS+0x18>
    800014d8:	00003097          	auipc	ra,0x3
    800014dc:	374080e7          	jalr	884(ra) # 8000484c <_Z11printStringPKc>
  finishedA = true;
    800014e0:	00100793          	li	a5,1
    800014e4:	0000a717          	auipc	a4,0xa
    800014e8:	04f70e23          	sb	a5,92(a4) # 8000b540 <_ZL9finishedA>
}
    800014ec:	01813083          	ld	ra,24(sp)
    800014f0:	01013403          	ld	s0,16(sp)
    800014f4:	00813483          	ld	s1,8(sp)
    800014f8:	00013903          	ld	s2,0(sp)
    800014fc:	02010113          	addi	sp,sp,32
    80001500:	00008067          	ret

0000000080001504 <_Z5test2v>:



void test2(){
    80001504:	fe010113          	addi	sp,sp,-32
    80001508:	00113c23          	sd	ra,24(sp)
    8000150c:	00813823          	sd	s0,16(sp)
    80001510:	02010413          	addi	s0,sp,32
//  thread_t threads[4];
//  thread_create(&threads[0], workerBodyA, nullptr);
//  printString("ThreadA created\n");

  thread_t threads[1];
  thread_create(&threads[0], workerBodyA, nullptr);
    80001514:	00000613          	li	a2,0
    80001518:	00000597          	auipc	a1,0x0
    8000151c:	f2058593          	addi	a1,a1,-224 # 80001438 <_ZL11workerBodyAPv>
    80001520:	fe840513          	addi	a0,s0,-24
    80001524:	00000097          	auipc	ra,0x0
    80001528:	cb0080e7          	jalr	-848(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
//  thread_t newOne=TCB::createThread(&workerBodyA, nullptr,
//new uint64[TCB::STACK_SIZE]
//);
  printString("ThreadA created\n");
    8000152c:	00008517          	auipc	a0,0x8
    80001530:	b0c50513          	addi	a0,a0,-1268 # 80009038 <CONSOLE_STATUS+0x28>
    80001534:	00003097          	auipc	ra,0x3
    80001538:	318080e7          	jalr	792(ra) # 8000484c <_Z11printStringPKc>

  while (!finishedA) {
    8000153c:	0000a797          	auipc	a5,0xa
    80001540:	0047c783          	lbu	a5,4(a5) # 8000b540 <_ZL9finishedA>
    80001544:	00079863          	bnez	a5,80001554 <_Z5test2v+0x50>
    thread_dispatch();
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	d38080e7          	jalr	-712(ra) # 80001280 <_Z15thread_dispatchv>
    80001550:	fedff06f          	j	8000153c <_Z5test2v+0x38>

  }


    80001554:	01813083          	ld	ra,24(sp)
    80001558:	01013403          	ld	s0,16(sp)
    8000155c:	02010113          	addi	sp,sp,32
    80001560:	00008067          	ret

0000000080001564 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_API_test.hpp"
//#include "../test/System_Mode_test.hpp"

#endif

void userMain() {
    80001564:	fe010113          	addi	sp,sp,-32
    80001568:	00113c23          	sd	ra,24(sp)
    8000156c:	00813823          	sd	s0,16(sp)
    80001570:	00913423          	sd	s1,8(sp)
    80001574:	01213023          	sd	s2,0(sp)
    80001578:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000157c:	00008517          	auipc	a0,0x8
    80001580:	ad450513          	addi	a0,a0,-1324 # 80009050 <CONSOLE_STATUS+0x40>
    80001584:	00003097          	auipc	ra,0x3
    80001588:	2c8080e7          	jalr	712(ra) # 8000484c <_Z11printStringPKc>
    char step=getc();
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	e58080e7          	jalr	-424(ra) # 800013e4 <_Z4getcv>
    80001594:	00050913          	mv	s2,a0
    int test = step- '0';
    80001598:	fd05049b          	addiw	s1,a0,-48


   getc(); // Enter posle broja
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	e48080e7          	jalr	-440(ra) # 800013e4 <_Z4getcv>

   printInt(test);
    800015a4:	00000613          	li	a2,0
    800015a8:	00a00593          	li	a1,10
    800015ac:	00048513          	mv	a0,s1
    800015b0:	00003097          	auipc	ra,0x3
    800015b4:	44c080e7          	jalr	1100(ra) # 800049fc <_Z8printIntiii>
   printString("\n");
    800015b8:	00008517          	auipc	a0,0x8
    800015bc:	c0850513          	addi	a0,a0,-1016 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800015c0:	00003097          	auipc	ra,0x3
    800015c4:	28c080e7          	jalr	652(ra) # 8000484c <_Z11printStringPKc>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800015c8:	fcb9091b          	addiw	s2,s2,-53
    800015cc:	00100793          	li	a5,1
    800015d0:	0327f463          	bgeu	a5,s2,800015f8 <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800015d4:	00700793          	li	a5,7
    800015d8:	0e97e263          	bltu	a5,s1,800016bc <_Z8userMainv+0x158>
    800015dc:	00249493          	slli	s1,s1,0x2
    800015e0:	00008717          	auipc	a4,0x8
    800015e4:	c8870713          	addi	a4,a4,-888 # 80009268 <CONSOLE_STATUS+0x258>
    800015e8:	00e484b3          	add	s1,s1,a4
    800015ec:	0004a783          	lw	a5,0(s1)
    800015f0:	00e787b3          	add	a5,a5,a4
    800015f4:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800015f8:	00008517          	auipc	a0,0x8
    800015fc:	a7850513          	addi	a0,a0,-1416 # 80009070 <CONSOLE_STATUS+0x60>
    80001600:	00003097          	auipc	ra,0x3
    80001604:	24c080e7          	jalr	588(ra) # 8000484c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80001608:	01813083          	ld	ra,24(sp)
    8000160c:	01013403          	ld	s0,16(sp)
    80001610:	00813483          	ld	s1,8(sp)
    80001614:	00013903          	ld	s2,0(sp)
    80001618:	02010113          	addi	sp,sp,32
    8000161c:	00008067          	ret
            Threads_C_API_test();
    80001620:	00003097          	auipc	ra,0x3
    80001624:	8a4080e7          	jalr	-1884(ra) # 80003ec4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80001628:	00008517          	auipc	a0,0x8
    8000162c:	a7850513          	addi	a0,a0,-1416 # 800090a0 <CONSOLE_STATUS+0x90>
    80001630:	00003097          	auipc	ra,0x3
    80001634:	21c080e7          	jalr	540(ra) # 8000484c <_Z11printStringPKc>
            break;
    80001638:	fd1ff06f          	j	80001608 <_Z8userMainv+0xa4>
            Threads_CPP_API_test();
    8000163c:	00002097          	auipc	ra,0x2
    80001640:	eec080e7          	jalr	-276(ra) # 80003528 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80001644:	00008517          	auipc	a0,0x8
    80001648:	a9c50513          	addi	a0,a0,-1380 # 800090e0 <CONSOLE_STATUS+0xd0>
    8000164c:	00003097          	auipc	ra,0x3
    80001650:	200080e7          	jalr	512(ra) # 8000484c <_Z11printStringPKc>
            break;
    80001654:	fb5ff06f          	j	80001608 <_Z8userMainv+0xa4>
            producerConsumer_C_API();
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	714080e7          	jalr	1812(ra) # 80002d6c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80001660:	00008517          	auipc	a0,0x8
    80001664:	ac050513          	addi	a0,a0,-1344 # 80009120 <CONSOLE_STATUS+0x110>
    80001668:	00003097          	auipc	ra,0x3
    8000166c:	1e4080e7          	jalr	484(ra) # 8000484c <_Z11printStringPKc>
            break;
    80001670:	f99ff06f          	j	80001608 <_Z8userMainv+0xa4>
            producerConsumer_CPP_Sync_API();
    80001674:	00003097          	auipc	ra,0x3
    80001678:	b94080e7          	jalr	-1132(ra) # 80004208 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000167c:	00008517          	auipc	a0,0x8
    80001680:	af450513          	addi	a0,a0,-1292 # 80009170 <CONSOLE_STATUS+0x160>
    80001684:	00003097          	auipc	ra,0x3
    80001688:	1c8080e7          	jalr	456(ra) # 8000484c <_Z11printStringPKc>
            break;
    8000168c:	f7dff06f          	j	80001608 <_Z8userMainv+0xa4>
            System_Mode_test();
    80001690:	00004097          	auipc	ra,0x4
    80001694:	760080e7          	jalr	1888(ra) # 80005df0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80001698:	00008517          	auipc	a0,0x8
    8000169c:	b3050513          	addi	a0,a0,-1232 # 800091c8 <CONSOLE_STATUS+0x1b8>
    800016a0:	00003097          	auipc	ra,0x3
    800016a4:	1ac080e7          	jalr	428(ra) # 8000484c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800016a8:	00008517          	auipc	a0,0x8
    800016ac:	b4050513          	addi	a0,a0,-1216 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800016b0:	00003097          	auipc	ra,0x3
    800016b4:	19c080e7          	jalr	412(ra) # 8000484c <_Z11printStringPKc>
            break;
    800016b8:	f51ff06f          	j	80001608 <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    800016bc:	00008517          	auipc	a0,0x8
    800016c0:	b8450513          	addi	a0,a0,-1148 # 80009240 <CONSOLE_STATUS+0x230>
    800016c4:	00003097          	auipc	ra,0x3
    800016c8:	188080e7          	jalr	392(ra) # 8000484c <_Z11printStringPKc>
    800016cc:	f3dff06f          	j	80001608 <_Z8userMainv+0xa4>

00000000800016d0 <_Znwm>:
#include "../h/syscall_cpp.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	02010413          	addi	s0,sp,32
    800016e4:	00050493          	mv	s1,a0

    void * res= MemoryAllocator::createAllocator()->alloc(n);
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	100080e7          	jalr	256(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    800016f0:	00048593          	mv	a1,s1
    800016f4:	00001097          	auipc	ra,0x1
    800016f8:	170080e7          	jalr	368(ra) # 80002864 <_ZN15MemoryAllocator5allocEm>
    return res;
}
    800016fc:	01813083          	ld	ra,24(sp)
    80001700:	01013403          	ld	s0,16(sp)
    80001704:	00813483          	ld	s1,8(sp)
    80001708:	02010113          	addi	sp,sp,32
    8000170c:	00008067          	ret

0000000080001710 <_Znam>:

void *operator new[](size_t n)
{
    80001710:	fe010113          	addi	sp,sp,-32
    80001714:	00113c23          	sd	ra,24(sp)
    80001718:	00813823          	sd	s0,16(sp)
    8000171c:	00913423          	sd	s1,8(sp)
    80001720:	02010413          	addi	s0,sp,32
    80001724:	00050493          	mv	s1,a0
    void * res= MemoryAllocator::createAllocator()->alloc(n);
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	0c0080e7          	jalr	192(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    80001730:	00048593          	mv	a1,s1
    80001734:	00001097          	auipc	ra,0x1
    80001738:	130080e7          	jalr	304(ra) # 80002864 <_ZN15MemoryAllocator5allocEm>
    return res;
}
    8000173c:	01813083          	ld	ra,24(sp)
    80001740:	01013403          	ld	s0,16(sp)
    80001744:	00813483          	ld	s1,8(sp)
    80001748:	02010113          	addi	sp,sp,32
    8000174c:	00008067          	ret

0000000080001750 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001750:	fe010113          	addi	sp,sp,-32
    80001754:	00113c23          	sd	ra,24(sp)
    80001758:	00813823          	sd	s0,16(sp)
    8000175c:	00913423          	sd	s1,8(sp)
    80001760:	02010413          	addi	s0,sp,32
    80001764:	00050493          	mv	s1,a0
    MemoryAllocator::createAllocator()->dealloc(p);
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	080080e7          	jalr	128(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    80001770:	00048593          	mv	a1,s1
    80001774:	00001097          	auipc	ra,0x1
    80001778:	228080e7          	jalr	552(ra) # 8000299c <_ZN15MemoryAllocator7deallocEPv>
}
    8000177c:	01813083          	ld	ra,24(sp)
    80001780:	01013403          	ld	s0,16(sp)
    80001784:	00813483          	ld	s1,8(sp)
    80001788:	02010113          	addi	sp,sp,32
    8000178c:	00008067          	ret

0000000080001790 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001790:	fe010113          	addi	sp,sp,-32
    80001794:	00113c23          	sd	ra,24(sp)
    80001798:	00813823          	sd	s0,16(sp)
    8000179c:	00913423          	sd	s1,8(sp)
    800017a0:	02010413          	addi	s0,sp,32
    800017a4:	00050493          	mv	s1,a0
    MemoryAllocator::createAllocator()->dealloc(p);
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	040080e7          	jalr	64(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    800017b0:	00048593          	mv	a1,s1
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	1e8080e7          	jalr	488(ra) # 8000299c <_ZN15MemoryAllocator7deallocEPv>
    800017bc:	01813083          	ld	ra,24(sp)
    800017c0:	01013403          	ld	s0,16(sp)
    800017c4:	00813483          	ld	s1,8(sp)
    800017c8:	02010113          	addi	sp,sp,32
    800017cc:	00008067          	ret

00000000800017d0 <_Z11userWrapperPv>:




void userWrapper(void*)
{
    800017d0:	ff010113          	addi	sp,sp,-16
    800017d4:	00113423          	sd	ra,8(sp)
    800017d8:	00813023          	sd	s0,0(sp)
    800017dc:	01010413          	addi	s0,sp,16
  printString("userMain started!\n");
    800017e0:	00008517          	auipc	a0,0x8
    800017e4:	aa850513          	addi	a0,a0,-1368 # 80009288 <CONSOLE_STATUS+0x278>
    800017e8:	00003097          	auipc	ra,0x3
    800017ec:	064080e7          	jalr	100(ra) # 8000484c <_Z11printStringPKc>
  userMain();
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	d74080e7          	jalr	-652(ra) # 80001564 <_Z8userMainv>
  printString("userMain finished!\n");
    800017f8:	00008517          	auipc	a0,0x8
    800017fc:	aa850513          	addi	a0,a0,-1368 # 800092a0 <CONSOLE_STATUS+0x290>
    80001800:	00003097          	auipc	ra,0x3
    80001804:	04c080e7          	jalr	76(ra) # 8000484c <_Z11printStringPKc>
}
    80001808:	00813083          	ld	ra,8(sp)
    8000180c:	00013403          	ld	s0,0(sp)
    80001810:	01010113          	addi	sp,sp,16
    80001814:	00008067          	ret

0000000080001818 <main>:


void main(){
    80001818:	fe010113          	addi	sp,sp,-32
    8000181c:	00113c23          	sd	ra,24(sp)
    80001820:	00813823          	sd	s0,16(sp)
    80001824:	00913423          	sd	s1,8(sp)
    80001828:	02010413          	addi	s0,sp,32



  thread_t mainThread=TCB::createThread(nullptr, nullptr, nullptr,true);
    8000182c:	00100693          	li	a3,1
    80001830:	00000613          	li	a2,0
    80001834:	00000593          	li	a1,0
    80001838:	00000513          	li	a0,0
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	128080e7          	jalr	296(ra) # 80001964 <_ZN3TCB12createThreadEPFvPvES0_Pmb>
  TCB::running=mainThread;
    80001844:	0000a797          	auipc	a5,0xa
    80001848:	c9c7b783          	ld	a5,-868(a5) # 8000b4e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000184c:	00a7b023          	sd	a0,0(a5)

  Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001850:	0000a797          	auipc	a5,0xa
    80001854:	c807b783          	ld	a5,-896(a5) # 8000b4d0 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001858:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000185c:	00200793          	li	a5,2
    80001860:	1007a073          	csrs	sstatus,a5




  thread_t userThread=TCB::createThread(&userWrapper, nullptr,
  (uint64*)MemoryAllocator::createAllocator()->alloc(DEFAULT_STACK_SIZE*sizeof(uint64))
    80001864:	00001097          	auipc	ra,0x1
    80001868:	f84080e7          	jalr	-124(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    8000186c:	000085b7          	lui	a1,0x8
    80001870:	00001097          	auipc	ra,0x1
    80001874:	ff4080e7          	jalr	-12(ra) # 80002864 <_ZN15MemoryAllocator5allocEm>
    80001878:	00050613          	mv	a2,a0
  thread_t userThread=TCB::createThread(&userWrapper, nullptr,
    8000187c:	00000693          	li	a3,0
    80001880:	00000593          	li	a1,0
    80001884:	00000517          	auipc	a0,0x0
    80001888:	f4c50513          	addi	a0,a0,-180 # 800017d0 <_Z11userWrapperPv>
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	0d8080e7          	jalr	216(ra) # 80001964 <_ZN3TCB12createThreadEPFvPvES0_Pmb>
    80001894:	00050493          	mv	s1,a0

    friend class SemaforKernel;

    using ThreadFunction=void (*)(void*);

    bool isFinished() const{ return finished; }
    80001898:	0284c783          	lbu	a5,40(s1)
);

  while(!userThread->isFinished()){
    8000189c:	00079863          	bnez	a5,800018ac <main+0x94>

    thread_dispatch();
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	9e0080e7          	jalr	-1568(ra) # 80001280 <_Z15thread_dispatchv>
  while(!userThread->isFinished()){
    800018a8:	ff1ff06f          	j	80001898 <main+0x80>


  }

  delete userThread;
    800018ac:	02048263          	beqz	s1,800018d0 <main+0xb8>
    800018b0:	00048513          	mv	a0,s1
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	074080e7          	jalr	116(ra) # 80001928 <_ZN3TCBD1Ev>
   static TCB* running;

   static uint64 const STACK_SIZE = 1024;

    void* operator new(size_t size){ return MemoryAllocator::createAllocator()->alloc(size); }
    void operator delete(void* p){ MemoryAllocator::createAllocator()->dealloc(p); }
    800018bc:	00001097          	auipc	ra,0x1
    800018c0:	f2c080e7          	jalr	-212(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    800018c4:	00048593          	mv	a1,s1
    800018c8:	00001097          	auipc	ra,0x1
    800018cc:	0d4080e7          	jalr	212(ra) # 8000299c <_ZN15MemoryAllocator7deallocEPv>

  return;
}
    800018d0:	01813083          	ld	ra,24(sp)
    800018d4:	01013403          	ld	s0,16(sp)
    800018d8:	00813483          	ld	s1,8(sp)
    800018dc:	02010113          	addi	sp,sp,32
    800018e0:	00008067          	ret

00000000800018e4 <_ZN3TCB13firstFunctionEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::firstFunction(){
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00113423          	sd	ra,8(sp)
    800018ec:	00813023          	sd	s0,0(sp)
    800018f0:	01010413          	addi	s0,sp,16

    Riscv::popSppSpie();
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	4d8080e7          	jalr	1240(ra) # 80001dcc <_ZN5Riscv10popSppSpieEv>
    running->function(running->arg);
    800018fc:	0000a797          	auipc	a5,0xa
    80001900:	c4c7b783          	ld	a5,-948(a5) # 8000b548 <_ZN3TCB7runningE>
    80001904:	0007b703          	ld	a4,0(a5)
    80001908:	0207b503          	ld	a0,32(a5)
    8000190c:	000700e7          	jalr	a4
    thread_exit();
    80001910:	00000097          	auipc	ra,0x0
    80001914:	93c080e7          	jalr	-1732(ra) # 8000124c <_Z11thread_exitv>
}
    80001918:	00813083          	ld	ra,8(sp)
    8000191c:	00013403          	ld	s0,0(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <_ZN3TCBD1Ev>:
  if(function) delete stack;
    80001928:	00053783          	ld	a5,0(a0)
    8000192c:	02078a63          	beqz	a5,80001960 <_ZN3TCBD1Ev+0x38>
    80001930:	00853503          	ld	a0,8(a0)
    80001934:	02050663          	beqz	a0,80001960 <_ZN3TCBD1Ev+0x38>
TCB::~TCB(){
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00113423          	sd	ra,8(sp)
    80001940:	00813023          	sd	s0,0(sp)
    80001944:	01010413          	addi	s0,sp,16
  if(function) delete stack;
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	e08080e7          	jalr	-504(ra) # 80001750 <_ZdlPv>
}
    80001950:	00813083          	ld	ra,8(sp)
    80001954:	00013403          	ld	s0,0(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret
    80001960:	00008067          	ret

0000000080001964 <_ZN3TCB12createThreadEPFvPvES0_Pmb>:
{
    80001964:	fc010113          	addi	sp,sp,-64
    80001968:	02113c23          	sd	ra,56(sp)
    8000196c:	02813823          	sd	s0,48(sp)
    80001970:	02913423          	sd	s1,40(sp)
    80001974:	03213023          	sd	s2,32(sp)
    80001978:	01313c23          	sd	s3,24(sp)
    8000197c:	01413823          	sd	s4,16(sp)
    80001980:	01513423          	sd	s5,8(sp)
    80001984:	04010413          	addi	s0,sp,64
    80001988:	00050913          	mv	s2,a0
    8000198c:	00058a93          	mv	s5,a1
    80001990:	00060993          	mv	s3,a2
    80001994:	00068a13          	mv	s4,a3
    void* operator new(size_t size){ return MemoryAllocator::createAllocator()->alloc(size); }
    80001998:	00001097          	auipc	ra,0x1
    8000199c:	e50080e7          	jalr	-432(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    800019a0:	03000593          	li	a1,48
    800019a4:	00001097          	auipc	ra,0x1
    800019a8:	ec0080e7          	jalr	-320(ra) # 80002864 <_ZN15MemoryAllocator5allocEm>
    800019ac:	00050493          	mv	s1,a0
            context({
                     st != nullptr ? (uint64) &stack[STACK_SIZE] : 0,
                (uint64) &firstFunction,
                    }),
            arg(arguments),
    finished(false), kernelThread(kernel)
    800019b0:	01253023          	sd	s2,0(a0)
            stack(f != nullptr ? st : nullptr),
    800019b4:	04090663          	beqz	s2,80001a00 <_ZN3TCB12createThreadEPFvPvES0_Pmb+0x9c>
    800019b8:	00098793          	mv	a5,s3
    finished(false), kernelThread(kernel)
    800019bc:	00f4b423          	sd	a5,8(s1)
                     st != nullptr ? (uint64) &stack[STACK_SIZE] : 0,
    800019c0:	04098463          	beqz	s3,80001a08 <_ZN3TCB12createThreadEPFvPvES0_Pmb+0xa4>
    800019c4:	00002737          	lui	a4,0x2
    800019c8:	00e787b3          	add	a5,a5,a4
    finished(false), kernelThread(kernel)
    800019cc:	00f4b823          	sd	a5,16(s1)
    800019d0:	00000797          	auipc	a5,0x0
    800019d4:	f1478793          	addi	a5,a5,-236 # 800018e4 <_ZN3TCB13firstFunctionEv>
    800019d8:	00f4bc23          	sd	a5,24(s1)
    800019dc:	0354b023          	sd	s5,32(s1)
    800019e0:	02048423          	sb	zero,40(s1)
    800019e4:	020484a3          	sb	zero,41(s1)
    800019e8:	03448523          	sb	s4,42(s1)
   {
      if (f != nullptr) { Scheduler::put(this); }
    800019ec:	04090463          	beqz	s2,80001a34 <_ZN3TCB12createThreadEPFvPvES0_Pmb+0xd0>
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	978080e7          	jalr	-1672(ra) # 8000236c <_ZN9Scheduler3putEP3TCB>
    800019fc:	0380006f          	j	80001a34 <_ZN3TCB12createThreadEPFvPvES0_Pmb+0xd0>
            stack(f != nullptr ? st : nullptr),
    80001a00:	00000793          	li	a5,0
    80001a04:	fb9ff06f          	j	800019bc <_ZN3TCB12createThreadEPFvPvES0_Pmb+0x58>
                     st != nullptr ? (uint64) &stack[STACK_SIZE] : 0,
    80001a08:	00000793          	li	a5,0
    80001a0c:	fc1ff06f          	j	800019cc <_ZN3TCB12createThreadEPFvPvES0_Pmb+0x68>
    80001a10:	00050913          	mv	s2,a0
    void operator delete(void* p){ MemoryAllocator::createAllocator()->dealloc(p); }
    80001a14:	00001097          	auipc	ra,0x1
    80001a18:	dd4080e7          	jalr	-556(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    80001a1c:	00048593          	mv	a1,s1
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	f7c080e7          	jalr	-132(ra) # 8000299c <_ZN15MemoryAllocator7deallocEPv>
    80001a28:	00090513          	mv	a0,s2
    80001a2c:	0000b097          	auipc	ra,0xb
    80001a30:	c5c080e7          	jalr	-932(ra) # 8000c688 <_Unwind_Resume>
}
    80001a34:	00048513          	mv	a0,s1
    80001a38:	03813083          	ld	ra,56(sp)
    80001a3c:	03013403          	ld	s0,48(sp)
    80001a40:	02813483          	ld	s1,40(sp)
    80001a44:	02013903          	ld	s2,32(sp)
    80001a48:	01813983          	ld	s3,24(sp)
    80001a4c:	01013a03          	ld	s4,16(sp)
    80001a50:	00813a83          	ld	s5,8(sp)
    80001a54:	04010113          	addi	sp,sp,64
    80001a58:	00008067          	ret

0000000080001a5c <_ZN3TCB8dispatchEv>:
{
    80001a5c:	fe010113          	addi	sp,sp,-32
    80001a60:	00113c23          	sd	ra,24(sp)
    80001a64:	00813823          	sd	s0,16(sp)
    80001a68:	00913423          	sd	s1,8(sp)
    80001a6c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001a70:	0000a497          	auipc	s1,0xa
    80001a74:	ad84b483          	ld	s1,-1320(s1) # 8000b548 <_ZN3TCB7runningE>
    bool isFinished() const{ return finished; }
    80001a78:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001a7c:	02078c63          	beqz	a5,80001ab4 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001a80:	00001097          	auipc	ra,0x1
    80001a84:	870080e7          	jalr	-1936(ra) # 800022f0 <_ZN9Scheduler3getEv>
    80001a88:	0000a797          	auipc	a5,0xa
    80001a8c:	aca7b023          	sd	a0,-1344(a5) # 8000b548 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a90:	01050593          	addi	a1,a0,16
    80001a94:	01048513          	addi	a0,s1,16
    80001a98:	fffff097          	auipc	ra,0xfffff
    80001a9c:	568080e7          	jalr	1384(ra) # 80001000 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001aa0:	01813083          	ld	ra,24(sp)
    80001aa4:	01013403          	ld	s0,16(sp)
    80001aa8:	00813483          	ld	s1,8(sp)
    80001aac:	02010113          	addi	sp,sp,32
    80001ab0:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001ab4:	00048513          	mv	a0,s1
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	8b4080e7          	jalr	-1868(ra) # 8000236c <_ZN9Scheduler3putEP3TCB>
    80001ac0:	fc1ff06f          	j	80001a80 <_ZN3TCB8dispatchEv+0x24>

0000000080001ac4 <_ZN6Thread7wrapperEPv>:

Thread::Thread() {
   body= nullptr;
}

void Thread::wrapper(void *arg) {
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00113423          	sd	ra,8(sp)
    80001acc:	00813023          	sd	s0,0(sp)
    80001ad0:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*)arg;
    t->run();
    80001ad4:	00053783          	ld	a5,0(a0)
    80001ad8:	0107b783          	ld	a5,16(a5)
    80001adc:	000780e7          	jalr	a5
}
    80001ae0:	00813083          	ld	ra,8(sp)
    80001ae4:	00013403          	ld	s0,0(sp)
    80001ae8:	01010113          	addi	sp,sp,16
    80001aec:	00008067          	ret

0000000080001af0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001af0:	fe010113          	addi	sp,sp,-32
    80001af4:	00113c23          	sd	ra,24(sp)
    80001af8:	00813823          	sd	s0,16(sp)
    80001afc:	00913423          	sd	s1,8(sp)
    80001b00:	02010413          	addi	s0,sp,32
    80001b04:	0000a797          	auipc	a5,0xa
    80001b08:	83478793          	addi	a5,a5,-1996 # 8000b338 <_ZTV6Thread+0x10>
    80001b0c:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001b10:	00853483          	ld	s1,8(a0)
    80001b14:	02048263          	beqz	s1,80001b38 <_ZN6ThreadD1Ev+0x48>
    80001b18:	00048513          	mv	a0,s1
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	e0c080e7          	jalr	-500(ra) # 80001928 <_ZN3TCBD1Ev>
    void operator delete(void* p){ MemoryAllocator::createAllocator()->dealloc(p); }
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	cc4080e7          	jalr	-828(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    80001b2c:	00048593          	mv	a1,s1
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	e6c080e7          	jalr	-404(ra) # 8000299c <_ZN15MemoryAllocator7deallocEPv>
}
    80001b38:	01813083          	ld	ra,24(sp)
    80001b3c:	01013403          	ld	s0,16(sp)
    80001b40:	00813483          	ld	s1,8(sp)
    80001b44:	02010113          	addi	sp,sp,32
    80001b48:	00008067          	ret

0000000080001b4c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001b4c:	fe010113          	addi	sp,sp,-32
    80001b50:	00113c23          	sd	ra,24(sp)
    80001b54:	00813823          	sd	s0,16(sp)
    80001b58:	00913423          	sd	s1,8(sp)
    80001b5c:	02010413          	addi	s0,sp,32
    80001b60:	00050493          	mv	s1,a0
}
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	f8c080e7          	jalr	-116(ra) # 80001af0 <_ZN6ThreadD1Ev>
    80001b6c:	00048513          	mv	a0,s1
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	be0080e7          	jalr	-1056(ra) # 80001750 <_ZdlPv>
    80001b78:	01813083          	ld	ra,24(sp)
    80001b7c:	01013403          	ld	s0,16(sp)
    80001b80:	00813483          	ld	s1,8(sp)
    80001b84:	02010113          	addi	sp,sp,32
    80001b88:	00008067          	ret

0000000080001b8c <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80001b8c:	ff010113          	addi	sp,sp,-16
    80001b90:	00113423          	sd	ra,8(sp)
    80001b94:	00813023          	sd	s0,0(sp)
    80001b98:	01010413          	addi	s0,sp,16
    80001b9c:	00009797          	auipc	a5,0x9
    80001ba0:	7c478793          	addi	a5,a5,1988 # 8000b360 <_ZTV9Semaphore+0x10>
    80001ba4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001ba8:	00853503          	ld	a0,8(a0)
    80001bac:	fffff097          	auipc	ra,0xfffff
    80001bb0:	754080e7          	jalr	1876(ra) # 80001300 <_Z9sem_closeP13SemaforKernel>
}
    80001bb4:	00813083          	ld	ra,8(sp)
    80001bb8:	00013403          	ld	s0,0(sp)
    80001bbc:	01010113          	addi	sp,sp,16
    80001bc0:	00008067          	ret

0000000080001bc4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001bc4:	fe010113          	addi	sp,sp,-32
    80001bc8:	00113c23          	sd	ra,24(sp)
    80001bcc:	00813823          	sd	s0,16(sp)
    80001bd0:	00913423          	sd	s1,8(sp)
    80001bd4:	02010413          	addi	s0,sp,32
    80001bd8:	00050493          	mv	s1,a0
}
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	fb0080e7          	jalr	-80(ra) # 80001b8c <_ZN9SemaphoreD1Ev>
    80001be4:	00048513          	mv	a0,s1
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	b68080e7          	jalr	-1176(ra) # 80001750 <_ZdlPv>
    80001bf0:	01813083          	ld	ra,24(sp)
    80001bf4:	01013403          	ld	s0,16(sp)
    80001bf8:	00813483          	ld	s1,8(sp)
    80001bfc:	02010113          	addi	sp,sp,32
    80001c00:	00008067          	ret

0000000080001c04 <_ZN6Thread5startEv>:
int Thread::start(){
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00113423          	sd	ra,8(sp)
    80001c0c:	00813023          	sd	s0,0(sp)
    80001c10:	01010413          	addi	s0,sp,16
     if(!body) {
    80001c14:	01053583          	ld	a1,16(a0)
    80001c18:	02058263          	beqz	a1,80001c3c <_ZN6Thread5startEv+0x38>
         return thread_create(&myHandle,body,this->arg);
    80001c1c:	01853603          	ld	a2,24(a0)
    80001c20:	00850513          	addi	a0,a0,8
    80001c24:	fffff097          	auipc	ra,0xfffff
    80001c28:	5b0080e7          	jalr	1456(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001c2c:	00813083          	ld	ra,8(sp)
    80001c30:	00013403          	ld	s0,0(sp)
    80001c34:	01010113          	addi	sp,sp,16
    80001c38:	00008067          	ret
         return thread_create(&myHandle, &wrapper, this);
    80001c3c:	00050613          	mv	a2,a0
    80001c40:	00000597          	auipc	a1,0x0
    80001c44:	e8458593          	addi	a1,a1,-380 # 80001ac4 <_ZN6Thread7wrapperEPv>
    80001c48:	00850513          	addi	a0,a0,8
    80001c4c:	fffff097          	auipc	ra,0xfffff
    80001c50:	588080e7          	jalr	1416(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    80001c54:	fd9ff06f          	j	80001c2c <_ZN6Thread5startEv+0x28>

0000000080001c58 <_ZN6ThreadC1EPFvPvES0_>:
  Thread::Thread (void (*body)(void*), void* arg){
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00813423          	sd	s0,8(sp)
    80001c60:	01010413          	addi	s0,sp,16
    80001c64:	00009797          	auipc	a5,0x9
    80001c68:	6d478793          	addi	a5,a5,1748 # 8000b338 <_ZTV6Thread+0x10>
    80001c6c:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80001c70:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80001c74:	00c53c23          	sd	a2,24(a0)
  }
    80001c78:	00813403          	ld	s0,8(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret

0000000080001c84 <_ZN6Thread8dispatchEv>:
 void Thread ::dispatch(){
    80001c84:	ff010113          	addi	sp,sp,-16
    80001c88:	00113423          	sd	ra,8(sp)
    80001c8c:	00813023          	sd	s0,0(sp)
    80001c90:	01010413          	addi	s0,sp,16
  return thread_dispatch();
    80001c94:	fffff097          	auipc	ra,0xfffff
    80001c98:	5ec080e7          	jalr	1516(ra) # 80001280 <_Z15thread_dispatchv>
}
    80001c9c:	00813083          	ld	ra,8(sp)
    80001ca0:	00013403          	ld	s0,0(sp)
    80001ca4:	01010113          	addi	sp,sp,16
    80001ca8:	00008067          	ret

0000000080001cac <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00813423          	sd	s0,8(sp)
    80001cb4:	01010413          	addi	s0,sp,16
    80001cb8:	00009797          	auipc	a5,0x9
    80001cbc:	68078793          	addi	a5,a5,1664 # 8000b338 <_ZTV6Thread+0x10>
    80001cc0:	00f53023          	sd	a5,0(a0)
   body= nullptr;
    80001cc4:	00053823          	sd	zero,16(a0)
}
    80001cc8:	00813403          	ld	s0,8(sp)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret

0000000080001cd4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001cd4:	ff010113          	addi	sp,sp,-16
    80001cd8:	00113423          	sd	ra,8(sp)
    80001cdc:	00813023          	sd	s0,0(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    80001ce4:	00009797          	auipc	a5,0x9
    80001ce8:	67c78793          	addi	a5,a5,1660 # 8000b360 <_ZTV9Semaphore+0x10>
    80001cec:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80001cf0:	00850513          	addi	a0,a0,8
    80001cf4:	fffff097          	auipc	ra,0xfffff
    80001cf8:	5b8080e7          	jalr	1464(ra) # 800012ac <_Z8sem_openPP13SemaforKernelj>
}
    80001cfc:	00813083          	ld	ra,8(sp)
    80001d00:	00013403          	ld	s0,0(sp)
    80001d04:	01010113          	addi	sp,sp,16
    80001d08:	00008067          	ret

0000000080001d0c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00113423          	sd	ra,8(sp)
    80001d14:	00813023          	sd	s0,0(sp)
    80001d18:	01010413          	addi	s0,sp,16
   return sem_wait(myHandle);
    80001d1c:	00853503          	ld	a0,8(a0)
    80001d20:	fffff097          	auipc	ra,0xfffff
    80001d24:	62c080e7          	jalr	1580(ra) # 8000134c <_Z8sem_waitP13SemaforKernel>
}
    80001d28:	00813083          	ld	ra,8(sp)
    80001d2c:	00013403          	ld	s0,0(sp)
    80001d30:	01010113          	addi	sp,sp,16
    80001d34:	00008067          	ret

0000000080001d38 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001d38:	ff010113          	addi	sp,sp,-16
    80001d3c:	00113423          	sd	ra,8(sp)
    80001d40:	00813023          	sd	s0,0(sp)
    80001d44:	01010413          	addi	s0,sp,16
   return sem_signal(myHandle);
    80001d48:	00853503          	ld	a0,8(a0)
    80001d4c:	fffff097          	auipc	ra,0xfffff
    80001d50:	64c080e7          	jalr	1612(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>
}
    80001d54:	00813083          	ld	ra,8(sp)
    80001d58:	00013403          	ld	s0,0(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN7Console4getcEv>:

char Console::getc (){
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00113423          	sd	ra,8(sp)
    80001d6c:	00813023          	sd	s0,0(sp)
    80001d70:	01010413          	addi	s0,sp,16
    char k = ::getc();
    80001d74:	fffff097          	auipc	ra,0xfffff
    80001d78:	670080e7          	jalr	1648(ra) # 800013e4 <_Z4getcv>
    return k;
}
    80001d7c:	00813083          	ld	ra,8(sp)
    80001d80:	00013403          	ld	s0,0(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <_ZN7Console4putcEc>:
void Console::putc (char c){
    80001d8c:	ff010113          	addi	sp,sp,-16
    80001d90:	00113423          	sd	ra,8(sp)
    80001d94:	00813023          	sd	s0,0(sp)
    80001d98:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001d9c:	fffff097          	auipc	ra,0xfffff
    80001da0:	674080e7          	jalr	1652(ra) # 80001410 <_Z4putcc>
}
    80001da4:	00813083          	ld	ra,8(sp)
    80001da8:	00013403          	ld	s0,0(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <_ZN6Thread3runEv>:
 int start ();
 static void dispatch ();
 //static int sleep (time_t);
protected:
 Thread ();
 virtual void run () {}
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00813423          	sd	s0,8(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    80001dc0:	00813403          	ld	s0,8(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
//VRACANJE PRETHODNIH PRIVILEGIJA KAO I PRETHODNOG STANJA STO SE TICE MASKIRANJA PREKIDA
/*mora da bude bude non inline,ne da se njen kod ugradjuje vec da se ona pozove
jer ako se ugradi na mesto poziva menja se ra*/
{
    80001dcc:	fe010113          	addi	sp,sp,-32
    80001dd0:	00813c23          	sd	s0,24(sp)
    80001dd4:	02010413          	addi	s0,sp,32
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001dd8:	100027f3          	csrr	a5,sstatus
    80001ddc:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80001de0:	fe043783          	ld	a5,-32(s0)
    uint64 volatile sstatus;
    sstatus = r_sstatus();
    80001de4:	fef43423          	sd	a5,-24(s0)
    if(TCB::running->kernelThread){
    80001de8:	00009797          	auipc	a5,0x9
    80001dec:	6f87b783          	ld	a5,1784(a5) # 8000b4e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001df0:	0007b783          	ld	a5,0(a5)
    80001df4:	02a7c783          	lbu	a5,42(a5)
    80001df8:	02078663          	beqz	a5,80001e24 <_ZN5Riscv10popSppSpieEv+0x58>
        sstatus = sstatus | SSTATUS_SPP;
    80001dfc:	fe843783          	ld	a5,-24(s0)
    80001e00:	1007e793          	ori	a5,a5,256
    80001e04:	fef43423          	sd	a5,-24(s0)
    }
    else{
        sstatus = sstatus & ~SSTATUS_SPP;
    }
    w_sstatus(sstatus);
    80001e08:	fe843783          	ld	a5,-24(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001e0c:	10079073          	csrw	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80001e10:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001e14:	10200073          	sret
}
    80001e18:	01813403          	ld	s0,24(sp)
    80001e1c:	02010113          	addi	sp,sp,32
    80001e20:	00008067          	ret
        sstatus = sstatus & ~SSTATUS_SPP;
    80001e24:	fe843783          	ld	a5,-24(s0)
    80001e28:	eff7f793          	andi	a5,a5,-257
    80001e2c:	fef43423          	sd	a5,-24(s0)
    80001e30:	fd9ff06f          	j	80001e08 <_ZN5Riscv10popSppSpieEv+0x3c>

0000000080001e34 <_ZN5Riscv20handleSupervisorTrapEv>:
*/


void Riscv::handleSupervisorTrap()
//OVDE ULAZIMO PRI BILO KOM EXCEPTIONU JER SMO TAKO STAVILI U STVEC(NA 2 NAJNIZA BITA 0)
{   //printString("Trap!\n");
    80001e34:	e8010113          	addi	sp,sp,-384
    80001e38:	16113c23          	sd	ra,376(sp)
    80001e3c:	16813823          	sd	s0,368(sp)
    80001e40:	16913423          	sd	s1,360(sp)
    80001e44:	17213023          	sd	s2,352(sp)
    80001e48:	15313c23          	sd	s3,344(sp)
    80001e4c:	18010413          	addi	s0,sp,384



inline uint64 Riscv::r_a0(){ // za citanje koda instrukcije
    uint64 volatile a0;
    __asm__ volatile("mv %[savedValue], a0" :  [savedValue] "=r" (a0));
    80001e50:	00050793          	mv	a5,a0
    80001e54:	f0f43c23          	sd	a5,-232(s0)
    return a0;
    80001e58:	f1843783          	ld	a5,-232(s0)

    uint64 volatile a1, a2, a3, a4,a0;
    a0=Riscv::r_a0();
    80001e5c:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_a1(){ // za citanje prvog argumenta
    uint64 volatile a1;
    __asm__ volatile("mv %[savedValue], a1" :  [savedValue] "=r" (a1));
    80001e60:	00058793          	mv	a5,a1
    80001e64:	f0f43823          	sd	a5,-240(s0)
    return a1;
    80001e68:	f1043783          	ld	a5,-240(s0)
    a1 = Riscv::r_a1();
    80001e6c:	fcf43423          	sd	a5,-56(s0)
}

inline uint64 Riscv::r_a2(){ // za citanje koda instrukcije
    uint64 volatile a2;
    __asm__ volatile("mv %[savedValue], a2" :  [savedValue] "=r" (a2));
    80001e70:	00060793          	mv	a5,a2
    80001e74:	f0f43423          	sd	a5,-248(s0)
    return a2;
    80001e78:	f0843783          	ld	a5,-248(s0)
    a2 = Riscv::r_a2();
    80001e7c:	fcf43023          	sd	a5,-64(s0)
}

inline uint64 Riscv::r_a3(){ // za citanje koda instrukcije
    uint64 volatile a3;
    __asm__ volatile("mv %[savedValue], a3" :  [savedValue] "=r" (a3));
    80001e80:	00068793          	mv	a5,a3
    80001e84:	f0f43023          	sd	a5,-256(s0)
    return a3;
    80001e88:	f0043783          	ld	a5,-256(s0)
    a3 = Riscv::r_a3();
    80001e8c:	faf43c23          	sd	a5,-72(s0)
}

inline uint64 Riscv::r_a4(){ // za citanje koda instrukcije
    uint64 volatile a4;
    __asm__ volatile("mv %[savedValue], a4" :  [savedValue] "=r" (a4));
    80001e90:	00070793          	mv	a5,a4
    80001e94:	eef43c23          	sd	a5,-264(s0)
    return a4;
    80001e98:	ef843783          	ld	a5,-264(s0)
    a4 = Riscv::r_a4();
    80001e9c:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ea0:	142027f3          	csrr	a5,scause
    80001ea4:	eef43823          	sd	a5,-272(s0)
    return scause;
    80001ea8:	ef043483          	ld	s1,-272(s0)

    //procitamo scause da vidimo sto smo usli,ispod pitamo sta se desilo
    /*masina je napralvjena da prekid od tajmera tretira kao supervisorski softverski prekid
    a to je prekid od tajmera
    druga stvar je spoljasnji supervisorski prekid,od konzole npr*/
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001eac:	ff848713          	addi	a4,s1,-8
    80001eb0:	00100793          	li	a5,1
    80001eb4:	0ee7fe63          	bgeu	a5,a4,80001fb0 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                break;
            }

        }

    } else if(scause == 0x8000000000000001UL)//BNT = 1, exception:no
    80001eb8:	fff00793          	li	a5,-1
    80001ebc:	03f79793          	slli	a5,a5,0x3f
    80001ec0:	00178793          	addi	a5,a5,1
    80001ec4:	3cf48a63          	beq	s1,a5,80002298 <_ZN5Riscv20handleSupervisorTrapEv+0x464>
             w_sstatus(sstatus);
             w_sepc(sepc);
         }*/
        mc_sip(SIP_SSIP);

    }else if(scause == 0x8000000000000009UL){
    80001ec8:	fff00793          	li	a5,-1
    80001ecc:	03f79793          	slli	a5,a5,0x3f
    80001ed0:	00978793          	addi	a5,a5,9
    80001ed4:	3cf48863          	beq	s1,a5,800022a4 <_ZN5Riscv20handleSupervisorTrapEv+0x470>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ed8:	141027f3          	csrr	a5,sepc
    80001edc:	faf43023          	sd	a5,-96(s0)
    return sepc;
    80001ee0:	fa043983          	ld	s3,-96(s0)
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80001ee4:	143027f3          	csrr	a5,stval
    80001ee8:	f8f43c23          	sd	a5,-104(s0)
    return stval;
    80001eec:	f9843903          	ld	s2,-104(s0)
        console_handler();
    }else{
        uint64 sepc = r_sepc();
        uint64 stval = r_stval();

        printString("scause: 0x");
    80001ef0:	00007517          	auipc	a0,0x7
    80001ef4:	3c850513          	addi	a0,a0,968 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80001ef8:	00003097          	auipc	ra,0x3
    80001efc:	954080e7          	jalr	-1708(ra) # 8000484c <_Z11printStringPKc>
        printInt(scause, 16);
    80001f00:	00000613          	li	a2,0
    80001f04:	01000593          	li	a1,16
    80001f08:	0004851b          	sext.w	a0,s1
    80001f0c:	00003097          	auipc	ra,0x3
    80001f10:	af0080e7          	jalr	-1296(ra) # 800049fc <_Z8printIntiii>
        printString("\n");
    80001f14:	00007517          	auipc	a0,0x7
    80001f18:	2ac50513          	addi	a0,a0,684 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80001f1c:	00003097          	auipc	ra,0x3
    80001f20:	930080e7          	jalr	-1744(ra) # 8000484c <_Z11printStringPKc>

        printString("sepc: 0x");
    80001f24:	00007517          	auipc	a0,0x7
    80001f28:	3a450513          	addi	a0,a0,932 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80001f2c:	00003097          	auipc	ra,0x3
    80001f30:	920080e7          	jalr	-1760(ra) # 8000484c <_Z11printStringPKc>
        printInt(sepc, 16);
    80001f34:	00000613          	li	a2,0
    80001f38:	01000593          	li	a1,16
    80001f3c:	0009851b          	sext.w	a0,s3
    80001f40:	00003097          	auipc	ra,0x3
    80001f44:	abc080e7          	jalr	-1348(ra) # 800049fc <_Z8printIntiii>
        printString("\n");
    80001f48:	00007517          	auipc	a0,0x7
    80001f4c:	27850513          	addi	a0,a0,632 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80001f50:	00003097          	auipc	ra,0x3
    80001f54:	8fc080e7          	jalr	-1796(ra) # 8000484c <_Z11printStringPKc>

        printString("stval: 0x");
    80001f58:	00007517          	auipc	a0,0x7
    80001f5c:	38050513          	addi	a0,a0,896 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80001f60:	00003097          	auipc	ra,0x3
    80001f64:	8ec080e7          	jalr	-1812(ra) # 8000484c <_Z11printStringPKc>
        printInt(stval, 16);
    80001f68:	00000613          	li	a2,0
    80001f6c:	01000593          	li	a1,16
    80001f70:	0009051b          	sext.w	a0,s2
    80001f74:	00003097          	auipc	ra,0x3
    80001f78:	a88080e7          	jalr	-1400(ra) # 800049fc <_Z8printIntiii>
        printString("\n");
    80001f7c:	00007517          	auipc	a0,0x7
    80001f80:	24450513          	addi	a0,a0,580 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80001f84:	00003097          	auipc	ra,0x3
    80001f88:	8c8080e7          	jalr	-1848(ra) # 8000484c <_Z11printStringPKc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001f8c:	00200793          	li	a5,2
    80001f90:	1447b073          	csrc	sip,a5
    }

    // Očisti SSIP bit za svaki prekid koji je ušao (uključujući ecall)
    mc_sip(SIP_SSIP);
}
    80001f94:	17813083          	ld	ra,376(sp)
    80001f98:	17013403          	ld	s0,368(sp)
    80001f9c:	16813483          	ld	s1,360(sp)
    80001fa0:	16013903          	ld	s2,352(sp)
    80001fa4:	15813983          	ld	s3,344(sp)
    80001fa8:	18010113          	addi	sp,sp,384
    80001fac:	00008067          	ret
        int code=(int)a0;
    80001fb0:	fa843783          	ld	a5,-88(s0)
    80001fb4:	0007879b          	sext.w	a5,a5
        switch (code){
    80001fb8:	04200713          	li	a4,66
    80001fbc:	fcf768e3          	bltu	a4,a5,80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
    80001fc0:	00279793          	slli	a5,a5,0x2
    80001fc4:	00007717          	auipc	a4,0x7
    80001fc8:	32070713          	addi	a4,a4,800 # 800092e4 <CONSOLE_STATUS+0x2d4>
    80001fcc:	00e787b3          	add	a5,a5,a4
    80001fd0:	0007a783          	lw	a5,0(a5)
    80001fd4:	00e787b3          	add	a5,a5,a4
    80001fd8:	00078067          	jr	a5
                size_t num=(size_t)a1;
    80001fdc:	fc843483          	ld	s1,-56(s0)
                size_t size = num * MEM_BLOCK_SIZE;
    80001fe0:	00649493          	slli	s1,s1,0x6
                MemoryAllocator* memoryAllocator= MemoryAllocator::createAllocator();
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	804080e7          	jalr	-2044(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
                void* ret = memoryAllocator->alloc(size);
    80001fec:	00048593          	mv	a1,s1
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	874080e7          	jalr	-1932(ra) # 80002864 <_ZN15MemoryAllocator5allocEm>
                __asm__ volatile("sd %[a], 10 * 8(s0)" : : [a] "r"(ret));
    80001ff8:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ffc:	141027f3          	csrr	a5,sepc
    80002000:	f2f43023          	sd	a5,-224(s0)
    return sepc;
    80002004:	f2043783          	ld	a5,-224(s0)
                uint64 volatile sepc = Riscv::r_sepc()+4;
    80002008:	00478793          	addi	a5,a5,4
    8000200c:	e8f43023          	sd	a5,-384(s0)
                Riscv::w_sepc(sepc);
    80002010:	e8043783          	ld	a5,-384(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002014:	14179073          	csrw	sepc,a5
}
    80002018:	f75ff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
                void *free=(void*)a1;
    8000201c:	fc843483          	ld	s1,-56(s0)
                MemoryAllocator* memoryAllocator= MemoryAllocator::createAllocator();
    80002020:	00000097          	auipc	ra,0x0
    80002024:	7c8080e7          	jalr	1992(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
                int ret = memoryAllocator->dealloc(free);
    80002028:	00048593          	mv	a1,s1
    8000202c:	00001097          	auipc	ra,0x1
    80002030:	970080e7          	jalr	-1680(ra) # 8000299c <_ZN15MemoryAllocator7deallocEPv>
                __asm__ volatile("sd %[a], 10 * 8(s0)" : : [a] "r"(ret));
    80002034:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002038:	141027f3          	csrr	a5,sepc
    8000203c:	f2f43423          	sd	a5,-216(s0)
    return sepc;
    80002040:	f2843783          	ld	a5,-216(s0)
                uint64 volatile sepc = Riscv::r_sepc()+4;
    80002044:	00478793          	addi	a5,a5,4
    80002048:	e8f43423          	sd	a5,-376(s0)
                Riscv::w_sepc(sepc);
    8000204c:	e8843783          	ld	a5,-376(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002050:	14179073          	csrw	sepc,a5
}
    80002054:	f39ff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
              TCB** handle=(TCB**)a1;
    80002058:	fc843483          	ld	s1,-56(s0)
              TCB::ThreadFunction start=(TCB::ThreadFunction)a2;
    8000205c:	fc043503          	ld	a0,-64(s0)
              void* arg=(void*)a3;
    80002060:	fb843583          	ld	a1,-72(s0)
              uint64* stack=(uint64*)a4;
    80002064:	fb043603          	ld	a2,-80(s0)
              *handle=TCB::createThread(start,arg,stack);
    80002068:	00000693          	li	a3,0
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	8f8080e7          	jalr	-1800(ra) # 80001964 <_ZN3TCB12createThreadEPFvPvES0_Pmb>
    80002074:	00a4b023          	sd	a0,0(s1)
              if(!handle){
    80002078:	02049663          	bnez	s1,800020a4 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
                  ret=-1;
    8000207c:	fff00793          	li	a5,-1
              __asm__ volatile("mv a0,%0"::"r"(ret));
    80002080:	00078513          	mv	a0,a5
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002084:	141027f3          	csrr	a5,sepc
    80002088:	f2f43823          	sd	a5,-208(s0)
    return sepc;
    8000208c:	f3043783          	ld	a5,-208(s0)
              uint64 volatile sepc = Riscv::r_sepc()+4;
    80002090:	00478793          	addi	a5,a5,4
    80002094:	e8f43823          	sd	a5,-368(s0)
              Riscv::w_sepc(sepc);
    80002098:	e9043783          	ld	a5,-368(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000209c:	14179073          	csrw	sepc,a5
}
    800020a0:	eedff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
                  ret=0;
    800020a4:	00000793          	li	a5,0
    800020a8:	fd9ff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEv+0x24c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020ac:	141027f3          	csrr	a5,sepc
    800020b0:	f4f43023          	sd	a5,-192(s0)
    return sepc;
    800020b4:	f4043783          	ld	a5,-192(s0)
            uint64 volatile sepc = r_sepc() + 4;
    800020b8:	00478793          	addi	a5,a5,4
    800020bc:	e8f43c23          	sd	a5,-360(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020c0:	100027f3          	csrr	a5,sstatus
    800020c4:	f2f43c23          	sd	a5,-200(s0)
    return sstatus;
    800020c8:	f3843783          	ld	a5,-200(s0)
            uint64 volatile sstatus = r_sstatus();
    800020cc:	eaf43023          	sd	a5,-352(s0)
            TCB::running->setFinished(true);
    800020d0:	00009797          	auipc	a5,0x9
    800020d4:	4107b783          	ld	a5,1040(a5) # 8000b4e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800020d8:	0007b783          	ld	a5,0(a5)
    void setFinished(bool finish){ finished=finish; }
    800020dc:	00100713          	li	a4,1
    800020e0:	02e78423          	sb	a4,40(a5)
            TCB::dispatch();
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	978080e7          	jalr	-1672(ra) # 80001a5c <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a0,%0"::"r"(ret));
    800020ec:	fff00793          	li	a5,-1
    800020f0:	00078513          	mv	a0,a5
             w_sstatus(sstatus);
    800020f4:	ea043783          	ld	a5,-352(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020f8:	10079073          	csrw	sstatus,a5
              w_sepc(sepc);
    800020fc:	e9843783          	ld	a5,-360(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002100:	14179073          	csrw	sepc,a5
}
    80002104:	e89ff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002108:	141027f3          	csrr	a5,sepc
    8000210c:	f4f43823          	sd	a5,-176(s0)
    return sepc;
    80002110:	f5043783          	ld	a5,-176(s0)
              uint64 volatile sepc = r_sepc() + 4;
    80002114:	00478793          	addi	a5,a5,4
    80002118:	eaf43423          	sd	a5,-344(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000211c:	100027f3          	csrr	a5,sstatus
    80002120:	f4f43423          	sd	a5,-184(s0)
    return sstatus;
    80002124:	f4843783          	ld	a5,-184(s0)
              uint64 volatile sstatus = r_sstatus();
    80002128:	eaf43823          	sd	a5,-336(s0)
              TCB::dispatch();
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	930080e7          	jalr	-1744(ra) # 80001a5c <_ZN3TCB8dispatchEv>
              w_sstatus(sstatus);
    80002134:	eb043783          	ld	a5,-336(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002138:	10079073          	csrw	sstatus,a5
              w_sepc(sepc);
    8000213c:	ea843783          	ld	a5,-344(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002140:	14179073          	csrw	sepc,a5
}
    80002144:	e49ff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002148:	141027f3          	csrr	a5,sepc
    8000214c:	f4f43c23          	sd	a5,-168(s0)
    return sepc;
    80002150:	f5843783          	ld	a5,-168(s0)
             uint64 volatile sepc = r_sepc() + 4;
    80002154:	00478793          	addi	a5,a5,4
    80002158:	eaf43c23          	sd	a5,-328(s0)
            SemaforKernel** handle=(SemaforKernel**)a1;
    8000215c:	fc843483          	ld	s1,-56(s0)
            unsigned init=(unsigned)a2;
    80002160:	fc043503          	ld	a0,-64(s0)
            *handle=SemaforKernel::open(init);
    80002164:	0005051b          	sext.w	a0,a0
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	3c4080e7          	jalr	964(ra) # 8000252c <_ZN13SemaforKernel4openEi>
    80002170:	00a4b023          	sd	a0,0(s1)
              if(!*handle){
    80002174:	00050c63          	beqz	a0,8000218c <_ZN5Riscv20handleSupervisorTrapEv+0x358>
                  ret=0;
    80002178:	00000793          	li	a5,0
              __asm__ volatile("mv a0,%0"::"r"(ret));
    8000217c:	00078513          	mv	a0,a5
               w_sepc(sepc);
    80002180:	eb843783          	ld	a5,-328(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002184:	14179073          	csrw	sepc,a5
}
    80002188:	e05ff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
                  ret=-1;
    8000218c:	fff00793          	li	a5,-1
    80002190:	fedff06f          	j	8000217c <_ZN5Riscv20handleSupervisorTrapEv+0x348>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002194:	141027f3          	csrr	a5,sepc
    80002198:	f6f43023          	sd	a5,-160(s0)
    return sepc;
    8000219c:	f6043783          	ld	a5,-160(s0)
             uint64 volatile sepc = r_sepc() + 4;
    800021a0:	00478793          	addi	a5,a5,4
    800021a4:	ecf43023          	sd	a5,-320(s0)
             sem_t handle=(sem_t)a1;
    800021a8:	fc843503          	ld	a0,-56(s0)
             handle->~SemaforKernel();
    800021ac:	00053783          	ld	a5,0(a0)
    800021b0:	0007b783          	ld	a5,0(a5)
    800021b4:	000780e7          	jalr	a5
              w_sepc(sepc);
    800021b8:	ec043783          	ld	a5,-320(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800021bc:	14179073          	csrw	sepc,a5
}
    800021c0:	dcdff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021c4:	141027f3          	csrr	a5,sepc
    800021c8:	f6f43823          	sd	a5,-144(s0)
    return sepc;
    800021cc:	f7043783          	ld	a5,-144(s0)
             uint64 volatile sepc = r_sepc() + 4;
    800021d0:	00478793          	addi	a5,a5,4
    800021d4:	ecf43423          	sd	a5,-312(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021d8:	100027f3          	csrr	a5,sstatus
    800021dc:	f6f43423          	sd	a5,-152(s0)
    return sstatus;
    800021e0:	f6843783          	ld	a5,-152(s0)
             uint64 volatile sstatus = r_sstatus();
    800021e4:	ecf43823          	sd	a5,-304(s0)
             sem_t handle=(sem_t)a1;
    800021e8:	fc843503          	ld	a0,-56(s0)
            handle->wait();
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	39c080e7          	jalr	924(ra) # 80002588 <_ZN13SemaforKernel4waitEv>
             w_sepc(sepc);
    800021f4:	ec843783          	ld	a5,-312(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800021f8:	14179073          	csrw	sepc,a5
              w_sstatus(sstatus);
    800021fc:	ed043783          	ld	a5,-304(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002200:	10079073          	csrw	sstatus,a5
}
    80002204:	d89ff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002208:	141027f3          	csrr	a5,sepc
    8000220c:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    80002210:	f7843783          	ld	a5,-136(s0)
             uint64 volatile sepc = r_sepc() + 4;
    80002214:	00478793          	addi	a5,a5,4
    80002218:	ecf43c23          	sd	a5,-296(s0)
             sem_t handle=(sem_t)a1;
    8000221c:	fc843503          	ld	a0,-56(s0)
             handle->signal();
    80002220:	00000097          	auipc	ra,0x0
    80002224:	46c080e7          	jalr	1132(ra) # 8000268c <_ZN13SemaforKernel6signalEv>
              w_sepc(sepc);
    80002228:	ed843783          	ld	a5,-296(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000222c:	14179073          	csrw	sepc,a5
}
    80002230:	d5dff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002234:	141027f3          	csrr	a5,sepc
    80002238:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    8000223c:	f8043783          	ld	a5,-128(s0)
                uint64 volatile sepc = r_sepc()+4;
    80002240:	00478793          	addi	a5,a5,4
    80002244:	eef43023          	sd	a5,-288(s0)
                char  a=__getc();
    80002248:	00006097          	auipc	ra,0x6
    8000224c:	140080e7          	jalr	320(ra) # 80008388 <__getc>
                 __asm__ volatile("sd %[a], 10 * 8(s0)" : : [a] "r"(a));
    80002250:	04a43823          	sd	a0,80(s0)
                w_sepc(sepc);
    80002254:	ee043783          	ld	a5,-288(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002258:	14179073          	csrw	sepc,a5
}
    8000225c:	d31ff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
    __asm__ volatile("mv %[savedValue], a1" :  [savedValue] "=r" (a1));
    80002260:	00058793          	mv	a5,a1
    80002264:	f8f43823          	sd	a5,-112(s0)
    return a1;
    80002268:	f9043503          	ld	a0,-112(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000226c:	141027f3          	csrr	a5,sepc
    80002270:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80002274:	f8843783          	ld	a5,-120(s0)
                uint64 volatile sepc = r_sepc()+4;
    80002278:	00478793          	addi	a5,a5,4
    8000227c:	eef43423          	sd	a5,-280(s0)
                __putc(c);
    80002280:	0ff57513          	andi	a0,a0,255
    80002284:	00006097          	auipc	ra,0x6
    80002288:	0c8080e7          	jalr	200(ra) # 8000834c <__putc>
                w_sepc(sepc);
    8000228c:	ee843783          	ld	a5,-280(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002290:	14179073          	csrw	sepc,a5
}
    80002294:	cf9ff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002298:	00200793          	li	a5,2
    8000229c:	1447b073          	csrc	sip,a5
}
    800022a0:	cedff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
        console_handler();
    800022a4:	00006097          	auipc	ra,0x6
    800022a8:	11c080e7          	jalr	284(ra) # 800083c0 <console_handler>
    800022ac:	ce1ff06f          	j	80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x158>

00000000800022b0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
}
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00813423          	sd	s0,8(sp)
    800022b8:	01010413          	addi	s0,sp,16
    800022bc:	00100793          	li	a5,1
    800022c0:	00f50863          	beq	a0,a5,800022d0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800022c4:	00813403          	ld	s0,8(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret
    800022d0:	000107b7          	lui	a5,0x10
    800022d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800022d8:	fef596e3          	bne	a1,a5,800022c4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800022dc:	00009797          	auipc	a5,0x9
    800022e0:	27478793          	addi	a5,a5,628 # 8000b550 <_ZN9Scheduler16readyThreadQueueE>
    800022e4:	0007b023          	sd	zero,0(a5)
    800022e8:	0007b423          	sd	zero,8(a5)
    800022ec:	fd9ff06f          	j	800022c4 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800022f0 <_ZN9Scheduler3getEv>:
{
    800022f0:	fe010113          	addi	sp,sp,-32
    800022f4:	00113c23          	sd	ra,24(sp)
    800022f8:	00813823          	sd	s0,16(sp)
    800022fc:	00913423          	sd	s1,8(sp)
    80002300:	01213023          	sd	s2,0(sp)
    80002304:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002308:	00009497          	auipc	s1,0x9
    8000230c:	2484b483          	ld	s1,584(s1) # 8000b550 <_ZN9Scheduler16readyThreadQueueE>
    80002310:	04048a63          	beqz	s1,80002364 <_ZN9Scheduler3getEv+0x74>

        Elem *elem = head;
        head = head->next;
    80002314:	0084b783          	ld	a5,8(s1)
    80002318:	00009717          	auipc	a4,0x9
    8000231c:	22f73c23          	sd	a5,568(a4) # 8000b550 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002320:	02078c63          	beqz	a5,80002358 <_ZN9Scheduler3getEv+0x68>

        T *ret = elem->data;
    80002324:	0004b903          	ld	s2,0(s1)
         void operator delete(void *p) { MemoryAllocator::createAllocator()->dealloc(p); }
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	4c0080e7          	jalr	1216(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    80002330:	00048593          	mv	a1,s1
    80002334:	00000097          	auipc	ra,0x0
    80002338:	668080e7          	jalr	1640(ra) # 8000299c <_ZN15MemoryAllocator7deallocEPv>
}
    8000233c:	00090513          	mv	a0,s2
    80002340:	01813083          	ld	ra,24(sp)
    80002344:	01013403          	ld	s0,16(sp)
    80002348:	00813483          	ld	s1,8(sp)
    8000234c:	00013903          	ld	s2,0(sp)
    80002350:	02010113          	addi	sp,sp,32
    80002354:	00008067          	ret
        if (!head) { tail = 0; }
    80002358:	00009797          	auipc	a5,0x9
    8000235c:	2007b023          	sd	zero,512(a5) # 8000b558 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002360:	fc5ff06f          	j	80002324 <_ZN9Scheduler3getEv+0x34>
        if (!head) { return 0; }
    80002364:	00048913          	mv	s2,s1
    return readyThreadQueue.removeFirst();
    80002368:	fd5ff06f          	j	8000233c <_ZN9Scheduler3getEv+0x4c>

000000008000236c <_ZN9Scheduler3putEP3TCB>:
{
    8000236c:	fe010113          	addi	sp,sp,-32
    80002370:	00113c23          	sd	ra,24(sp)
    80002374:	00813823          	sd	s0,16(sp)
    80002378:	00913423          	sd	s1,8(sp)
    8000237c:	02010413          	addi	s0,sp,32
    80002380:	00050493          	mv	s1,a0
         void *operator new(size_t size) { return MemoryAllocator::createAllocator()->alloc(size); }
    80002384:	00000097          	auipc	ra,0x0
    80002388:	464080e7          	jalr	1124(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    8000238c:	01000593          	li	a1,16
    80002390:	00000097          	auipc	ra,0x0
    80002394:	4d4080e7          	jalr	1236(ra) # 80002864 <_ZN15MemoryAllocator5allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002398:	00953023          	sd	s1,0(a0)
    8000239c:	00053423          	sd	zero,8(a0)
        if (tail)
    800023a0:	00009797          	auipc	a5,0x9
    800023a4:	1b87b783          	ld	a5,440(a5) # 8000b558 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800023a8:	02078263          	beqz	a5,800023cc <_ZN9Scheduler3putEP3TCB+0x60>
            tail->next = elem;
    800023ac:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800023b0:	00009797          	auipc	a5,0x9
    800023b4:	1aa7b423          	sd	a0,424(a5) # 8000b558 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800023b8:	01813083          	ld	ra,24(sp)
    800023bc:	01013403          	ld	s0,16(sp)
    800023c0:	00813483          	ld	s1,8(sp)
    800023c4:	02010113          	addi	sp,sp,32
    800023c8:	00008067          	ret
            head = tail = elem;
    800023cc:	00009797          	auipc	a5,0x9
    800023d0:	18478793          	addi	a5,a5,388 # 8000b550 <_ZN9Scheduler16readyThreadQueueE>
    800023d4:	00a7b423          	sd	a0,8(a5)
    800023d8:	00a7b023          	sd	a0,0(a5)
    800023dc:	fddff06f          	j	800023b8 <_ZN9Scheduler3putEP3TCB+0x4c>

00000000800023e0 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800023e0:	ff010113          	addi	sp,sp,-16
    800023e4:	00113423          	sd	ra,8(sp)
    800023e8:	00813023          	sd	s0,0(sp)
    800023ec:	01010413          	addi	s0,sp,16
    800023f0:	000105b7          	lui	a1,0x10
    800023f4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800023f8:	00100513          	li	a0,1
    800023fc:	00000097          	auipc	ra,0x0
    80002400:	eb4080e7          	jalr	-332(ra) # 800022b0 <_Z41__static_initialization_and_destruction_0ii>
    80002404:	00813083          	ld	ra,8(sp)
    80002408:	00013403          	ld	s0,0(sp)
    8000240c:	01010113          	addi	sp,sp,16
    80002410:	00008067          	ret

0000000080002414 <_ZN13SemaforKernelD1Ev>:

SemaforKernel* SemaforKernel::open(int value){
  return new SemaforKernel(value);
}

SemaforKernel::~SemaforKernel(){
    80002414:	fd010113          	addi	sp,sp,-48
    80002418:	02113423          	sd	ra,40(sp)
    8000241c:	02813023          	sd	s0,32(sp)
    80002420:	00913c23          	sd	s1,24(sp)
    80002424:	01213823          	sd	s2,16(sp)
    80002428:	01313423          	sd	s3,8(sp)
    8000242c:	03010413          	addi	s0,sp,48
    80002430:	00050913          	mv	s2,a0
    80002434:	00009797          	auipc	a5,0x9
    80002438:	f4c78793          	addi	a5,a5,-180 # 8000b380 <_ZTV13SemaforKernel+0x10>
    8000243c:	00f53023          	sd	a5,0(a0)
    80002440:	0280006f          	j	80002468 <_ZN13SemaforKernelD1Ev+0x54>
        if (!head) { tail = 0; }
    80002444:	00093823          	sd	zero,16(s2)
        T *ret = elem->data;
    80002448:	0004b983          	ld	s3,0(s1)
         void operator delete(void *p) { MemoryAllocator::createAllocator()->dealloc(p); }
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	39c080e7          	jalr	924(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    80002454:	00048593          	mv	a1,s1
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	544080e7          	jalr	1348(ra) # 8000299c <_ZN15MemoryAllocator7deallocEPv>

  while(waitingThreads.peekLast()){
    TCB* go=waitingThreads.removeFirst();

  go->semDead=true;
    80002460:	00100793          	li	a5,1
    80002464:	02f984a3          	sb	a5,41(s3)
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
    80002468:	01093783          	ld	a5,16(s2)
    8000246c:	02078663          	beqz	a5,80002498 <_ZN13SemaforKernelD1Ev+0x84>
        return tail->data;
    80002470:	0007b783          	ld	a5,0(a5)
  while(waitingThreads.peekLast()){
    80002474:	02078263          	beqz	a5,80002498 <_ZN13SemaforKernelD1Ev+0x84>
        if (!head) { return 0; }
    80002478:	00893483          	ld	s1,8(s2)
    8000247c:	00048a63          	beqz	s1,80002490 <_ZN13SemaforKernelD1Ev+0x7c>
        head = head->next;
    80002480:	0084b783          	ld	a5,8(s1)
    80002484:	00f93423          	sd	a5,8(s2)
        if (!head) { tail = 0; }
    80002488:	fc0790e3          	bnez	a5,80002448 <_ZN13SemaforKernelD1Ev+0x34>
    8000248c:	fb9ff06f          	j	80002444 <_ZN13SemaforKernelD1Ev+0x30>
        if (!head) { return 0; }
    80002490:	00048993          	mv	s3,s1
    80002494:	fcdff06f          	j	80002460 <_ZN13SemaforKernelD1Ev+0x4c>
  }
}
    80002498:	02813083          	ld	ra,40(sp)
    8000249c:	02013403          	ld	s0,32(sp)
    800024a0:	01813483          	ld	s1,24(sp)
    800024a4:	01013903          	ld	s2,16(sp)
    800024a8:	00813983          	ld	s3,8(sp)
    800024ac:	03010113          	addi	sp,sp,48
    800024b0:	00008067          	ret

00000000800024b4 <_ZN13SemaforKernelD0Ev>:
SemaforKernel::~SemaforKernel(){
    800024b4:	fe010113          	addi	sp,sp,-32
    800024b8:	00113c23          	sd	ra,24(sp)
    800024bc:	00813823          	sd	s0,16(sp)
    800024c0:	00913423          	sd	s1,8(sp)
    800024c4:	02010413          	addi	s0,sp,32
    800024c8:	00050493          	mv	s1,a0
}
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	f48080e7          	jalr	-184(ra) # 80002414 <_ZN13SemaforKernelD1Ev>
  static SemaforKernel* open(int value);

  int close();

    void* operator new(size_t size){ return MemoryAllocator::createAllocator()->alloc(size); }
    void operator delete(void* p){ MemoryAllocator::createAllocator()->dealloc(p); }
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	314080e7          	jalr	788(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    800024dc:	00048593          	mv	a1,s1
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	4bc080e7          	jalr	1212(ra) # 8000299c <_ZN15MemoryAllocator7deallocEPv>
    800024e8:	01813083          	ld	ra,24(sp)
    800024ec:	01013403          	ld	s0,16(sp)
    800024f0:	00813483          	ld	s1,8(sp)
    800024f4:	02010113          	addi	sp,sp,32
    800024f8:	00008067          	ret

00000000800024fc <_ZN13SemaforKernelC1Ei>:
SemaforKernel::SemaforKernel(int value){
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00813423          	sd	s0,8(sp)
    80002504:	01010413          	addi	s0,sp,16
    80002508:	00009797          	auipc	a5,0x9
    8000250c:	e7878793          	addi	a5,a5,-392 # 8000b380 <_ZTV13SemaforKernel+0x10>
    80002510:	00f53023          	sd	a5,0(a0)
    List() : head(0), tail(0) {}
    80002514:	00053423          	sd	zero,8(a0)
    80002518:	00053823          	sd	zero,16(a0)
  val=value;
    8000251c:	00b52c23          	sw	a1,24(a0)
}
    80002520:	00813403          	ld	s0,8(sp)
    80002524:	01010113          	addi	sp,sp,16
    80002528:	00008067          	ret

000000008000252c <_ZN13SemaforKernel4openEi>:
SemaforKernel* SemaforKernel::open(int value){
    8000252c:	fe010113          	addi	sp,sp,-32
    80002530:	00113c23          	sd	ra,24(sp)
    80002534:	00813823          	sd	s0,16(sp)
    80002538:	00913423          	sd	s1,8(sp)
    8000253c:	01213023          	sd	s2,0(sp)
    80002540:	02010413          	addi	s0,sp,32
    80002544:	00050913          	mv	s2,a0
    void* operator new(size_t size){ return MemoryAllocator::createAllocator()->alloc(size); }
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	2a0080e7          	jalr	672(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    80002550:	02000593          	li	a1,32
    80002554:	00000097          	auipc	ra,0x0
    80002558:	310080e7          	jalr	784(ra) # 80002864 <_ZN15MemoryAllocator5allocEm>
    8000255c:	00050493          	mv	s1,a0
  return new SemaforKernel(value);
    80002560:	00090593          	mv	a1,s2
    80002564:	00000097          	auipc	ra,0x0
    80002568:	f98080e7          	jalr	-104(ra) # 800024fc <_ZN13SemaforKernelC1Ei>
}
    8000256c:	00048513          	mv	a0,s1
    80002570:	01813083          	ld	ra,24(sp)
    80002574:	01013403          	ld	s0,16(sp)
    80002578:	00813483          	ld	s1,8(sp)
    8000257c:	00013903          	ld	s2,0(sp)
    80002580:	02010113          	addi	sp,sp,32
    80002584:	00008067          	ret

0000000080002588 <_ZN13SemaforKernel4waitEv>:

int SemaforKernel::wait(){
  val--;
    80002588:	01852783          	lw	a5,24(a0)
    8000258c:	fff7879b          	addiw	a5,a5,-1
    80002590:	00f52c23          	sw	a5,24(a0)
  if(val<0){
    80002594:	02079713          	slli	a4,a5,0x20
    80002598:	02074063          	bltz	a4,800025b8 <_ZN13SemaforKernel4waitEv+0x30>
     TCB::running=newT;

     TCB::contextSwitch(&old->context,&newT->context);
  }

  if(TCB::running->semDead) return -1;
    8000259c:	00009797          	auipc	a5,0x9
    800025a0:	f447b783          	ld	a5,-188(a5) # 8000b4e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800025a4:	0007b783          	ld	a5,0(a5)
    800025a8:	0297c783          	lbu	a5,41(a5)
    800025ac:	0c079c63          	bnez	a5,80002684 <_ZN13SemaforKernel4waitEv+0xfc>
  else return 0;
    800025b0:	00000513          	li	a0,0
}
    800025b4:	00008067          	ret
int SemaforKernel::wait(){
    800025b8:	fd010113          	addi	sp,sp,-48
    800025bc:	02113423          	sd	ra,40(sp)
    800025c0:	02813023          	sd	s0,32(sp)
    800025c4:	00913c23          	sd	s1,24(sp)
    800025c8:	01213823          	sd	s2,16(sp)
    800025cc:	01313423          	sd	s3,8(sp)
    800025d0:	03010413          	addi	s0,sp,48
    800025d4:	00050493          	mv	s1,a0
    waitingThreads.addLast(TCB::running);
    800025d8:	00850913          	addi	s2,a0,8
    800025dc:	00009797          	auipc	a5,0x9
    800025e0:	f047b783          	ld	a5,-252(a5) # 8000b4e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800025e4:	0007b983          	ld	s3,0(a5)
         void *operator new(size_t size) { return MemoryAllocator::createAllocator()->alloc(size); }
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	200080e7          	jalr	512(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    800025f0:	01000593          	li	a1,16
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	270080e7          	jalr	624(ra) # 80002864 <_ZN15MemoryAllocator5allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800025fc:	01353023          	sd	s3,0(a0)
    80002600:	00053423          	sd	zero,8(a0)
        if (tail)
    80002604:	00893783          	ld	a5,8(s2)
    80002608:	06078463          	beqz	a5,80002670 <_ZN13SemaforKernel4waitEv+0xe8>
            tail->next = elem;
    8000260c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002610:	00a93423          	sd	a0,8(s2)
     TCB* old=TCB::running;
    80002614:	00009497          	auipc	s1,0x9
    80002618:	ecc4b483          	ld	s1,-308(s1) # 8000b4e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000261c:	0004b903          	ld	s2,0(s1)
     TCB* newT=Scheduler::get();
    80002620:	00000097          	auipc	ra,0x0
    80002624:	cd0080e7          	jalr	-816(ra) # 800022f0 <_ZN9Scheduler3getEv>
     TCB::running=newT;
    80002628:	00a4b023          	sd	a0,0(s1)
     TCB::contextSwitch(&old->context,&newT->context);
    8000262c:	01050593          	addi	a1,a0,16
    80002630:	01090513          	addi	a0,s2,16
    80002634:	fffff097          	auipc	ra,0xfffff
    80002638:	9cc080e7          	jalr	-1588(ra) # 80001000 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
  if(TCB::running->semDead) return -1;
    8000263c:	00009797          	auipc	a5,0x9
    80002640:	ea47b783          	ld	a5,-348(a5) # 8000b4e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002644:	0007b783          	ld	a5,0(a5)
    80002648:	0297c783          	lbu	a5,41(a5)
    8000264c:	02079863          	bnez	a5,8000267c <_ZN13SemaforKernel4waitEv+0xf4>
  else return 0;
    80002650:	00000513          	li	a0,0
}
    80002654:	02813083          	ld	ra,40(sp)
    80002658:	02013403          	ld	s0,32(sp)
    8000265c:	01813483          	ld	s1,24(sp)
    80002660:	01013903          	ld	s2,16(sp)
    80002664:	00813983          	ld	s3,8(sp)
    80002668:	03010113          	addi	sp,sp,48
    8000266c:	00008067          	ret
            head = tail = elem;
    80002670:	00a93423          	sd	a0,8(s2)
    80002674:	00a4b423          	sd	a0,8(s1)
    80002678:	f9dff06f          	j	80002614 <_ZN13SemaforKernel4waitEv+0x8c>
  if(TCB::running->semDead) return -1;
    8000267c:	fff00513          	li	a0,-1
    80002680:	fd5ff06f          	j	80002654 <_ZN13SemaforKernel4waitEv+0xcc>
    80002684:	fff00513          	li	a0,-1
    80002688:	00008067          	ret

000000008000268c <_ZN13SemaforKernel6signalEv>:

int SemaforKernel::signal(){
  val++;
    8000268c:	01852783          	lw	a5,24(a0)
    80002690:	0017879b          	addiw	a5,a5,1
    80002694:	0007871b          	sext.w	a4,a5
    80002698:	00f52c23          	sw	a5,24(a0)
  if(val<=0){
    8000269c:	00e05663          	blez	a4,800026a8 <_ZN13SemaforKernel6signalEv+0x1c>
    TCB* away=waitingThreads.removeFirst();
    if(away->isFinished()) return -1;
    Scheduler::put(away);

  }
  return 0;
    800026a0:	00000513          	li	a0,0
    800026a4:	00008067          	ret
        if (!head) { return 0; }
    800026a8:	00853783          	ld	a5,8(a0)
    800026ac:	08078863          	beqz	a5,8000273c <_ZN13SemaforKernel6signalEv+0xb0>
        return head->data;
    800026b0:	0007b783          	ld	a5,0(a5)
    if(!waitingThreads.peekFirst()) return -1;
    800026b4:	08078863          	beqz	a5,80002744 <_ZN13SemaforKernel6signalEv+0xb8>
int SemaforKernel::signal(){
    800026b8:	fe010113          	addi	sp,sp,-32
    800026bc:	00113c23          	sd	ra,24(sp)
    800026c0:	00813823          	sd	s0,16(sp)
    800026c4:	00913423          	sd	s1,8(sp)
    800026c8:	01213023          	sd	s2,0(sp)
    800026cc:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800026d0:	00853483          	ld	s1,8(a0)
    800026d4:	06048063          	beqz	s1,80002734 <_ZN13SemaforKernel6signalEv+0xa8>
        head = head->next;
    800026d8:	0084b783          	ld	a5,8(s1)
    800026dc:	00f53423          	sd	a5,8(a0)
        if (!head) { tail = 0; }
    800026e0:	04078663          	beqz	a5,8000272c <_ZN13SemaforKernel6signalEv+0xa0>
        T *ret = elem->data;
    800026e4:	0004b903          	ld	s2,0(s1)
         void operator delete(void *p) { MemoryAllocator::createAllocator()->dealloc(p); }
    800026e8:	00000097          	auipc	ra,0x0
    800026ec:	100080e7          	jalr	256(ra) # 800027e8 <_ZN15MemoryAllocator15createAllocatorEv>
    800026f0:	00048593          	mv	a1,s1
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	2a8080e7          	jalr	680(ra) # 8000299c <_ZN15MemoryAllocator7deallocEPv>

    friend class SemaforKernel;

    using ThreadFunction=void (*)(void*);

    bool isFinished() const{ return finished; }
    800026fc:	02894783          	lbu	a5,40(s2)
    if(away->isFinished()) return -1;
    80002700:	04079663          	bnez	a5,8000274c <_ZN13SemaforKernel6signalEv+0xc0>
    Scheduler::put(away);
    80002704:	00090513          	mv	a0,s2
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	c64080e7          	jalr	-924(ra) # 8000236c <_ZN9Scheduler3putEP3TCB>
  return 0;
    80002710:	00000513          	li	a0,0
}
    80002714:	01813083          	ld	ra,24(sp)
    80002718:	01013403          	ld	s0,16(sp)
    8000271c:	00813483          	ld	s1,8(sp)
    80002720:	00013903          	ld	s2,0(sp)
    80002724:	02010113          	addi	sp,sp,32
    80002728:	00008067          	ret
        if (!head) { tail = 0; }
    8000272c:	00053823          	sd	zero,16(a0)
    80002730:	fb5ff06f          	j	800026e4 <_ZN13SemaforKernel6signalEv+0x58>
        if (!head) { return 0; }
    80002734:	00048913          	mv	s2,s1
    80002738:	fc5ff06f          	j	800026fc <_ZN13SemaforKernel6signalEv+0x70>
    if(!waitingThreads.peekFirst()) return -1;
    8000273c:	fff00513          	li	a0,-1
    80002740:	00008067          	ret
    80002744:	fff00513          	li	a0,-1
}
    80002748:	00008067          	ret
    if(away->isFinished()) return -1;
    8000274c:	fff00513          	li	a0,-1
    80002750:	fc5ff06f          	j	80002714 <_ZN13SemaforKernel6signalEv+0x88>

0000000080002754 <_Z41__static_initialization_and_destruction_0ii>:
        left->size += sizeof(FreeBlock) + right->size;
        left->next = right->next;
        return true;
    }
    return false;
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00813423          	sd	s0,8(sp)
    8000275c:	01010413          	addi	s0,sp,16
    80002760:	00100793          	li	a5,1
    80002764:	00f50863          	beq	a0,a5,80002774 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002768:	00813403          	ld	s0,8(sp)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret
    80002774:	000107b7          	lui	a5,0x10
    80002778:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000277c:	fef596e3          	bne	a1,a5,80002768 <_Z41__static_initialization_and_destruction_0ii+0x14>
size_t MemoryAllocator::sizeHeap = (size_t)((char*)(HEAP_END_ADDR) - (char*)(HEAP_START_ADDR));
    80002780:	00009797          	auipc	a5,0x9
    80002784:	d687b783          	ld	a5,-664(a5) # 8000b4e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002788:	0007b783          	ld	a5,0(a5)
    8000278c:	00009717          	auipc	a4,0x9
    80002790:	d3c73703          	ld	a4,-708(a4) # 8000b4c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002794:	00073703          	ld	a4,0(a4)
    80002798:	40e787b3          	sub	a5,a5,a4
    8000279c:	00009717          	auipc	a4,0x9
    800027a0:	dcf73223          	sd	a5,-572(a4) # 8000b560 <_ZN15MemoryAllocator8sizeHeapE>
    800027a4:	fc5ff06f          	j	80002768 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800027a8 <_ZN15MemoryAllocatorC1Ev>:
MemoryAllocator::MemoryAllocator(){
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00813423          	sd	s0,8(sp)
    800027b0:	01010413          	addi	s0,sp,16
  blockHead=(FreeBlock*)((uint8*)HEAP_START_ADDR);
    800027b4:	00009797          	auipc	a5,0x9
    800027b8:	d147b783          	ld	a5,-748(a5) # 8000b4c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800027bc:	0007b783          	ld	a5,0(a5)
    800027c0:	00f53023          	sd	a5,0(a0)
  blockHead->next=nullptr;
    800027c4:	0007b423          	sd	zero,8(a5)
  blockHead->size=sizeHeap-sizeof(FreeBlock);
    800027c8:	00053703          	ld	a4,0(a0)
    800027cc:	00009797          	auipc	a5,0x9
    800027d0:	d947b783          	ld	a5,-620(a5) # 8000b560 <_ZN15MemoryAllocator8sizeHeapE>
    800027d4:	ff078793          	addi	a5,a5,-16
    800027d8:	00f73023          	sd	a5,0(a4)
}
    800027dc:	00813403          	ld	s0,8(sp)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret

00000000800027e8 <_ZN15MemoryAllocator15createAllocatorEv>:
MemoryAllocator* MemoryAllocator::createAllocator() {
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00813423          	sd	s0,8(sp)
    800027f0:	01010413          	addi	s0,sp,16
    if(!allocator){
    800027f4:	00009797          	auipc	a5,0x9
    800027f8:	d747b783          	ld	a5,-652(a5) # 8000b568 <_ZN15MemoryAllocator9allocatorE>
    800027fc:	00078c63          	beqz	a5,80002814 <_ZN15MemoryAllocator15createAllocatorEv+0x2c>
}
    80002800:	00009517          	auipc	a0,0x9
    80002804:	d6853503          	ld	a0,-664(a0) # 8000b568 <_ZN15MemoryAllocator9allocatorE>
    80002808:	00813403          	ld	s0,8(sp)
    8000280c:	01010113          	addi	sp,sp,16
    80002810:	00008067          	ret
        allocator = (MemoryAllocator*) HEAP_START_ADDR;
    80002814:	00009697          	auipc	a3,0x9
    80002818:	cb46b683          	ld	a3,-844(a3) # 8000b4c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000281c:	0006b783          	ld	a5,0(a3)
    80002820:	00009717          	auipc	a4,0x9
    80002824:	d4070713          	addi	a4,a4,-704 # 8000b560 <_ZN15MemoryAllocator8sizeHeapE>
    80002828:	00f73423          	sd	a5,8(a4)
        allocator->blockHead = (FreeBlock*) ((char*) HEAP_START_ADDR + sizeof(MemoryAllocator));
    8000282c:	00878613          	addi	a2,a5,8
    80002830:	00c7b023          	sd	a2,0(a5)
        allocator->blockHead->next= nullptr;
    80002834:	00873703          	ld	a4,8(a4)
    80002838:	00073783          	ld	a5,0(a4)
    8000283c:	0007b423          	sd	zero,8(a5)
        allocator->blockHead->size = (char*) HEAP_END_ADDR - (char*) HEAP_START_ADDR - sizeof(MemoryAllocator) - sizeof(blockHead);
    80002840:	00009797          	auipc	a5,0x9
    80002844:	ca87b783          	ld	a5,-856(a5) # 8000b4e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002848:	0007b783          	ld	a5,0(a5)
    8000284c:	0006b683          	ld	a3,0(a3)
    80002850:	40d787b3          	sub	a5,a5,a3
    80002854:	00073703          	ld	a4,0(a4)
    80002858:	ff078793          	addi	a5,a5,-16
    8000285c:	00f73023          	sd	a5,0(a4)
    80002860:	fa1ff06f          	j	80002800 <_ZN15MemoryAllocator15createAllocatorEv+0x18>

0000000080002864 <_ZN15MemoryAllocator5allocEm>:
void* MemoryAllocator::alloc(size_t size) {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00813423          	sd	s0,8(sp)
    8000286c:	01010413          	addi	s0,sp,16
    if(size>(size_t)((char*)(HEAP_END_ADDR) - (char*)(HEAP_START_ADDR))) return nullptr;
    80002870:	00009797          	auipc	a5,0x9
    80002874:	c787b783          	ld	a5,-904(a5) # 8000b4e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002878:	0007b783          	ld	a5,0(a5)
    8000287c:	00009717          	auipc	a4,0x9
    80002880:	c4c73703          	ld	a4,-948(a4) # 8000b4c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002884:	00073703          	ld	a4,0(a4)
    80002888:	40e787b3          	sub	a5,a5,a4
    8000288c:	08b7ee63          	bltu	a5,a1,80002928 <_ZN15MemoryAllocator5allocEm+0xc4>
    80002890:	00050693          	mv	a3,a0
    if(size <= 0) return nullptr;
    80002894:	08058e63          	beqz	a1,80002930 <_ZN15MemoryAllocator5allocEm+0xcc>
    FreeBlock* curr=blockHead;
    80002898:	00053503          	ld	a0,0(a0)
    FreeBlock* prev=nullptr;
    8000289c:	00000713          	li	a4,0
    while(curr && curr->size < size){
    800028a0:	00050c63          	beqz	a0,800028b8 <_ZN15MemoryAllocator5allocEm+0x54>
    800028a4:	00053783          	ld	a5,0(a0)
    800028a8:	00b7f863          	bgeu	a5,a1,800028b8 <_ZN15MemoryAllocator5allocEm+0x54>
      prev=curr;
    800028ac:	00050713          	mv	a4,a0
      curr=curr->next;
    800028b0:	00853503          	ld	a0,8(a0)
    while(curr && curr->size < size){
    800028b4:	fedff06f          	j	800028a0 <_ZN15MemoryAllocator5allocEm+0x3c>
    if(!curr) return nullptr;
    800028b8:	04050063          	beqz	a0,800028f8 <_ZN15MemoryAllocator5allocEm+0x94>
    size_t rest=curr->size-size;
    800028bc:	00053783          	ld	a5,0(a0)
    800028c0:	40b787b3          	sub	a5,a5,a1
    if(rest>=sizeof(FreeBlock) + MEM_BLOCK_SIZE){
    800028c4:	04f00613          	li	a2,79
    800028c8:	04f67263          	bgeu	a2,a5,8000290c <_ZN15MemoryAllocator5allocEm+0xa8>
      curr->size=size;
    800028cc:	00b53023          	sd	a1,0(a0)
      FreeBlock* newBlock= (FreeBlock*)((char*)curr +  size + sizeof(FreeBlock));
    800028d0:	01058593          	addi	a1,a1,16
    800028d4:	00b505b3          	add	a1,a0,a1
      newBlock->size=rest-sizeof(FreeBlock);
    800028d8:	ff078793          	addi	a5,a5,-16
    800028dc:	00f5b023          	sd	a5,0(a1)
      if(prev) prev->next=newBlock;
    800028e0:	02070263          	beqz	a4,80002904 <_ZN15MemoryAllocator5allocEm+0xa0>
    800028e4:	00b73423          	sd	a1,8(a4)
      newBlock->next = curr->next;
    800028e8:	00853783          	ld	a5,8(a0)
    800028ec:	00f5b423          	sd	a5,8(a1)
    curr->next = nullptr;
    800028f0:	00053423          	sd	zero,8(a0)
    return (char*)curr+sizeof(FreeBlock);
    800028f4:	01050513          	addi	a0,a0,16
}
    800028f8:	00813403          	ld	s0,8(sp)
    800028fc:	01010113          	addi	sp,sp,16
    80002900:	00008067          	ret
      else blockHead=newBlock;
    80002904:	00b6b023          	sd	a1,0(a3)
    80002908:	fe1ff06f          	j	800028e8 <_ZN15MemoryAllocator5allocEm+0x84>
      if(prev) prev->next=curr->next;
    8000290c:	00070863          	beqz	a4,8000291c <_ZN15MemoryAllocator5allocEm+0xb8>
    80002910:	00853783          	ld	a5,8(a0)
    80002914:	00f73423          	sd	a5,8(a4)
    80002918:	fd9ff06f          	j	800028f0 <_ZN15MemoryAllocator5allocEm+0x8c>
      else blockHead=curr->next;
    8000291c:	00853783          	ld	a5,8(a0)
    80002920:	00f6b023          	sd	a5,0(a3)
    80002924:	fcdff06f          	j	800028f0 <_ZN15MemoryAllocator5allocEm+0x8c>
    if(size>(size_t)((char*)(HEAP_END_ADDR) - (char*)(HEAP_START_ADDR))) return nullptr;
    80002928:	00000513          	li	a0,0
    8000292c:	fcdff06f          	j	800028f8 <_ZN15MemoryAllocator5allocEm+0x94>
    if(size <= 0) return nullptr;
    80002930:	00000513          	li	a0,0
    80002934:	fc5ff06f          	j	800028f8 <_ZN15MemoryAllocator5allocEm+0x94>

0000000080002938 <_ZN15MemoryAllocator11mergeBlocksEPNS_9FreeBlockES1_>:
bool MemoryAllocator::mergeBlocks(FreeBlock* left, FreeBlock* right) {
    80002938:	ff010113          	addi	sp,sp,-16
    8000293c:	00813423          	sd	s0,8(sp)
    80002940:	01010413          	addi	s0,sp,16
    if (left && right && (char*)left + sizeof(FreeBlock) + left->size == (char*)right) {
    80002944:	04058463          	beqz	a1,8000298c <_ZN15MemoryAllocator11mergeBlocksEPNS_9FreeBlockES1_+0x54>
    80002948:	04060663          	beqz	a2,80002994 <_ZN15MemoryAllocator11mergeBlocksEPNS_9FreeBlockES1_+0x5c>
    8000294c:	0005b703          	ld	a4,0(a1)
    80002950:	01070793          	addi	a5,a4,16
    80002954:	00f587b3          	add	a5,a1,a5
    80002958:	00c78a63          	beq	a5,a2,8000296c <_ZN15MemoryAllocator11mergeBlocksEPNS_9FreeBlockES1_+0x34>
    return false;
    8000295c:	00000513          	li	a0,0
    80002960:	00813403          	ld	s0,8(sp)
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00008067          	ret
        left->size += sizeof(FreeBlock) + right->size;
    8000296c:	00063783          	ld	a5,0(a2)
    80002970:	00f70733          	add	a4,a4,a5
    80002974:	01070713          	addi	a4,a4,16
    80002978:	00e5b023          	sd	a4,0(a1)
        left->next = right->next;
    8000297c:	00863783          	ld	a5,8(a2)
    80002980:	00f5b423          	sd	a5,8(a1)
        return true;
    80002984:	00100513          	li	a0,1
    80002988:	fd9ff06f          	j	80002960 <_ZN15MemoryAllocator11mergeBlocksEPNS_9FreeBlockES1_+0x28>
    return false;
    8000298c:	00000513          	li	a0,0
    80002990:	fd1ff06f          	j	80002960 <_ZN15MemoryAllocator11mergeBlocksEPNS_9FreeBlockES1_+0x28>
    80002994:	00000513          	li	a0,0
    80002998:	fc9ff06f          	j	80002960 <_ZN15MemoryAllocator11mergeBlocksEPNS_9FreeBlockES1_+0x28>

000000008000299c <_ZN15MemoryAllocator7deallocEPv>:
      if(p==nullptr) return -1;
    8000299c:	0a058263          	beqz	a1,80002a40 <_ZN15MemoryAllocator7deallocEPv+0xa4>
int MemoryAllocator::dealloc(void* p) {
    800029a0:	fd010113          	addi	sp,sp,-48
    800029a4:	02113423          	sd	ra,40(sp)
    800029a8:	02813023          	sd	s0,32(sp)
    800029ac:	00913c23          	sd	s1,24(sp)
    800029b0:	01213823          	sd	s2,16(sp)
    800029b4:	01313423          	sd	s3,8(sp)
    800029b8:	03010413          	addi	s0,sp,48
    800029bc:	00050993          	mv	s3,a0
      FreeBlock* block=(FreeBlock*)((char*)p - sizeof(FreeBlock));
    800029c0:	ff058493          	addi	s1,a1,-16
      if(!block || block->next) return -1;
    800029c4:	08048263          	beqz	s1,80002a48 <_ZN15MemoryAllocator7deallocEPv+0xac>
    800029c8:	ff85b903          	ld	s2,-8(a1)
    800029cc:	08091263          	bnez	s2,80002a50 <_ZN15MemoryAllocator7deallocEPv+0xb4>
      FreeBlock* curr=blockHead;
    800029d0:	00053603          	ld	a2,0(a0)
      while(curr && (char*)curr < (char*)block){
    800029d4:	00060a63          	beqz	a2,800029e8 <_ZN15MemoryAllocator7deallocEPv+0x4c>
    800029d8:	00967863          	bgeu	a2,s1,800029e8 <_ZN15MemoryAllocator7deallocEPv+0x4c>
          prev=curr;
    800029dc:	00060913          	mv	s2,a2
          curr=curr->next;
    800029e0:	00863603          	ld	a2,8(a2)
      while(curr && (char*)curr < (char*)block){
    800029e4:	ff1ff06f          	j	800029d4 <_ZN15MemoryAllocator7deallocEPv+0x38>
      block->next=curr;
    800029e8:	fec5bc23          	sd	a2,-8(a1)
      if(prev) prev->next=block;
    800029ec:	04090663          	beqz	s2,80002a38 <_ZN15MemoryAllocator7deallocEPv+0x9c>
    800029f0:	00993423          	sd	s1,8(s2)
      mergeBlocks(block, curr);
    800029f4:	00048593          	mv	a1,s1
    800029f8:	00098513          	mv	a0,s3
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	f3c080e7          	jalr	-196(ra) # 80002938 <_ZN15MemoryAllocator11mergeBlocksEPNS_9FreeBlockES1_>
      mergeBlocks(prev, block);
    80002a04:	00048613          	mv	a2,s1
    80002a08:	00090593          	mv	a1,s2
    80002a0c:	00098513          	mv	a0,s3
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	f28080e7          	jalr	-216(ra) # 80002938 <_ZN15MemoryAllocator11mergeBlocksEPNS_9FreeBlockES1_>
      return 0;
    80002a18:	00000513          	li	a0,0
}
    80002a1c:	02813083          	ld	ra,40(sp)
    80002a20:	02013403          	ld	s0,32(sp)
    80002a24:	01813483          	ld	s1,24(sp)
    80002a28:	01013903          	ld	s2,16(sp)
    80002a2c:	00813983          	ld	s3,8(sp)
    80002a30:	03010113          	addi	sp,sp,48
    80002a34:	00008067          	ret
      else blockHead=block;
    80002a38:	0099b023          	sd	s1,0(s3)
    80002a3c:	fb9ff06f          	j	800029f4 <_ZN15MemoryAllocator7deallocEPv+0x58>
      if(p==nullptr) return -1;
    80002a40:	fff00513          	li	a0,-1
}
    80002a44:	00008067          	ret
      if(!block || block->next) return -1;
    80002a48:	fff00513          	li	a0,-1
    80002a4c:	fd1ff06f          	j	80002a1c <_ZN15MemoryAllocator7deallocEPv+0x80>
    80002a50:	fff00513          	li	a0,-1
    80002a54:	fc9ff06f          	j	80002a1c <_ZN15MemoryAllocator7deallocEPv+0x80>

0000000080002a58 <_GLOBAL__sub_I__ZN15MemoryAllocator9allocatorE>:
    80002a58:	ff010113          	addi	sp,sp,-16
    80002a5c:	00113423          	sd	ra,8(sp)
    80002a60:	00813023          	sd	s0,0(sp)
    80002a64:	01010413          	addi	s0,sp,16
    80002a68:	000105b7          	lui	a1,0x10
    80002a6c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a70:	00100513          	li	a0,1
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	ce0080e7          	jalr	-800(ra) # 80002754 <_Z41__static_initialization_and_destruction_0ii>
    80002a7c:	00813083          	ld	ra,8(sp)
    80002a80:	00013403          	ld	s0,0(sp)
    80002a84:	01010113          	addi	sp,sp,16
    80002a88:	00008067          	ret

0000000080002a8c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002a8c:	fe010113          	addi	sp,sp,-32
    80002a90:	00113c23          	sd	ra,24(sp)
    80002a94:	00813823          	sd	s0,16(sp)
    80002a98:	00913423          	sd	s1,8(sp)
    80002a9c:	01213023          	sd	s2,0(sp)
    80002aa0:	02010413          	addi	s0,sp,32
    80002aa4:	00050493          	mv	s1,a0
    printString(">>> Keyboard producer started\n");
    80002aa8:	00007517          	auipc	a0,0x7
    80002aac:	94850513          	addi	a0,a0,-1720 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80002ab0:	00002097          	auipc	ra,0x2
    80002ab4:	d9c080e7          	jalr	-612(ra) # 8000484c <_Z11printStringPKc>
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002ab8:	00000913          	li	s2,0
    80002abc:	00c0006f          	j	80002ac8 <_ZL16producerKeyboardPv+0x3c>
//        printString("\n");
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ac0:	ffffe097          	auipc	ra,0xffffe
    80002ac4:	7c0080e7          	jalr	1984(ra) # 80001280 <_Z15thread_dispatchv>
    while ((key = getc()) != '$') {
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	91c080e7          	jalr	-1764(ra) # 800013e4 <_Z4getcv>
    80002ad0:	0005059b          	sext.w	a1,a0
    80002ad4:	02400793          	li	a5,36
    80002ad8:	02f58a63          	beq	a1,a5,80002b0c <_ZL16producerKeyboardPv+0x80>
        data->buffer->put(key);
    80002adc:	0084b503          	ld	a0,8(s1)
    80002ae0:	00003097          	auipc	ra,0x3
    80002ae4:	520080e7          	jalr	1312(ra) # 80006000 <_ZN6Buffer3putEi>
        i++;
    80002ae8:	0019071b          	addiw	a4,s2,1
    80002aec:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002af0:	0004a683          	lw	a3,0(s1)
    80002af4:	0026979b          	slliw	a5,a3,0x2
    80002af8:	00d787bb          	addw	a5,a5,a3
    80002afc:	0017979b          	slliw	a5,a5,0x1
    80002b00:	02f767bb          	remw	a5,a4,a5
    80002b04:	fc0792e3          	bnez	a5,80002ac8 <_ZL16producerKeyboardPv+0x3c>
    80002b08:	fb9ff06f          	j	80002ac0 <_ZL16producerKeyboardPv+0x34>
        }
    }
    printString(">>> Keyboard producer ending (ESC pressed)\n");
    80002b0c:	00007517          	auipc	a0,0x7
    80002b10:	90450513          	addi	a0,a0,-1788 # 80009410 <CONSOLE_STATUS+0x400>
    80002b14:	00002097          	auipc	ra,0x2
    80002b18:	d38080e7          	jalr	-712(ra) # 8000484c <_Z11printStringPKc>

    threadEnd = 1;
    80002b1c:	00100793          	li	a5,1
    80002b20:	00009717          	auipc	a4,0x9
    80002b24:	a4f72823          	sw	a5,-1456(a4) # 8000b570 <_ZL9threadEnd>
    data->buffer->put('!');
    80002b28:	02100593          	li	a1,33
    80002b2c:	0084b503          	ld	a0,8(s1)
    80002b30:	00003097          	auipc	ra,0x3
    80002b34:	4d0080e7          	jalr	1232(ra) # 80006000 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002b38:	0104b503          	ld	a0,16(s1)
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	85c080e7          	jalr	-1956(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>
}
    80002b44:	01813083          	ld	ra,24(sp)
    80002b48:	01013403          	ld	s0,16(sp)
    80002b4c:	00813483          	ld	s1,8(sp)
    80002b50:	00013903          	ld	s2,0(sp)
    80002b54:	02010113          	addi	sp,sp,32
    80002b58:	00008067          	ret

0000000080002b5c <_ZL8producerPv>:

static void producer(void *arg) {
    80002b5c:	fe010113          	addi	sp,sp,-32
    80002b60:	00113c23          	sd	ra,24(sp)
    80002b64:	00813823          	sd	s0,16(sp)
    80002b68:	00913423          	sd	s1,8(sp)
    80002b6c:	01213023          	sd	s2,0(sp)
    80002b70:	02010413          	addi	s0,sp,32
    80002b74:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;
    printString(">>> Producer "); printInt(data->id); printString(" started\n");
    80002b78:	00007517          	auipc	a0,0x7
    80002b7c:	8c850513          	addi	a0,a0,-1848 # 80009440 <CONSOLE_STATUS+0x430>
    80002b80:	00002097          	auipc	ra,0x2
    80002b84:	ccc080e7          	jalr	-820(ra) # 8000484c <_Z11printStringPKc>
    80002b88:	00000613          	li	a2,0
    80002b8c:	00a00593          	li	a1,10
    80002b90:	0004a503          	lw	a0,0(s1)
    80002b94:	00002097          	auipc	ra,0x2
    80002b98:	e68080e7          	jalr	-408(ra) # 800049fc <_Z8printIntiii>
    80002b9c:	00007517          	auipc	a0,0x7
    80002ba0:	8b450513          	addi	a0,a0,-1868 # 80009450 <CONSOLE_STATUS+0x440>
    80002ba4:	00002097          	auipc	ra,0x2
    80002ba8:	ca8080e7          	jalr	-856(ra) # 8000484c <_Z11printStringPKc>
    int i = 0;
    80002bac:	00000913          	li	s2,0
    80002bb0:	00c0006f          	j	80002bbc <_ZL8producerPv+0x60>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002bb4:	ffffe097          	auipc	ra,0xffffe
    80002bb8:	6cc080e7          	jalr	1740(ra) # 80001280 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002bbc:	00009797          	auipc	a5,0x9
    80002bc0:	9b47a783          	lw	a5,-1612(a5) # 8000b570 <_ZL9threadEnd>
    80002bc4:	02079e63          	bnez	a5,80002c00 <_ZL8producerPv+0xa4>
        data->buffer->put(data->id + '0');
    80002bc8:	0004a583          	lw	a1,0(s1)
    80002bcc:	0305859b          	addiw	a1,a1,48
    80002bd0:	0084b503          	ld	a0,8(s1)
    80002bd4:	00003097          	auipc	ra,0x3
    80002bd8:	42c080e7          	jalr	1068(ra) # 80006000 <_ZN6Buffer3putEi>
        i++;
    80002bdc:	0019071b          	addiw	a4,s2,1
    80002be0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002be4:	0004a683          	lw	a3,0(s1)
    80002be8:	0026979b          	slliw	a5,a3,0x2
    80002bec:	00d787bb          	addw	a5,a5,a3
    80002bf0:	0017979b          	slliw	a5,a5,0x1
    80002bf4:	02f767bb          	remw	a5,a4,a5
    80002bf8:	fc0792e3          	bnez	a5,80002bbc <_ZL8producerPv+0x60>
    80002bfc:	fb9ff06f          	j	80002bb4 <_ZL8producerPv+0x58>
        }
    }

    sem_signal(data->wait);
    80002c00:	0104b503          	ld	a0,16(s1)
    80002c04:	ffffe097          	auipc	ra,0xffffe
    80002c08:	794080e7          	jalr	1940(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>
    printString(">>> Producer "); printInt(data->id); printString(" finished\n");
    80002c0c:	00007517          	auipc	a0,0x7
    80002c10:	83450513          	addi	a0,a0,-1996 # 80009440 <CONSOLE_STATUS+0x430>
    80002c14:	00002097          	auipc	ra,0x2
    80002c18:	c38080e7          	jalr	-968(ra) # 8000484c <_Z11printStringPKc>
    80002c1c:	00000613          	li	a2,0
    80002c20:	00a00593          	li	a1,10
    80002c24:	0004a503          	lw	a0,0(s1)
    80002c28:	00002097          	auipc	ra,0x2
    80002c2c:	dd4080e7          	jalr	-556(ra) # 800049fc <_Z8printIntiii>
    80002c30:	00007517          	auipc	a0,0x7
    80002c34:	83050513          	addi	a0,a0,-2000 # 80009460 <CONSOLE_STATUS+0x450>
    80002c38:	00002097          	auipc	ra,0x2
    80002c3c:	c14080e7          	jalr	-1004(ra) # 8000484c <_Z11printStringPKc>

}
    80002c40:	01813083          	ld	ra,24(sp)
    80002c44:	01013403          	ld	s0,16(sp)
    80002c48:	00813483          	ld	s1,8(sp)
    80002c4c:	00013903          	ld	s2,0(sp)
    80002c50:	02010113          	addi	sp,sp,32
    80002c54:	00008067          	ret

0000000080002c58 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002c58:	fd010113          	addi	sp,sp,-48
    80002c5c:	02113423          	sd	ra,40(sp)
    80002c60:	02813023          	sd	s0,32(sp)
    80002c64:	00913c23          	sd	s1,24(sp)
    80002c68:	01213823          	sd	s2,16(sp)
    80002c6c:	01313423          	sd	s3,8(sp)
    80002c70:	03010413          	addi	s0,sp,48
    80002c74:	00050913          	mv	s2,a0
    printString(">>> Consumer started\n");
    80002c78:	00006517          	auipc	a0,0x6
    80002c7c:	7f850513          	addi	a0,a0,2040 # 80009470 <CONSOLE_STATUS+0x460>
    80002c80:	00002097          	auipc	ra,0x2
    80002c84:	bcc080e7          	jalr	-1076(ra) # 8000484c <_Z11printStringPKc>
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002c88:	00000993          	li	s3,0
    80002c8c:	01c0006f          	j	80002ca8 <_ZL8consumerPv+0x50>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002c90:	ffffe097          	auipc	ra,0xffffe
    80002c94:	5f0080e7          	jalr	1520(ra) # 80001280 <_Z15thread_dispatchv>
    80002c98:	0500006f          	j	80002ce8 <_ZL8consumerPv+0x90>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002c9c:	00a00513          	li	a0,10
    80002ca0:	ffffe097          	auipc	ra,0xffffe
    80002ca4:	770080e7          	jalr	1904(ra) # 80001410 <_Z4putcc>
    while (!threadEnd) {
    80002ca8:	00009797          	auipc	a5,0x9
    80002cac:	8c87a783          	lw	a5,-1848(a5) # 8000b570 <_ZL9threadEnd>
    80002cb0:	04079463          	bnez	a5,80002cf8 <_ZL8consumerPv+0xa0>
        int key = data->buffer->get();
    80002cb4:	00893503          	ld	a0,8(s2)
    80002cb8:	00003097          	auipc	ra,0x3
    80002cbc:	3d8080e7          	jalr	984(ra) # 80006090 <_ZN6Buffer3getEv>
        i++;
    80002cc0:	0019849b          	addiw	s1,s3,1
    80002cc4:	0004899b          	sext.w	s3,s1
        putc(key);
    80002cc8:	0ff57513          	andi	a0,a0,255
    80002ccc:	ffffe097          	auipc	ra,0xffffe
    80002cd0:	744080e7          	jalr	1860(ra) # 80001410 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002cd4:	00092703          	lw	a4,0(s2)
    80002cd8:	0027179b          	slliw	a5,a4,0x2
    80002cdc:	00e787bb          	addw	a5,a5,a4
    80002ce0:	02f4e7bb          	remw	a5,s1,a5
    80002ce4:	fa0786e3          	beqz	a5,80002c90 <_ZL8consumerPv+0x38>
        if (i % 80 == 0) {
    80002ce8:	05000793          	li	a5,80
    80002cec:	02f4e4bb          	remw	s1,s1,a5
    80002cf0:	fa049ce3          	bnez	s1,80002ca8 <_ZL8consumerPv+0x50>
    80002cf4:	fa9ff06f          	j	80002c9c <_ZL8consumerPv+0x44>
        }
    }
    printString(">>> Consumer finishing — draining buffer\n");
    80002cf8:	00006517          	auipc	a0,0x6
    80002cfc:	79050513          	addi	a0,a0,1936 # 80009488 <CONSOLE_STATUS+0x478>
    80002d00:	00002097          	auipc	ra,0x2
    80002d04:	b4c080e7          	jalr	-1204(ra) # 8000484c <_Z11printStringPKc>
    80002d08:	01c0006f          	j	80002d24 <_ZL8consumerPv+0xcc>

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002d0c:	00893503          	ld	a0,8(s2)
    80002d10:	00003097          	auipc	ra,0x3
    80002d14:	380080e7          	jalr	896(ra) # 80006090 <_ZN6Buffer3getEv>
        putc(key);
    80002d18:	0ff57513          	andi	a0,a0,255
    80002d1c:	ffffe097          	auipc	ra,0xffffe
    80002d20:	6f4080e7          	jalr	1780(ra) # 80001410 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002d24:	00893503          	ld	a0,8(s2)
    80002d28:	00003097          	auipc	ra,0x3
    80002d2c:	3f4080e7          	jalr	1012(ra) # 8000611c <_ZN6Buffer6getCntEv>
    80002d30:	fca04ee3          	bgtz	a0,80002d0c <_ZL8consumerPv+0xb4>
    }

    sem_signal(data->wait);
    80002d34:	01093503          	ld	a0,16(s2)
    80002d38:	ffffe097          	auipc	ra,0xffffe
    80002d3c:	660080e7          	jalr	1632(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>
    printString(">>> Consumer finished\n");
    80002d40:	00006517          	auipc	a0,0x6
    80002d44:	77850513          	addi	a0,a0,1912 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80002d48:	00002097          	auipc	ra,0x2
    80002d4c:	b04080e7          	jalr	-1276(ra) # 8000484c <_Z11printStringPKc>
}
    80002d50:	02813083          	ld	ra,40(sp)
    80002d54:	02013403          	ld	s0,32(sp)
    80002d58:	01813483          	ld	s1,24(sp)
    80002d5c:	01013903          	ld	s2,16(sp)
    80002d60:	00813983          	ld	s3,8(sp)
    80002d64:	03010113          	addi	sp,sp,48
    80002d68:	00008067          	ret

0000000080002d6c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002d6c:	f9010113          	addi	sp,sp,-112
    80002d70:	06113423          	sd	ra,104(sp)
    80002d74:	06813023          	sd	s0,96(sp)
    80002d78:	04913c23          	sd	s1,88(sp)
    80002d7c:	05213823          	sd	s2,80(sp)
    80002d80:	05313423          	sd	s3,72(sp)
    80002d84:	05413023          	sd	s4,64(sp)
    80002d88:	03513c23          	sd	s5,56(sp)
    80002d8c:	03613823          	sd	s6,48(sp)
    80002d90:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002d94:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002d98:	00006517          	auipc	a0,0x6
    80002d9c:	73850513          	addi	a0,a0,1848 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80002da0:	00002097          	auipc	ra,0x2
    80002da4:	aac080e7          	jalr	-1364(ra) # 8000484c <_Z11printStringPKc>
    getString(input, 30);
    80002da8:	01e00593          	li	a1,30
    80002dac:	fa040493          	addi	s1,s0,-96
    80002db0:	00048513          	mv	a0,s1
    80002db4:	00002097          	auipc	ra,0x2
    80002db8:	b20080e7          	jalr	-1248(ra) # 800048d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002dbc:	00048513          	mv	a0,s1
    80002dc0:	00002097          	auipc	ra,0x2
    80002dc4:	bec080e7          	jalr	-1044(ra) # 800049ac <_Z11stringToIntPKc>
    80002dc8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002dcc:	00006517          	auipc	a0,0x6
    80002dd0:	72450513          	addi	a0,a0,1828 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80002dd4:	00002097          	auipc	ra,0x2
    80002dd8:	a78080e7          	jalr	-1416(ra) # 8000484c <_Z11printStringPKc>
    getString(input, 30);
    80002ddc:	01e00593          	li	a1,30
    80002de0:	00048513          	mv	a0,s1
    80002de4:	00002097          	auipc	ra,0x2
    80002de8:	af0080e7          	jalr	-1296(ra) # 800048d4 <_Z9getStringPci>
    n = stringToInt(input);
    80002dec:	00048513          	mv	a0,s1
    80002df0:	00002097          	auipc	ra,0x2
    80002df4:	bbc080e7          	jalr	-1092(ra) # 800049ac <_Z11stringToIntPKc>
    80002df8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002dfc:	00006517          	auipc	a0,0x6
    80002e00:	71450513          	addi	a0,a0,1812 # 80009510 <CONSOLE_STATUS+0x500>
    80002e04:	00002097          	auipc	ra,0x2
    80002e08:	a48080e7          	jalr	-1464(ra) # 8000484c <_Z11printStringPKc>
    80002e0c:	00000613          	li	a2,0
    80002e10:	00a00593          	li	a1,10
    80002e14:	00090513          	mv	a0,s2
    80002e18:	00002097          	auipc	ra,0x2
    80002e1c:	be4080e7          	jalr	-1052(ra) # 800049fc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002e20:	00006517          	auipc	a0,0x6
    80002e24:	70850513          	addi	a0,a0,1800 # 80009528 <CONSOLE_STATUS+0x518>
    80002e28:	00002097          	auipc	ra,0x2
    80002e2c:	a24080e7          	jalr	-1500(ra) # 8000484c <_Z11printStringPKc>
    80002e30:	00000613          	li	a2,0
    80002e34:	00a00593          	li	a1,10
    80002e38:	00048513          	mv	a0,s1
    80002e3c:	00002097          	auipc	ra,0x2
    80002e40:	bc0080e7          	jalr	-1088(ra) # 800049fc <_Z8printIntiii>
    printString(".\n");
    80002e44:	00006517          	auipc	a0,0x6
    80002e48:	6fc50513          	addi	a0,a0,1788 # 80009540 <CONSOLE_STATUS+0x530>
    80002e4c:	00002097          	auipc	ra,0x2
    80002e50:	a00080e7          	jalr	-1536(ra) # 8000484c <_Z11printStringPKc>
    if(threadNum > n) {
    80002e54:	0324c463          	blt	s1,s2,80002e7c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002e58:	03205c63          	blez	s2,80002e90 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002e5c:	03800513          	li	a0,56
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	870080e7          	jalr	-1936(ra) # 800016d0 <_Znwm>
    80002e68:	00050a13          	mv	s4,a0
    80002e6c:	00048593          	mv	a1,s1
    80002e70:	00003097          	auipc	ra,0x3
    80002e74:	07c080e7          	jalr	124(ra) # 80005eec <_ZN6BufferC1Ei>
    80002e78:	0300006f          	j	80002ea8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002e7c:	00006517          	auipc	a0,0x6
    80002e80:	6cc50513          	addi	a0,a0,1740 # 80009548 <CONSOLE_STATUS+0x538>
    80002e84:	00002097          	auipc	ra,0x2
    80002e88:	9c8080e7          	jalr	-1592(ra) # 8000484c <_Z11printStringPKc>
        return;
    80002e8c:	0140006f          	j	80002ea0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002e90:	00006517          	auipc	a0,0x6
    80002e94:	6f850513          	addi	a0,a0,1784 # 80009588 <CONSOLE_STATUS+0x578>
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	9b4080e7          	jalr	-1612(ra) # 8000484c <_Z11printStringPKc>
        return;
    80002ea0:	000b0113          	mv	sp,s6
    80002ea4:	1600006f          	j	80003004 <_Z22producerConsumer_C_APIv+0x298>
    sem_open(&waitForAll, 0);
    80002ea8:	00000593          	li	a1,0
    80002eac:	00008517          	auipc	a0,0x8
    80002eb0:	6cc50513          	addi	a0,a0,1740 # 8000b578 <_ZL10waitForAll>
    80002eb4:	ffffe097          	auipc	ra,0xffffe
    80002eb8:	3f8080e7          	jalr	1016(ra) # 800012ac <_Z8sem_openPP13SemaforKernelj>
    thread_t threads[threadNum];
    80002ebc:	00391793          	slli	a5,s2,0x3
    80002ec0:	00f78793          	addi	a5,a5,15
    80002ec4:	ff07f793          	andi	a5,a5,-16
    80002ec8:	40f10133          	sub	sp,sp,a5
    80002ecc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002ed0:	0019071b          	addiw	a4,s2,1
    80002ed4:	00171793          	slli	a5,a4,0x1
    80002ed8:	00e787b3          	add	a5,a5,a4
    80002edc:	00379793          	slli	a5,a5,0x3
    80002ee0:	00f78793          	addi	a5,a5,15
    80002ee4:	ff07f793          	andi	a5,a5,-16
    80002ee8:	40f10133          	sub	sp,sp,a5
    80002eec:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002ef0:	00191613          	slli	a2,s2,0x1
    80002ef4:	012607b3          	add	a5,a2,s2
    80002ef8:	00379793          	slli	a5,a5,0x3
    80002efc:	00f987b3          	add	a5,s3,a5
    80002f00:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002f04:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002f08:	00008717          	auipc	a4,0x8
    80002f0c:	67073703          	ld	a4,1648(a4) # 8000b578 <_ZL10waitForAll>
    80002f10:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002f14:	00078613          	mv	a2,a5
    80002f18:	00000597          	auipc	a1,0x0
    80002f1c:	d4058593          	addi	a1,a1,-704 # 80002c58 <_ZL8consumerPv>
    80002f20:	f9840513          	addi	a0,s0,-104
    80002f24:	ffffe097          	auipc	ra,0xffffe
    80002f28:	2b0080e7          	jalr	688(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002f2c:	00000493          	li	s1,0
    80002f30:	0280006f          	j	80002f58 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002f34:	00000597          	auipc	a1,0x0
    80002f38:	b5858593          	addi	a1,a1,-1192 # 80002a8c <_ZL16producerKeyboardPv>
                      data + i);
    80002f3c:	00179613          	slli	a2,a5,0x1
    80002f40:	00f60633          	add	a2,a2,a5
    80002f44:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002f48:	00c98633          	add	a2,s3,a2
    80002f4c:	ffffe097          	auipc	ra,0xffffe
    80002f50:	288080e7          	jalr	648(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002f54:	0014849b          	addiw	s1,s1,1
    80002f58:	0524d263          	bge	s1,s2,80002f9c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002f5c:	00149793          	slli	a5,s1,0x1
    80002f60:	009787b3          	add	a5,a5,s1
    80002f64:	00379793          	slli	a5,a5,0x3
    80002f68:	00f987b3          	add	a5,s3,a5
    80002f6c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002f70:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002f74:	00008717          	auipc	a4,0x8
    80002f78:	60473703          	ld	a4,1540(a4) # 8000b578 <_ZL10waitForAll>
    80002f7c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002f80:	00048793          	mv	a5,s1
    80002f84:	00349513          	slli	a0,s1,0x3
    80002f88:	00aa8533          	add	a0,s5,a0
    80002f8c:	fa9054e3          	blez	s1,80002f34 <_Z22producerConsumer_C_APIv+0x1c8>
    80002f90:	00000597          	auipc	a1,0x0
    80002f94:	bcc58593          	addi	a1,a1,-1076 # 80002b5c <_ZL8producerPv>
    80002f98:	fa5ff06f          	j	80002f3c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002f9c:	ffffe097          	auipc	ra,0xffffe
    80002fa0:	2e4080e7          	jalr	740(ra) # 80001280 <_Z15thread_dispatchv>
    printString(">>> Main dispatched threads, waiting for completion...\n");
    80002fa4:	00006517          	auipc	a0,0x6
    80002fa8:	61450513          	addi	a0,a0,1556 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80002fac:	00002097          	auipc	ra,0x2
    80002fb0:	8a0080e7          	jalr	-1888(ra) # 8000484c <_Z11printStringPKc>
    for (int i = 0; i <= threadNum; i++) {
    80002fb4:	00000493          	li	s1,0
    80002fb8:	00994e63          	blt	s2,s1,80002fd4 <_Z22producerConsumer_C_APIv+0x268>
        sem_wait(waitForAll);
    80002fbc:	00008517          	auipc	a0,0x8
    80002fc0:	5bc53503          	ld	a0,1468(a0) # 8000b578 <_ZL10waitForAll>
    80002fc4:	ffffe097          	auipc	ra,0xffffe
    80002fc8:	388080e7          	jalr	904(ra) # 8000134c <_Z8sem_waitP13SemaforKernel>
    for (int i = 0; i <= threadNum; i++) {
    80002fcc:	0014849b          	addiw	s1,s1,1
    80002fd0:	fe9ff06f          	j	80002fb8 <_Z22producerConsumer_C_APIv+0x24c>
    sem_close(waitForAll);
    80002fd4:	00008517          	auipc	a0,0x8
    80002fd8:	5a453503          	ld	a0,1444(a0) # 8000b578 <_ZL10waitForAll>
    80002fdc:	ffffe097          	auipc	ra,0xffffe
    80002fe0:	324080e7          	jalr	804(ra) # 80001300 <_Z9sem_closeP13SemaforKernel>
    delete buffer;
    80002fe4:	000a0e63          	beqz	s4,80003000 <_Z22producerConsumer_C_APIv+0x294>
    80002fe8:	000a0513          	mv	a0,s4
    80002fec:	00003097          	auipc	ra,0x3
    80002ff0:	1b8080e7          	jalr	440(ra) # 800061a4 <_ZN6BufferD1Ev>
    80002ff4:	000a0513          	mv	a0,s4
    80002ff8:	ffffe097          	auipc	ra,0xffffe
    80002ffc:	758080e7          	jalr	1880(ra) # 80001750 <_ZdlPv>
    80003000:	000b0113          	mv	sp,s6

}
    80003004:	f9040113          	addi	sp,s0,-112
    80003008:	06813083          	ld	ra,104(sp)
    8000300c:	06013403          	ld	s0,96(sp)
    80003010:	05813483          	ld	s1,88(sp)
    80003014:	05013903          	ld	s2,80(sp)
    80003018:	04813983          	ld	s3,72(sp)
    8000301c:	04013a03          	ld	s4,64(sp)
    80003020:	03813a83          	ld	s5,56(sp)
    80003024:	03013b03          	ld	s6,48(sp)
    80003028:	07010113          	addi	sp,sp,112
    8000302c:	00008067          	ret
    80003030:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003034:	000a0513          	mv	a0,s4
    80003038:	ffffe097          	auipc	ra,0xffffe
    8000303c:	718080e7          	jalr	1816(ra) # 80001750 <_ZdlPv>
    80003040:	00048513          	mv	a0,s1
    80003044:	00009097          	auipc	ra,0x9
    80003048:	644080e7          	jalr	1604(ra) # 8000c688 <_Unwind_Resume>

000000008000304c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000304c:	fe010113          	addi	sp,sp,-32
    80003050:	00113c23          	sd	ra,24(sp)
    80003054:	00813823          	sd	s0,16(sp)
    80003058:	00913423          	sd	s1,8(sp)
    8000305c:	01213023          	sd	s2,0(sp)
    80003060:	02010413          	addi	s0,sp,32
    80003064:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003068:	00100793          	li	a5,1
    8000306c:	02a7f863          	bgeu	a5,a0,8000309c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003070:	00a00793          	li	a5,10
    80003074:	02f577b3          	remu	a5,a0,a5
    80003078:	02078e63          	beqz	a5,800030b4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000307c:	fff48513          	addi	a0,s1,-1
    80003080:	00000097          	auipc	ra,0x0
    80003084:	fcc080e7          	jalr	-52(ra) # 8000304c <_ZL9fibonaccim>
    80003088:	00050913          	mv	s2,a0
    8000308c:	ffe48513          	addi	a0,s1,-2
    80003090:	00000097          	auipc	ra,0x0
    80003094:	fbc080e7          	jalr	-68(ra) # 8000304c <_ZL9fibonaccim>
    80003098:	00a90533          	add	a0,s2,a0
}
    8000309c:	01813083          	ld	ra,24(sp)
    800030a0:	01013403          	ld	s0,16(sp)
    800030a4:	00813483          	ld	s1,8(sp)
    800030a8:	00013903          	ld	s2,0(sp)
    800030ac:	02010113          	addi	sp,sp,32
    800030b0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800030b4:	ffffe097          	auipc	ra,0xffffe
    800030b8:	1cc080e7          	jalr	460(ra) # 80001280 <_Z15thread_dispatchv>
    800030bc:	fc1ff06f          	j	8000307c <_ZL9fibonaccim+0x30>

00000000800030c0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800030c0:	fe010113          	addi	sp,sp,-32
    800030c4:	00113c23          	sd	ra,24(sp)
    800030c8:	00813823          	sd	s0,16(sp)
    800030cc:	00913423          	sd	s1,8(sp)
    800030d0:	01213023          	sd	s2,0(sp)
    800030d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800030d8:	00000913          	li	s2,0
    800030dc:	0380006f          	j	80003114 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800030e0:	ffffe097          	auipc	ra,0xffffe
    800030e4:	1a0080e7          	jalr	416(ra) # 80001280 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800030e8:	00148493          	addi	s1,s1,1
    800030ec:	000027b7          	lui	a5,0x2
    800030f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800030f4:	0097ee63          	bltu	a5,s1,80003110 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800030f8:	00000713          	li	a4,0
    800030fc:	000077b7          	lui	a5,0x7
    80003100:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003104:	fce7eee3          	bltu	a5,a4,800030e0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003108:	00170713          	addi	a4,a4,1
    8000310c:	ff1ff06f          	j	800030fc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003110:	00190913          	addi	s2,s2,1
    80003114:	00900793          	li	a5,9
    80003118:	0527e063          	bltu	a5,s2,80003158 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000311c:	00006517          	auipc	a0,0x6
    80003120:	f0450513          	addi	a0,a0,-252 # 80009020 <CONSOLE_STATUS+0x10>
    80003124:	00001097          	auipc	ra,0x1
    80003128:	728080e7          	jalr	1832(ra) # 8000484c <_Z11printStringPKc>
    8000312c:	00000613          	li	a2,0
    80003130:	00a00593          	li	a1,10
    80003134:	0009051b          	sext.w	a0,s2
    80003138:	00002097          	auipc	ra,0x2
    8000313c:	8c4080e7          	jalr	-1852(ra) # 800049fc <_Z8printIntiii>
    80003140:	00006517          	auipc	a0,0x6
    80003144:	08050513          	addi	a0,a0,128 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003148:	00001097          	auipc	ra,0x1
    8000314c:	704080e7          	jalr	1796(ra) # 8000484c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003150:	00000493          	li	s1,0
    80003154:	f99ff06f          	j	800030ec <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003158:	00006517          	auipc	a0,0x6
    8000315c:	ed050513          	addi	a0,a0,-304 # 80009028 <CONSOLE_STATUS+0x18>
    80003160:	00001097          	auipc	ra,0x1
    80003164:	6ec080e7          	jalr	1772(ra) # 8000484c <_Z11printStringPKc>
    finishedA = true;
    80003168:	00100793          	li	a5,1
    8000316c:	00008717          	auipc	a4,0x8
    80003170:	40f70a23          	sb	a5,1044(a4) # 8000b580 <_ZL9finishedA>
}
    80003174:	01813083          	ld	ra,24(sp)
    80003178:	01013403          	ld	s0,16(sp)
    8000317c:	00813483          	ld	s1,8(sp)
    80003180:	00013903          	ld	s2,0(sp)
    80003184:	02010113          	addi	sp,sp,32
    80003188:	00008067          	ret

000000008000318c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000318c:	fe010113          	addi	sp,sp,-32
    80003190:	00113c23          	sd	ra,24(sp)
    80003194:	00813823          	sd	s0,16(sp)
    80003198:	00913423          	sd	s1,8(sp)
    8000319c:	01213023          	sd	s2,0(sp)
    800031a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800031a4:	00000913          	li	s2,0
    800031a8:	0380006f          	j	800031e0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800031ac:	ffffe097          	auipc	ra,0xffffe
    800031b0:	0d4080e7          	jalr	212(ra) # 80001280 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800031b4:	00148493          	addi	s1,s1,1
    800031b8:	000027b7          	lui	a5,0x2
    800031bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800031c0:	0097ee63          	bltu	a5,s1,800031dc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800031c4:	00000713          	li	a4,0
    800031c8:	000077b7          	lui	a5,0x7
    800031cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800031d0:	fce7eee3          	bltu	a5,a4,800031ac <_ZN7WorkerB11workerBodyBEPv+0x20>
    800031d4:	00170713          	addi	a4,a4,1
    800031d8:	ff1ff06f          	j	800031c8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800031dc:	00190913          	addi	s2,s2,1
    800031e0:	00f00793          	li	a5,15
    800031e4:	0527e063          	bltu	a5,s2,80003224 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800031e8:	00006517          	auipc	a0,0x6
    800031ec:	40850513          	addi	a0,a0,1032 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800031f0:	00001097          	auipc	ra,0x1
    800031f4:	65c080e7          	jalr	1628(ra) # 8000484c <_Z11printStringPKc>
    800031f8:	00000613          	li	a2,0
    800031fc:	00a00593          	li	a1,10
    80003200:	0009051b          	sext.w	a0,s2
    80003204:	00001097          	auipc	ra,0x1
    80003208:	7f8080e7          	jalr	2040(ra) # 800049fc <_Z8printIntiii>
    8000320c:	00006517          	auipc	a0,0x6
    80003210:	fb450513          	addi	a0,a0,-76 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003214:	00001097          	auipc	ra,0x1
    80003218:	638080e7          	jalr	1592(ra) # 8000484c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000321c:	00000493          	li	s1,0
    80003220:	f99ff06f          	j	800031b8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003224:	00006517          	auipc	a0,0x6
    80003228:	3d450513          	addi	a0,a0,980 # 800095f8 <CONSOLE_STATUS+0x5e8>
    8000322c:	00001097          	auipc	ra,0x1
    80003230:	620080e7          	jalr	1568(ra) # 8000484c <_Z11printStringPKc>
    finishedB = true;
    80003234:	00100793          	li	a5,1
    80003238:	00008717          	auipc	a4,0x8
    8000323c:	34f704a3          	sb	a5,841(a4) # 8000b581 <_ZL9finishedB>
    thread_dispatch();
    80003240:	ffffe097          	auipc	ra,0xffffe
    80003244:	040080e7          	jalr	64(ra) # 80001280 <_Z15thread_dispatchv>
}
    80003248:	01813083          	ld	ra,24(sp)
    8000324c:	01013403          	ld	s0,16(sp)
    80003250:	00813483          	ld	s1,8(sp)
    80003254:	00013903          	ld	s2,0(sp)
    80003258:	02010113          	addi	sp,sp,32
    8000325c:	00008067          	ret

0000000080003260 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003260:	fe010113          	addi	sp,sp,-32
    80003264:	00113c23          	sd	ra,24(sp)
    80003268:	00813823          	sd	s0,16(sp)
    8000326c:	00913423          	sd	s1,8(sp)
    80003270:	01213023          	sd	s2,0(sp)
    80003274:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003278:	00000493          	li	s1,0
    8000327c:	0400006f          	j	800032bc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003280:	00006517          	auipc	a0,0x6
    80003284:	38850513          	addi	a0,a0,904 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003288:	00001097          	auipc	ra,0x1
    8000328c:	5c4080e7          	jalr	1476(ra) # 8000484c <_Z11printStringPKc>
    80003290:	00000613          	li	a2,0
    80003294:	00a00593          	li	a1,10
    80003298:	00048513          	mv	a0,s1
    8000329c:	00001097          	auipc	ra,0x1
    800032a0:	760080e7          	jalr	1888(ra) # 800049fc <_Z8printIntiii>
    800032a4:	00006517          	auipc	a0,0x6
    800032a8:	f1c50513          	addi	a0,a0,-228 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800032ac:	00001097          	auipc	ra,0x1
    800032b0:	5a0080e7          	jalr	1440(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800032b4:	0014849b          	addiw	s1,s1,1
    800032b8:	0ff4f493          	andi	s1,s1,255
    800032bc:	00200793          	li	a5,2
    800032c0:	fc97f0e3          	bgeu	a5,s1,80003280 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800032c4:	00006517          	auipc	a0,0x6
    800032c8:	34c50513          	addi	a0,a0,844 # 80009610 <CONSOLE_STATUS+0x600>
    800032cc:	00001097          	auipc	ra,0x1
    800032d0:	580080e7          	jalr	1408(ra) # 8000484c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800032d4:	00700313          	li	t1,7
    thread_dispatch();
    800032d8:	ffffe097          	auipc	ra,0xffffe
    800032dc:	fa8080e7          	jalr	-88(ra) # 80001280 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800032e0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800032e4:	00006517          	auipc	a0,0x6
    800032e8:	33c50513          	addi	a0,a0,828 # 80009620 <CONSOLE_STATUS+0x610>
    800032ec:	00001097          	auipc	ra,0x1
    800032f0:	560080e7          	jalr	1376(ra) # 8000484c <_Z11printStringPKc>
    800032f4:	00000613          	li	a2,0
    800032f8:	00a00593          	li	a1,10
    800032fc:	0009051b          	sext.w	a0,s2
    80003300:	00001097          	auipc	ra,0x1
    80003304:	6fc080e7          	jalr	1788(ra) # 800049fc <_Z8printIntiii>
    80003308:	00006517          	auipc	a0,0x6
    8000330c:	eb850513          	addi	a0,a0,-328 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003310:	00001097          	auipc	ra,0x1
    80003314:	53c080e7          	jalr	1340(ra) # 8000484c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003318:	00c00513          	li	a0,12
    8000331c:	00000097          	auipc	ra,0x0
    80003320:	d30080e7          	jalr	-720(ra) # 8000304c <_ZL9fibonaccim>
    80003324:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003328:	00006517          	auipc	a0,0x6
    8000332c:	30050513          	addi	a0,a0,768 # 80009628 <CONSOLE_STATUS+0x618>
    80003330:	00001097          	auipc	ra,0x1
    80003334:	51c080e7          	jalr	1308(ra) # 8000484c <_Z11printStringPKc>
    80003338:	00000613          	li	a2,0
    8000333c:	00a00593          	li	a1,10
    80003340:	0009051b          	sext.w	a0,s2
    80003344:	00001097          	auipc	ra,0x1
    80003348:	6b8080e7          	jalr	1720(ra) # 800049fc <_Z8printIntiii>
    8000334c:	00006517          	auipc	a0,0x6
    80003350:	e7450513          	addi	a0,a0,-396 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003354:	00001097          	auipc	ra,0x1
    80003358:	4f8080e7          	jalr	1272(ra) # 8000484c <_Z11printStringPKc>
    8000335c:	0400006f          	j	8000339c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003360:	00006517          	auipc	a0,0x6
    80003364:	2a850513          	addi	a0,a0,680 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003368:	00001097          	auipc	ra,0x1
    8000336c:	4e4080e7          	jalr	1252(ra) # 8000484c <_Z11printStringPKc>
    80003370:	00000613          	li	a2,0
    80003374:	00a00593          	li	a1,10
    80003378:	00048513          	mv	a0,s1
    8000337c:	00001097          	auipc	ra,0x1
    80003380:	680080e7          	jalr	1664(ra) # 800049fc <_Z8printIntiii>
    80003384:	00006517          	auipc	a0,0x6
    80003388:	e3c50513          	addi	a0,a0,-452 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000338c:	00001097          	auipc	ra,0x1
    80003390:	4c0080e7          	jalr	1216(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003394:	0014849b          	addiw	s1,s1,1
    80003398:	0ff4f493          	andi	s1,s1,255
    8000339c:	00500793          	li	a5,5
    800033a0:	fc97f0e3          	bgeu	a5,s1,80003360 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800033a4:	00006517          	auipc	a0,0x6
    800033a8:	c8450513          	addi	a0,a0,-892 # 80009028 <CONSOLE_STATUS+0x18>
    800033ac:	00001097          	auipc	ra,0x1
    800033b0:	4a0080e7          	jalr	1184(ra) # 8000484c <_Z11printStringPKc>
    finishedC = true;
    800033b4:	00100793          	li	a5,1
    800033b8:	00008717          	auipc	a4,0x8
    800033bc:	1cf70523          	sb	a5,458(a4) # 8000b582 <_ZL9finishedC>
    thread_dispatch();
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	ec0080e7          	jalr	-320(ra) # 80001280 <_Z15thread_dispatchv>
}
    800033c8:	01813083          	ld	ra,24(sp)
    800033cc:	01013403          	ld	s0,16(sp)
    800033d0:	00813483          	ld	s1,8(sp)
    800033d4:	00013903          	ld	s2,0(sp)
    800033d8:	02010113          	addi	sp,sp,32
    800033dc:	00008067          	ret

00000000800033e0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800033e0:	fe010113          	addi	sp,sp,-32
    800033e4:	00113c23          	sd	ra,24(sp)
    800033e8:	00813823          	sd	s0,16(sp)
    800033ec:	00913423          	sd	s1,8(sp)
    800033f0:	01213023          	sd	s2,0(sp)
    800033f4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800033f8:	00a00493          	li	s1,10
    800033fc:	0400006f          	j	8000343c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003400:	00006517          	auipc	a0,0x6
    80003404:	23850513          	addi	a0,a0,568 # 80009638 <CONSOLE_STATUS+0x628>
    80003408:	00001097          	auipc	ra,0x1
    8000340c:	444080e7          	jalr	1092(ra) # 8000484c <_Z11printStringPKc>
    80003410:	00000613          	li	a2,0
    80003414:	00a00593          	li	a1,10
    80003418:	00048513          	mv	a0,s1
    8000341c:	00001097          	auipc	ra,0x1
    80003420:	5e0080e7          	jalr	1504(ra) # 800049fc <_Z8printIntiii>
    80003424:	00006517          	auipc	a0,0x6
    80003428:	d9c50513          	addi	a0,a0,-612 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000342c:	00001097          	auipc	ra,0x1
    80003430:	420080e7          	jalr	1056(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003434:	0014849b          	addiw	s1,s1,1
    80003438:	0ff4f493          	andi	s1,s1,255
    8000343c:	00c00793          	li	a5,12
    80003440:	fc97f0e3          	bgeu	a5,s1,80003400 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003444:	00006517          	auipc	a0,0x6
    80003448:	1fc50513          	addi	a0,a0,508 # 80009640 <CONSOLE_STATUS+0x630>
    8000344c:	00001097          	auipc	ra,0x1
    80003450:	400080e7          	jalr	1024(ra) # 8000484c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003454:	00500313          	li	t1,5
    thread_dispatch();
    80003458:	ffffe097          	auipc	ra,0xffffe
    8000345c:	e28080e7          	jalr	-472(ra) # 80001280 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003460:	01000513          	li	a0,16
    80003464:	00000097          	auipc	ra,0x0
    80003468:	be8080e7          	jalr	-1048(ra) # 8000304c <_ZL9fibonaccim>
    8000346c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003470:	00006517          	auipc	a0,0x6
    80003474:	1e050513          	addi	a0,a0,480 # 80009650 <CONSOLE_STATUS+0x640>
    80003478:	00001097          	auipc	ra,0x1
    8000347c:	3d4080e7          	jalr	980(ra) # 8000484c <_Z11printStringPKc>
    80003480:	00000613          	li	a2,0
    80003484:	00a00593          	li	a1,10
    80003488:	0009051b          	sext.w	a0,s2
    8000348c:	00001097          	auipc	ra,0x1
    80003490:	570080e7          	jalr	1392(ra) # 800049fc <_Z8printIntiii>
    80003494:	00006517          	auipc	a0,0x6
    80003498:	d2c50513          	addi	a0,a0,-724 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000349c:	00001097          	auipc	ra,0x1
    800034a0:	3b0080e7          	jalr	944(ra) # 8000484c <_Z11printStringPKc>
    800034a4:	0400006f          	j	800034e4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800034a8:	00006517          	auipc	a0,0x6
    800034ac:	19050513          	addi	a0,a0,400 # 80009638 <CONSOLE_STATUS+0x628>
    800034b0:	00001097          	auipc	ra,0x1
    800034b4:	39c080e7          	jalr	924(ra) # 8000484c <_Z11printStringPKc>
    800034b8:	00000613          	li	a2,0
    800034bc:	00a00593          	li	a1,10
    800034c0:	00048513          	mv	a0,s1
    800034c4:	00001097          	auipc	ra,0x1
    800034c8:	538080e7          	jalr	1336(ra) # 800049fc <_Z8printIntiii>
    800034cc:	00006517          	auipc	a0,0x6
    800034d0:	cf450513          	addi	a0,a0,-780 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800034d4:	00001097          	auipc	ra,0x1
    800034d8:	378080e7          	jalr	888(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800034dc:	0014849b          	addiw	s1,s1,1
    800034e0:	0ff4f493          	andi	s1,s1,255
    800034e4:	00f00793          	li	a5,15
    800034e8:	fc97f0e3          	bgeu	a5,s1,800034a8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800034ec:	00006517          	auipc	a0,0x6
    800034f0:	17450513          	addi	a0,a0,372 # 80009660 <CONSOLE_STATUS+0x650>
    800034f4:	00001097          	auipc	ra,0x1
    800034f8:	358080e7          	jalr	856(ra) # 8000484c <_Z11printStringPKc>
    finishedD = true;
    800034fc:	00100793          	li	a5,1
    80003500:	00008717          	auipc	a4,0x8
    80003504:	08f701a3          	sb	a5,131(a4) # 8000b583 <_ZL9finishedD>
    thread_dispatch();
    80003508:	ffffe097          	auipc	ra,0xffffe
    8000350c:	d78080e7          	jalr	-648(ra) # 80001280 <_Z15thread_dispatchv>
}
    80003510:	01813083          	ld	ra,24(sp)
    80003514:	01013403          	ld	s0,16(sp)
    80003518:	00813483          	ld	s1,8(sp)
    8000351c:	00013903          	ld	s2,0(sp)
    80003520:	02010113          	addi	sp,sp,32
    80003524:	00008067          	ret

0000000080003528 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003528:	fc010113          	addi	sp,sp,-64
    8000352c:	02113c23          	sd	ra,56(sp)
    80003530:	02813823          	sd	s0,48(sp)
    80003534:	02913423          	sd	s1,40(sp)
    80003538:	03213023          	sd	s2,32(sp)
    8000353c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003540:	02800513          	li	a0,40
    80003544:	ffffe097          	auipc	ra,0xffffe
    80003548:	18c080e7          	jalr	396(ra) # 800016d0 <_Znwm>
    8000354c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	75c080e7          	jalr	1884(ra) # 80001cac <_ZN6ThreadC1Ev>
    80003558:	00008797          	auipc	a5,0x8
    8000355c:	e4878793          	addi	a5,a5,-440 # 8000b3a0 <_ZTV7WorkerA+0x10>
    80003560:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003564:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003568:	00006517          	auipc	a0,0x6
    8000356c:	ad050513          	addi	a0,a0,-1328 # 80009038 <CONSOLE_STATUS+0x28>
    80003570:	00001097          	auipc	ra,0x1
    80003574:	2dc080e7          	jalr	732(ra) # 8000484c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003578:	02800513          	li	a0,40
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	154080e7          	jalr	340(ra) # 800016d0 <_Znwm>
    80003584:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003588:	ffffe097          	auipc	ra,0xffffe
    8000358c:	724080e7          	jalr	1828(ra) # 80001cac <_ZN6ThreadC1Ev>
    80003590:	00008797          	auipc	a5,0x8
    80003594:	e3878793          	addi	a5,a5,-456 # 8000b3c8 <_ZTV7WorkerB+0x10>
    80003598:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000359c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	0d050513          	addi	a0,a0,208 # 80009670 <CONSOLE_STATUS+0x660>
    800035a8:	00001097          	auipc	ra,0x1
    800035ac:	2a4080e7          	jalr	676(ra) # 8000484c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800035b0:	02800513          	li	a0,40
    800035b4:	ffffe097          	auipc	ra,0xffffe
    800035b8:	11c080e7          	jalr	284(ra) # 800016d0 <_Znwm>
    800035bc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	6ec080e7          	jalr	1772(ra) # 80001cac <_ZN6ThreadC1Ev>
    800035c8:	00008797          	auipc	a5,0x8
    800035cc:	e2878793          	addi	a5,a5,-472 # 8000b3f0 <_ZTV7WorkerC+0x10>
    800035d0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800035d4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800035d8:	00006517          	auipc	a0,0x6
    800035dc:	0b050513          	addi	a0,a0,176 # 80009688 <CONSOLE_STATUS+0x678>
    800035e0:	00001097          	auipc	ra,0x1
    800035e4:	26c080e7          	jalr	620(ra) # 8000484c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800035e8:	02800513          	li	a0,40
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	0e4080e7          	jalr	228(ra) # 800016d0 <_Znwm>
    800035f4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800035f8:	ffffe097          	auipc	ra,0xffffe
    800035fc:	6b4080e7          	jalr	1716(ra) # 80001cac <_ZN6ThreadC1Ev>
    80003600:	00008797          	auipc	a5,0x8
    80003604:	e1878793          	addi	a5,a5,-488 # 8000b418 <_ZTV7WorkerD+0x10>
    80003608:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000360c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003610:	00006517          	auipc	a0,0x6
    80003614:	09050513          	addi	a0,a0,144 # 800096a0 <CONSOLE_STATUS+0x690>
    80003618:	00001097          	auipc	ra,0x1
    8000361c:	234080e7          	jalr	564(ra) # 8000484c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003620:	00000493          	li	s1,0
    80003624:	00300793          	li	a5,3
    80003628:	0297c663          	blt	a5,s1,80003654 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000362c:	00349793          	slli	a5,s1,0x3
    80003630:	fe040713          	addi	a4,s0,-32
    80003634:	00f707b3          	add	a5,a4,a5
    80003638:	fe07b503          	ld	a0,-32(a5)
    8000363c:	ffffe097          	auipc	ra,0xffffe
    80003640:	5c8080e7          	jalr	1480(ra) # 80001c04 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003644:	0014849b          	addiw	s1,s1,1
    80003648:	fddff06f          	j	80003624 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	638080e7          	jalr	1592(ra) # 80001c84 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003654:	00008797          	auipc	a5,0x8
    80003658:	f2c7c783          	lbu	a5,-212(a5) # 8000b580 <_ZL9finishedA>
    8000365c:	fe0788e3          	beqz	a5,8000364c <_Z20Threads_CPP_API_testv+0x124>
    80003660:	00008797          	auipc	a5,0x8
    80003664:	f217c783          	lbu	a5,-223(a5) # 8000b581 <_ZL9finishedB>
    80003668:	fe0782e3          	beqz	a5,8000364c <_Z20Threads_CPP_API_testv+0x124>
    8000366c:	00008797          	auipc	a5,0x8
    80003670:	f167c783          	lbu	a5,-234(a5) # 8000b582 <_ZL9finishedC>
    80003674:	fc078ce3          	beqz	a5,8000364c <_Z20Threads_CPP_API_testv+0x124>
    80003678:	00008797          	auipc	a5,0x8
    8000367c:	f0b7c783          	lbu	a5,-245(a5) # 8000b583 <_ZL9finishedD>
    80003680:	fc0786e3          	beqz	a5,8000364c <_Z20Threads_CPP_API_testv+0x124>
    80003684:	fc040493          	addi	s1,s0,-64
    80003688:	0080006f          	j	80003690 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000368c:	00848493          	addi	s1,s1,8
    80003690:	fe040793          	addi	a5,s0,-32
    80003694:	08f48663          	beq	s1,a5,80003720 <_Z20Threads_CPP_API_testv+0x1f8>
    80003698:	0004b503          	ld	a0,0(s1)
    8000369c:	fe0508e3          	beqz	a0,8000368c <_Z20Threads_CPP_API_testv+0x164>
    800036a0:	00053783          	ld	a5,0(a0)
    800036a4:	0087b783          	ld	a5,8(a5)
    800036a8:	000780e7          	jalr	a5
    800036ac:	fe1ff06f          	j	8000368c <_Z20Threads_CPP_API_testv+0x164>
    800036b0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800036b4:	00048513          	mv	a0,s1
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	098080e7          	jalr	152(ra) # 80001750 <_ZdlPv>
    800036c0:	00090513          	mv	a0,s2
    800036c4:	00009097          	auipc	ra,0x9
    800036c8:	fc4080e7          	jalr	-60(ra) # 8000c688 <_Unwind_Resume>
    800036cc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800036d0:	00048513          	mv	a0,s1
    800036d4:	ffffe097          	auipc	ra,0xffffe
    800036d8:	07c080e7          	jalr	124(ra) # 80001750 <_ZdlPv>
    800036dc:	00090513          	mv	a0,s2
    800036e0:	00009097          	auipc	ra,0x9
    800036e4:	fa8080e7          	jalr	-88(ra) # 8000c688 <_Unwind_Resume>
    800036e8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800036ec:	00048513          	mv	a0,s1
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	060080e7          	jalr	96(ra) # 80001750 <_ZdlPv>
    800036f8:	00090513          	mv	a0,s2
    800036fc:	00009097          	auipc	ra,0x9
    80003700:	f8c080e7          	jalr	-116(ra) # 8000c688 <_Unwind_Resume>
    80003704:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003708:	00048513          	mv	a0,s1
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	044080e7          	jalr	68(ra) # 80001750 <_ZdlPv>
    80003714:	00090513          	mv	a0,s2
    80003718:	00009097          	auipc	ra,0x9
    8000371c:	f70080e7          	jalr	-144(ra) # 8000c688 <_Unwind_Resume>
}
    80003720:	03813083          	ld	ra,56(sp)
    80003724:	03013403          	ld	s0,48(sp)
    80003728:	02813483          	ld	s1,40(sp)
    8000372c:	02013903          	ld	s2,32(sp)
    80003730:	04010113          	addi	sp,sp,64
    80003734:	00008067          	ret

0000000080003738 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003738:	ff010113          	addi	sp,sp,-16
    8000373c:	00113423          	sd	ra,8(sp)
    80003740:	00813023          	sd	s0,0(sp)
    80003744:	01010413          	addi	s0,sp,16
    80003748:	00008797          	auipc	a5,0x8
    8000374c:	c5878793          	addi	a5,a5,-936 # 8000b3a0 <_ZTV7WorkerA+0x10>
    80003750:	00f53023          	sd	a5,0(a0)
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	39c080e7          	jalr	924(ra) # 80001af0 <_ZN6ThreadD1Ev>
    8000375c:	00813083          	ld	ra,8(sp)
    80003760:	00013403          	ld	s0,0(sp)
    80003764:	01010113          	addi	sp,sp,16
    80003768:	00008067          	ret

000000008000376c <_ZN7WorkerAD0Ev>:
    8000376c:	fe010113          	addi	sp,sp,-32
    80003770:	00113c23          	sd	ra,24(sp)
    80003774:	00813823          	sd	s0,16(sp)
    80003778:	00913423          	sd	s1,8(sp)
    8000377c:	02010413          	addi	s0,sp,32
    80003780:	00050493          	mv	s1,a0
    80003784:	00008797          	auipc	a5,0x8
    80003788:	c1c78793          	addi	a5,a5,-996 # 8000b3a0 <_ZTV7WorkerA+0x10>
    8000378c:	00f53023          	sd	a5,0(a0)
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	360080e7          	jalr	864(ra) # 80001af0 <_ZN6ThreadD1Ev>
    80003798:	00048513          	mv	a0,s1
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	fb4080e7          	jalr	-76(ra) # 80001750 <_ZdlPv>
    800037a4:	01813083          	ld	ra,24(sp)
    800037a8:	01013403          	ld	s0,16(sp)
    800037ac:	00813483          	ld	s1,8(sp)
    800037b0:	02010113          	addi	sp,sp,32
    800037b4:	00008067          	ret

00000000800037b8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800037b8:	ff010113          	addi	sp,sp,-16
    800037bc:	00113423          	sd	ra,8(sp)
    800037c0:	00813023          	sd	s0,0(sp)
    800037c4:	01010413          	addi	s0,sp,16
    800037c8:	00008797          	auipc	a5,0x8
    800037cc:	c0078793          	addi	a5,a5,-1024 # 8000b3c8 <_ZTV7WorkerB+0x10>
    800037d0:	00f53023          	sd	a5,0(a0)
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	31c080e7          	jalr	796(ra) # 80001af0 <_ZN6ThreadD1Ev>
    800037dc:	00813083          	ld	ra,8(sp)
    800037e0:	00013403          	ld	s0,0(sp)
    800037e4:	01010113          	addi	sp,sp,16
    800037e8:	00008067          	ret

00000000800037ec <_ZN7WorkerBD0Ev>:
    800037ec:	fe010113          	addi	sp,sp,-32
    800037f0:	00113c23          	sd	ra,24(sp)
    800037f4:	00813823          	sd	s0,16(sp)
    800037f8:	00913423          	sd	s1,8(sp)
    800037fc:	02010413          	addi	s0,sp,32
    80003800:	00050493          	mv	s1,a0
    80003804:	00008797          	auipc	a5,0x8
    80003808:	bc478793          	addi	a5,a5,-1084 # 8000b3c8 <_ZTV7WorkerB+0x10>
    8000380c:	00f53023          	sd	a5,0(a0)
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	2e0080e7          	jalr	736(ra) # 80001af0 <_ZN6ThreadD1Ev>
    80003818:	00048513          	mv	a0,s1
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	f34080e7          	jalr	-204(ra) # 80001750 <_ZdlPv>
    80003824:	01813083          	ld	ra,24(sp)
    80003828:	01013403          	ld	s0,16(sp)
    8000382c:	00813483          	ld	s1,8(sp)
    80003830:	02010113          	addi	sp,sp,32
    80003834:	00008067          	ret

0000000080003838 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003838:	ff010113          	addi	sp,sp,-16
    8000383c:	00113423          	sd	ra,8(sp)
    80003840:	00813023          	sd	s0,0(sp)
    80003844:	01010413          	addi	s0,sp,16
    80003848:	00008797          	auipc	a5,0x8
    8000384c:	ba878793          	addi	a5,a5,-1112 # 8000b3f0 <_ZTV7WorkerC+0x10>
    80003850:	00f53023          	sd	a5,0(a0)
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	29c080e7          	jalr	668(ra) # 80001af0 <_ZN6ThreadD1Ev>
    8000385c:	00813083          	ld	ra,8(sp)
    80003860:	00013403          	ld	s0,0(sp)
    80003864:	01010113          	addi	sp,sp,16
    80003868:	00008067          	ret

000000008000386c <_ZN7WorkerCD0Ev>:
    8000386c:	fe010113          	addi	sp,sp,-32
    80003870:	00113c23          	sd	ra,24(sp)
    80003874:	00813823          	sd	s0,16(sp)
    80003878:	00913423          	sd	s1,8(sp)
    8000387c:	02010413          	addi	s0,sp,32
    80003880:	00050493          	mv	s1,a0
    80003884:	00008797          	auipc	a5,0x8
    80003888:	b6c78793          	addi	a5,a5,-1172 # 8000b3f0 <_ZTV7WorkerC+0x10>
    8000388c:	00f53023          	sd	a5,0(a0)
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	260080e7          	jalr	608(ra) # 80001af0 <_ZN6ThreadD1Ev>
    80003898:	00048513          	mv	a0,s1
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	eb4080e7          	jalr	-332(ra) # 80001750 <_ZdlPv>
    800038a4:	01813083          	ld	ra,24(sp)
    800038a8:	01013403          	ld	s0,16(sp)
    800038ac:	00813483          	ld	s1,8(sp)
    800038b0:	02010113          	addi	sp,sp,32
    800038b4:	00008067          	ret

00000000800038b8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800038b8:	ff010113          	addi	sp,sp,-16
    800038bc:	00113423          	sd	ra,8(sp)
    800038c0:	00813023          	sd	s0,0(sp)
    800038c4:	01010413          	addi	s0,sp,16
    800038c8:	00008797          	auipc	a5,0x8
    800038cc:	b5078793          	addi	a5,a5,-1200 # 8000b418 <_ZTV7WorkerD+0x10>
    800038d0:	00f53023          	sd	a5,0(a0)
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	21c080e7          	jalr	540(ra) # 80001af0 <_ZN6ThreadD1Ev>
    800038dc:	00813083          	ld	ra,8(sp)
    800038e0:	00013403          	ld	s0,0(sp)
    800038e4:	01010113          	addi	sp,sp,16
    800038e8:	00008067          	ret

00000000800038ec <_ZN7WorkerDD0Ev>:
    800038ec:	fe010113          	addi	sp,sp,-32
    800038f0:	00113c23          	sd	ra,24(sp)
    800038f4:	00813823          	sd	s0,16(sp)
    800038f8:	00913423          	sd	s1,8(sp)
    800038fc:	02010413          	addi	s0,sp,32
    80003900:	00050493          	mv	s1,a0
    80003904:	00008797          	auipc	a5,0x8
    80003908:	b1478793          	addi	a5,a5,-1260 # 8000b418 <_ZTV7WorkerD+0x10>
    8000390c:	00f53023          	sd	a5,0(a0)
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	1e0080e7          	jalr	480(ra) # 80001af0 <_ZN6ThreadD1Ev>
    80003918:	00048513          	mv	a0,s1
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	e34080e7          	jalr	-460(ra) # 80001750 <_ZdlPv>
    80003924:	01813083          	ld	ra,24(sp)
    80003928:	01013403          	ld	s0,16(sp)
    8000392c:	00813483          	ld	s1,8(sp)
    80003930:	02010113          	addi	sp,sp,32
    80003934:	00008067          	ret

0000000080003938 <_ZN7WorkerA3runEv>:
    void run() override {
    80003938:	ff010113          	addi	sp,sp,-16
    8000393c:	00113423          	sd	ra,8(sp)
    80003940:	00813023          	sd	s0,0(sp)
    80003944:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003948:	00000593          	li	a1,0
    8000394c:	fffff097          	auipc	ra,0xfffff
    80003950:	774080e7          	jalr	1908(ra) # 800030c0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003954:	00813083          	ld	ra,8(sp)
    80003958:	00013403          	ld	s0,0(sp)
    8000395c:	01010113          	addi	sp,sp,16
    80003960:	00008067          	ret

0000000080003964 <_ZN7WorkerB3runEv>:
    void run() override {
    80003964:	ff010113          	addi	sp,sp,-16
    80003968:	00113423          	sd	ra,8(sp)
    8000396c:	00813023          	sd	s0,0(sp)
    80003970:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003974:	00000593          	li	a1,0
    80003978:	00000097          	auipc	ra,0x0
    8000397c:	814080e7          	jalr	-2028(ra) # 8000318c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003980:	00813083          	ld	ra,8(sp)
    80003984:	00013403          	ld	s0,0(sp)
    80003988:	01010113          	addi	sp,sp,16
    8000398c:	00008067          	ret

0000000080003990 <_ZN7WorkerC3runEv>:
    void run() override {
    80003990:	ff010113          	addi	sp,sp,-16
    80003994:	00113423          	sd	ra,8(sp)
    80003998:	00813023          	sd	s0,0(sp)
    8000399c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800039a0:	00000593          	li	a1,0
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	8bc080e7          	jalr	-1860(ra) # 80003260 <_ZN7WorkerC11workerBodyCEPv>
    }
    800039ac:	00813083          	ld	ra,8(sp)
    800039b0:	00013403          	ld	s0,0(sp)
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00008067          	ret

00000000800039bc <_ZN7WorkerD3runEv>:
    void run() override {
    800039bc:	ff010113          	addi	sp,sp,-16
    800039c0:	00113423          	sd	ra,8(sp)
    800039c4:	00813023          	sd	s0,0(sp)
    800039c8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800039cc:	00000593          	li	a1,0
    800039d0:	00000097          	auipc	ra,0x0
    800039d4:	a10080e7          	jalr	-1520(ra) # 800033e0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800039d8:	00813083          	ld	ra,8(sp)
    800039dc:	00013403          	ld	s0,0(sp)
    800039e0:	01010113          	addi	sp,sp,16
    800039e4:	00008067          	ret

00000000800039e8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800039e8:	fe010113          	addi	sp,sp,-32
    800039ec:	00113c23          	sd	ra,24(sp)
    800039f0:	00813823          	sd	s0,16(sp)
    800039f4:	00913423          	sd	s1,8(sp)
    800039f8:	01213023          	sd	s2,0(sp)
    800039fc:	02010413          	addi	s0,sp,32
    80003a00:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a04:	00100793          	li	a5,1
    80003a08:	02a7f863          	bgeu	a5,a0,80003a38 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a0c:	00a00793          	li	a5,10
    80003a10:	02f577b3          	remu	a5,a0,a5
    80003a14:	02078e63          	beqz	a5,80003a50 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a18:	fff48513          	addi	a0,s1,-1
    80003a1c:	00000097          	auipc	ra,0x0
    80003a20:	fcc080e7          	jalr	-52(ra) # 800039e8 <_ZL9fibonaccim>
    80003a24:	00050913          	mv	s2,a0
    80003a28:	ffe48513          	addi	a0,s1,-2
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	fbc080e7          	jalr	-68(ra) # 800039e8 <_ZL9fibonaccim>
    80003a34:	00a90533          	add	a0,s2,a0
}
    80003a38:	01813083          	ld	ra,24(sp)
    80003a3c:	01013403          	ld	s0,16(sp)
    80003a40:	00813483          	ld	s1,8(sp)
    80003a44:	00013903          	ld	s2,0(sp)
    80003a48:	02010113          	addi	sp,sp,32
    80003a4c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	830080e7          	jalr	-2000(ra) # 80001280 <_Z15thread_dispatchv>
    80003a58:	fc1ff06f          	j	80003a18 <_ZL9fibonaccim+0x30>

0000000080003a5c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003a5c:	fe010113          	addi	sp,sp,-32
    80003a60:	00113c23          	sd	ra,24(sp)
    80003a64:	00813823          	sd	s0,16(sp)
    80003a68:	00913423          	sd	s1,8(sp)
    80003a6c:	01213023          	sd	s2,0(sp)
    80003a70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003a74:	00a00493          	li	s1,10
    80003a78:	0400006f          	j	80003ab8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a7c:	00006517          	auipc	a0,0x6
    80003a80:	bbc50513          	addi	a0,a0,-1092 # 80009638 <CONSOLE_STATUS+0x628>
    80003a84:	00001097          	auipc	ra,0x1
    80003a88:	dc8080e7          	jalr	-568(ra) # 8000484c <_Z11printStringPKc>
    80003a8c:	00000613          	li	a2,0
    80003a90:	00a00593          	li	a1,10
    80003a94:	00048513          	mv	a0,s1
    80003a98:	00001097          	auipc	ra,0x1
    80003a9c:	f64080e7          	jalr	-156(ra) # 800049fc <_Z8printIntiii>
    80003aa0:	00005517          	auipc	a0,0x5
    80003aa4:	72050513          	addi	a0,a0,1824 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003aa8:	00001097          	auipc	ra,0x1
    80003aac:	da4080e7          	jalr	-604(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ab0:	0014849b          	addiw	s1,s1,1
    80003ab4:	0ff4f493          	andi	s1,s1,255
    80003ab8:	00c00793          	li	a5,12
    80003abc:	fc97f0e3          	bgeu	a5,s1,80003a7c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003ac0:	00006517          	auipc	a0,0x6
    80003ac4:	b8050513          	addi	a0,a0,-1152 # 80009640 <CONSOLE_STATUS+0x630>
    80003ac8:	00001097          	auipc	ra,0x1
    80003acc:	d84080e7          	jalr	-636(ra) # 8000484c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ad0:	00500313          	li	t1,5
    thread_dispatch();
    80003ad4:	ffffd097          	auipc	ra,0xffffd
    80003ad8:	7ac080e7          	jalr	1964(ra) # 80001280 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003adc:	01000513          	li	a0,16
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	f08080e7          	jalr	-248(ra) # 800039e8 <_ZL9fibonaccim>
    80003ae8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003aec:	00006517          	auipc	a0,0x6
    80003af0:	b6450513          	addi	a0,a0,-1180 # 80009650 <CONSOLE_STATUS+0x640>
    80003af4:	00001097          	auipc	ra,0x1
    80003af8:	d58080e7          	jalr	-680(ra) # 8000484c <_Z11printStringPKc>
    80003afc:	00000613          	li	a2,0
    80003b00:	00a00593          	li	a1,10
    80003b04:	0009051b          	sext.w	a0,s2
    80003b08:	00001097          	auipc	ra,0x1
    80003b0c:	ef4080e7          	jalr	-268(ra) # 800049fc <_Z8printIntiii>
    80003b10:	00005517          	auipc	a0,0x5
    80003b14:	6b050513          	addi	a0,a0,1712 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003b18:	00001097          	auipc	ra,0x1
    80003b1c:	d34080e7          	jalr	-716(ra) # 8000484c <_Z11printStringPKc>
    80003b20:	0400006f          	j	80003b60 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b24:	00006517          	auipc	a0,0x6
    80003b28:	b1450513          	addi	a0,a0,-1260 # 80009638 <CONSOLE_STATUS+0x628>
    80003b2c:	00001097          	auipc	ra,0x1
    80003b30:	d20080e7          	jalr	-736(ra) # 8000484c <_Z11printStringPKc>
    80003b34:	00000613          	li	a2,0
    80003b38:	00a00593          	li	a1,10
    80003b3c:	00048513          	mv	a0,s1
    80003b40:	00001097          	auipc	ra,0x1
    80003b44:	ebc080e7          	jalr	-324(ra) # 800049fc <_Z8printIntiii>
    80003b48:	00005517          	auipc	a0,0x5
    80003b4c:	67850513          	addi	a0,a0,1656 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003b50:	00001097          	auipc	ra,0x1
    80003b54:	cfc080e7          	jalr	-772(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003b58:	0014849b          	addiw	s1,s1,1
    80003b5c:	0ff4f493          	andi	s1,s1,255
    80003b60:	00f00793          	li	a5,15
    80003b64:	fc97f0e3          	bgeu	a5,s1,80003b24 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003b68:	00006517          	auipc	a0,0x6
    80003b6c:	af850513          	addi	a0,a0,-1288 # 80009660 <CONSOLE_STATUS+0x650>
    80003b70:	00001097          	auipc	ra,0x1
    80003b74:	cdc080e7          	jalr	-804(ra) # 8000484c <_Z11printStringPKc>
    finishedD = true;
    80003b78:	00100793          	li	a5,1
    80003b7c:	00008717          	auipc	a4,0x8
    80003b80:	a0f70423          	sb	a5,-1528(a4) # 8000b584 <_ZL9finishedD>
    thread_dispatch();
    80003b84:	ffffd097          	auipc	ra,0xffffd
    80003b88:	6fc080e7          	jalr	1788(ra) # 80001280 <_Z15thread_dispatchv>
}
    80003b8c:	01813083          	ld	ra,24(sp)
    80003b90:	01013403          	ld	s0,16(sp)
    80003b94:	00813483          	ld	s1,8(sp)
    80003b98:	00013903          	ld	s2,0(sp)
    80003b9c:	02010113          	addi	sp,sp,32
    80003ba0:	00008067          	ret

0000000080003ba4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003ba4:	fe010113          	addi	sp,sp,-32
    80003ba8:	00113c23          	sd	ra,24(sp)
    80003bac:	00813823          	sd	s0,16(sp)
    80003bb0:	00913423          	sd	s1,8(sp)
    80003bb4:	01213023          	sd	s2,0(sp)
    80003bb8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003bbc:	00000493          	li	s1,0
    80003bc0:	0400006f          	j	80003c00 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003bc4:	00006517          	auipc	a0,0x6
    80003bc8:	a4450513          	addi	a0,a0,-1468 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003bcc:	00001097          	auipc	ra,0x1
    80003bd0:	c80080e7          	jalr	-896(ra) # 8000484c <_Z11printStringPKc>
    80003bd4:	00000613          	li	a2,0
    80003bd8:	00a00593          	li	a1,10
    80003bdc:	00048513          	mv	a0,s1
    80003be0:	00001097          	auipc	ra,0x1
    80003be4:	e1c080e7          	jalr	-484(ra) # 800049fc <_Z8printIntiii>
    80003be8:	00005517          	auipc	a0,0x5
    80003bec:	5d850513          	addi	a0,a0,1496 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003bf0:	00001097          	auipc	ra,0x1
    80003bf4:	c5c080e7          	jalr	-932(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003bf8:	0014849b          	addiw	s1,s1,1
    80003bfc:	0ff4f493          	andi	s1,s1,255
    80003c00:	00200793          	li	a5,2
    80003c04:	fc97f0e3          	bgeu	a5,s1,80003bc4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003c08:	00006517          	auipc	a0,0x6
    80003c0c:	a0850513          	addi	a0,a0,-1528 # 80009610 <CONSOLE_STATUS+0x600>
    80003c10:	00001097          	auipc	ra,0x1
    80003c14:	c3c080e7          	jalr	-964(ra) # 8000484c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c18:	00700313          	li	t1,7
    thread_dispatch();
    80003c1c:	ffffd097          	auipc	ra,0xffffd
    80003c20:	664080e7          	jalr	1636(ra) # 80001280 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c24:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003c28:	00006517          	auipc	a0,0x6
    80003c2c:	9f850513          	addi	a0,a0,-1544 # 80009620 <CONSOLE_STATUS+0x610>
    80003c30:	00001097          	auipc	ra,0x1
    80003c34:	c1c080e7          	jalr	-996(ra) # 8000484c <_Z11printStringPKc>
    80003c38:	00000613          	li	a2,0
    80003c3c:	00a00593          	li	a1,10
    80003c40:	0009051b          	sext.w	a0,s2
    80003c44:	00001097          	auipc	ra,0x1
    80003c48:	db8080e7          	jalr	-584(ra) # 800049fc <_Z8printIntiii>
    80003c4c:	00005517          	auipc	a0,0x5
    80003c50:	57450513          	addi	a0,a0,1396 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003c54:	00001097          	auipc	ra,0x1
    80003c58:	bf8080e7          	jalr	-1032(ra) # 8000484c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003c5c:	00c00513          	li	a0,12
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	d88080e7          	jalr	-632(ra) # 800039e8 <_ZL9fibonaccim>
    80003c68:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003c6c:	00006517          	auipc	a0,0x6
    80003c70:	9bc50513          	addi	a0,a0,-1604 # 80009628 <CONSOLE_STATUS+0x618>
    80003c74:	00001097          	auipc	ra,0x1
    80003c78:	bd8080e7          	jalr	-1064(ra) # 8000484c <_Z11printStringPKc>
    80003c7c:	00000613          	li	a2,0
    80003c80:	00a00593          	li	a1,10
    80003c84:	0009051b          	sext.w	a0,s2
    80003c88:	00001097          	auipc	ra,0x1
    80003c8c:	d74080e7          	jalr	-652(ra) # 800049fc <_Z8printIntiii>
    80003c90:	00005517          	auipc	a0,0x5
    80003c94:	53050513          	addi	a0,a0,1328 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003c98:	00001097          	auipc	ra,0x1
    80003c9c:	bb4080e7          	jalr	-1100(ra) # 8000484c <_Z11printStringPKc>
    80003ca0:	0400006f          	j	80003ce0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003ca4:	00006517          	auipc	a0,0x6
    80003ca8:	96450513          	addi	a0,a0,-1692 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	ba0080e7          	jalr	-1120(ra) # 8000484c <_Z11printStringPKc>
    80003cb4:	00000613          	li	a2,0
    80003cb8:	00a00593          	li	a1,10
    80003cbc:	00048513          	mv	a0,s1
    80003cc0:	00001097          	auipc	ra,0x1
    80003cc4:	d3c080e7          	jalr	-708(ra) # 800049fc <_Z8printIntiii>
    80003cc8:	00005517          	auipc	a0,0x5
    80003ccc:	4f850513          	addi	a0,a0,1272 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	b7c080e7          	jalr	-1156(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003cd8:	0014849b          	addiw	s1,s1,1
    80003cdc:	0ff4f493          	andi	s1,s1,255
    80003ce0:	00500793          	li	a5,5
    80003ce4:	fc97f0e3          	bgeu	a5,s1,80003ca4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003ce8:	00005517          	auipc	a0,0x5
    80003cec:	34050513          	addi	a0,a0,832 # 80009028 <CONSOLE_STATUS+0x18>
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	b5c080e7          	jalr	-1188(ra) # 8000484c <_Z11printStringPKc>
    finishedC = true;
    80003cf8:	00100793          	li	a5,1
    80003cfc:	00008717          	auipc	a4,0x8
    80003d00:	88f704a3          	sb	a5,-1911(a4) # 8000b585 <_ZL9finishedC>
    thread_dispatch();
    80003d04:	ffffd097          	auipc	ra,0xffffd
    80003d08:	57c080e7          	jalr	1404(ra) # 80001280 <_Z15thread_dispatchv>
}
    80003d0c:	01813083          	ld	ra,24(sp)
    80003d10:	01013403          	ld	s0,16(sp)
    80003d14:	00813483          	ld	s1,8(sp)
    80003d18:	00013903          	ld	s2,0(sp)
    80003d1c:	02010113          	addi	sp,sp,32
    80003d20:	00008067          	ret

0000000080003d24 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003d24:	fe010113          	addi	sp,sp,-32
    80003d28:	00113c23          	sd	ra,24(sp)
    80003d2c:	00813823          	sd	s0,16(sp)
    80003d30:	00913423          	sd	s1,8(sp)
    80003d34:	01213023          	sd	s2,0(sp)
    80003d38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d3c:	00000913          	li	s2,0
    80003d40:	0380006f          	j	80003d78 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003d44:	ffffd097          	auipc	ra,0xffffd
    80003d48:	53c080e7          	jalr	1340(ra) # 80001280 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d4c:	00148493          	addi	s1,s1,1
    80003d50:	000027b7          	lui	a5,0x2
    80003d54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d58:	0097ee63          	bltu	a5,s1,80003d74 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d5c:	00000713          	li	a4,0
    80003d60:	000077b7          	lui	a5,0x7
    80003d64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d68:	fce7eee3          	bltu	a5,a4,80003d44 <_ZL11workerBodyBPv+0x20>
    80003d6c:	00170713          	addi	a4,a4,1
    80003d70:	ff1ff06f          	j	80003d60 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003d74:	00190913          	addi	s2,s2,1
    80003d78:	00f00793          	li	a5,15
    80003d7c:	0527e063          	bltu	a5,s2,80003dbc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003d80:	00006517          	auipc	a0,0x6
    80003d84:	87050513          	addi	a0,a0,-1936 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	ac4080e7          	jalr	-1340(ra) # 8000484c <_Z11printStringPKc>
    80003d90:	00000613          	li	a2,0
    80003d94:	00a00593          	li	a1,10
    80003d98:	0009051b          	sext.w	a0,s2
    80003d9c:	00001097          	auipc	ra,0x1
    80003da0:	c60080e7          	jalr	-928(ra) # 800049fc <_Z8printIntiii>
    80003da4:	00005517          	auipc	a0,0x5
    80003da8:	41c50513          	addi	a0,a0,1052 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	aa0080e7          	jalr	-1376(ra) # 8000484c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003db4:	00000493          	li	s1,0
    80003db8:	f99ff06f          	j	80003d50 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003dbc:	00006517          	auipc	a0,0x6
    80003dc0:	83c50513          	addi	a0,a0,-1988 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80003dc4:	00001097          	auipc	ra,0x1
    80003dc8:	a88080e7          	jalr	-1400(ra) # 8000484c <_Z11printStringPKc>
    finishedB = true;
    80003dcc:	00100793          	li	a5,1
    80003dd0:	00007717          	auipc	a4,0x7
    80003dd4:	7af70b23          	sb	a5,1974(a4) # 8000b586 <_ZL9finishedB>
    thread_dispatch();
    80003dd8:	ffffd097          	auipc	ra,0xffffd
    80003ddc:	4a8080e7          	jalr	1192(ra) # 80001280 <_Z15thread_dispatchv>
}
    80003de0:	01813083          	ld	ra,24(sp)
    80003de4:	01013403          	ld	s0,16(sp)
    80003de8:	00813483          	ld	s1,8(sp)
    80003dec:	00013903          	ld	s2,0(sp)
    80003df0:	02010113          	addi	sp,sp,32
    80003df4:	00008067          	ret

0000000080003df8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003df8:	fe010113          	addi	sp,sp,-32
    80003dfc:	00113c23          	sd	ra,24(sp)
    80003e00:	00813823          	sd	s0,16(sp)
    80003e04:	00913423          	sd	s1,8(sp)
    80003e08:	01213023          	sd	s2,0(sp)
    80003e0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003e10:	00000913          	li	s2,0
    80003e14:	0380006f          	j	80003e4c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003e18:	ffffd097          	auipc	ra,0xffffd
    80003e1c:	468080e7          	jalr	1128(ra) # 80001280 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e20:	00148493          	addi	s1,s1,1
    80003e24:	000027b7          	lui	a5,0x2
    80003e28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e2c:	0097ee63          	bltu	a5,s1,80003e48 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e30:	00000713          	li	a4,0
    80003e34:	000077b7          	lui	a5,0x7
    80003e38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e3c:	fce7eee3          	bltu	a5,a4,80003e18 <_ZL11workerBodyAPv+0x20>
    80003e40:	00170713          	addi	a4,a4,1
    80003e44:	ff1ff06f          	j	80003e34 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e48:	00190913          	addi	s2,s2,1
    80003e4c:	00900793          	li	a5,9
    80003e50:	0527e063          	bltu	a5,s2,80003e90 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e54:	00005517          	auipc	a0,0x5
    80003e58:	1cc50513          	addi	a0,a0,460 # 80009020 <CONSOLE_STATUS+0x10>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	9f0080e7          	jalr	-1552(ra) # 8000484c <_Z11printStringPKc>
    80003e64:	00000613          	li	a2,0
    80003e68:	00a00593          	li	a1,10
    80003e6c:	0009051b          	sext.w	a0,s2
    80003e70:	00001097          	auipc	ra,0x1
    80003e74:	b8c080e7          	jalr	-1140(ra) # 800049fc <_Z8printIntiii>
    80003e78:	00005517          	auipc	a0,0x5
    80003e7c:	34850513          	addi	a0,a0,840 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003e80:	00001097          	auipc	ra,0x1
    80003e84:	9cc080e7          	jalr	-1588(ra) # 8000484c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e88:	00000493          	li	s1,0
    80003e8c:	f99ff06f          	j	80003e24 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003e90:	00005517          	auipc	a0,0x5
    80003e94:	19850513          	addi	a0,a0,408 # 80009028 <CONSOLE_STATUS+0x18>
    80003e98:	00001097          	auipc	ra,0x1
    80003e9c:	9b4080e7          	jalr	-1612(ra) # 8000484c <_Z11printStringPKc>
    finishedA = true;
    80003ea0:	00100793          	li	a5,1
    80003ea4:	00007717          	auipc	a4,0x7
    80003ea8:	6ef701a3          	sb	a5,1763(a4) # 8000b587 <_ZL9finishedA>
}
    80003eac:	01813083          	ld	ra,24(sp)
    80003eb0:	01013403          	ld	s0,16(sp)
    80003eb4:	00813483          	ld	s1,8(sp)
    80003eb8:	00013903          	ld	s2,0(sp)
    80003ebc:	02010113          	addi	sp,sp,32
    80003ec0:	00008067          	ret

0000000080003ec4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003ec4:	fd010113          	addi	sp,sp,-48
    80003ec8:	02113423          	sd	ra,40(sp)
    80003ecc:	02813023          	sd	s0,32(sp)
    80003ed0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003ed4:	00000613          	li	a2,0
    80003ed8:	00000597          	auipc	a1,0x0
    80003edc:	f2058593          	addi	a1,a1,-224 # 80003df8 <_ZL11workerBodyAPv>
    80003ee0:	fd040513          	addi	a0,s0,-48
    80003ee4:	ffffd097          	auipc	ra,0xffffd
    80003ee8:	2f0080e7          	jalr	752(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003eec:	00005517          	auipc	a0,0x5
    80003ef0:	14c50513          	addi	a0,a0,332 # 80009038 <CONSOLE_STATUS+0x28>
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	958080e7          	jalr	-1704(ra) # 8000484c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003efc:	00000613          	li	a2,0
    80003f00:	00000597          	auipc	a1,0x0
    80003f04:	e2458593          	addi	a1,a1,-476 # 80003d24 <_ZL11workerBodyBPv>
    80003f08:	fd840513          	addi	a0,s0,-40
    80003f0c:	ffffd097          	auipc	ra,0xffffd
    80003f10:	2c8080e7          	jalr	712(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003f14:	00005517          	auipc	a0,0x5
    80003f18:	75c50513          	addi	a0,a0,1884 # 80009670 <CONSOLE_STATUS+0x660>
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	930080e7          	jalr	-1744(ra) # 8000484c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003f24:	00000613          	li	a2,0
    80003f28:	00000597          	auipc	a1,0x0
    80003f2c:	c7c58593          	addi	a1,a1,-900 # 80003ba4 <_ZL11workerBodyCPv>
    80003f30:	fe040513          	addi	a0,s0,-32
    80003f34:	ffffd097          	auipc	ra,0xffffd
    80003f38:	2a0080e7          	jalr	672(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80003f3c:	00005517          	auipc	a0,0x5
    80003f40:	74c50513          	addi	a0,a0,1868 # 80009688 <CONSOLE_STATUS+0x678>
    80003f44:	00001097          	auipc	ra,0x1
    80003f48:	908080e7          	jalr	-1784(ra) # 8000484c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003f4c:	00000613          	li	a2,0
    80003f50:	00000597          	auipc	a1,0x0
    80003f54:	b0c58593          	addi	a1,a1,-1268 # 80003a5c <_ZL11workerBodyDPv>
    80003f58:	fe840513          	addi	a0,s0,-24
    80003f5c:	ffffd097          	auipc	ra,0xffffd
    80003f60:	278080e7          	jalr	632(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003f64:	00005517          	auipc	a0,0x5
    80003f68:	73c50513          	addi	a0,a0,1852 # 800096a0 <CONSOLE_STATUS+0x690>
    80003f6c:	00001097          	auipc	ra,0x1
    80003f70:	8e0080e7          	jalr	-1824(ra) # 8000484c <_Z11printStringPKc>
    80003f74:	00c0006f          	j	80003f80 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003f78:	ffffd097          	auipc	ra,0xffffd
    80003f7c:	308080e7          	jalr	776(ra) # 80001280 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f80:	00007797          	auipc	a5,0x7
    80003f84:	6077c783          	lbu	a5,1543(a5) # 8000b587 <_ZL9finishedA>
    80003f88:	fe0788e3          	beqz	a5,80003f78 <_Z18Threads_C_API_testv+0xb4>
    80003f8c:	00007797          	auipc	a5,0x7
    80003f90:	5fa7c783          	lbu	a5,1530(a5) # 8000b586 <_ZL9finishedB>
    80003f94:	fe0782e3          	beqz	a5,80003f78 <_Z18Threads_C_API_testv+0xb4>
    80003f98:	00007797          	auipc	a5,0x7
    80003f9c:	5ed7c783          	lbu	a5,1517(a5) # 8000b585 <_ZL9finishedC>
    80003fa0:	fc078ce3          	beqz	a5,80003f78 <_Z18Threads_C_API_testv+0xb4>
    80003fa4:	00007797          	auipc	a5,0x7
    80003fa8:	5e07c783          	lbu	a5,1504(a5) # 8000b584 <_ZL9finishedD>
    80003fac:	fc0786e3          	beqz	a5,80003f78 <_Z18Threads_C_API_testv+0xb4>
        //printString("Uspeo prvi");
    }

}
    80003fb0:	02813083          	ld	ra,40(sp)
    80003fb4:	02013403          	ld	s0,32(sp)
    80003fb8:	03010113          	addi	sp,sp,48
    80003fbc:	00008067          	ret

0000000080003fc0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003fc0:	fd010113          	addi	sp,sp,-48
    80003fc4:	02113423          	sd	ra,40(sp)
    80003fc8:	02813023          	sd	s0,32(sp)
    80003fcc:	00913c23          	sd	s1,24(sp)
    80003fd0:	01213823          	sd	s2,16(sp)
    80003fd4:	01313423          	sd	s3,8(sp)
    80003fd8:	03010413          	addi	s0,sp,48
    80003fdc:	00050993          	mv	s3,a0
    80003fe0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003fe4:	00000913          	li	s2,0
    80003fe8:	00c0006f          	j	80003ff4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != '$') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003fec:	ffffe097          	auipc	ra,0xffffe
    80003ff0:	c98080e7          	jalr	-872(ra) # 80001c84 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != '$') {
    80003ff4:	ffffd097          	auipc	ra,0xffffd
    80003ff8:	3f0080e7          	jalr	1008(ra) # 800013e4 <_Z4getcv>
    80003ffc:	0005059b          	sext.w	a1,a0
    80004000:	02400793          	li	a5,36
    80004004:	02f58a63          	beq	a1,a5,80004038 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004008:	0084b503          	ld	a0,8(s1)
    8000400c:	00001097          	auipc	ra,0x1
    80004010:	c64080e7          	jalr	-924(ra) # 80004c70 <_ZN9BufferCPP3putEi>
        i++;
    80004014:	0019071b          	addiw	a4,s2,1
    80004018:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000401c:	0004a683          	lw	a3,0(s1)
    80004020:	0026979b          	slliw	a5,a3,0x2
    80004024:	00d787bb          	addw	a5,a5,a3
    80004028:	0017979b          	slliw	a5,a5,0x1
    8000402c:	02f767bb          	remw	a5,a4,a5
    80004030:	fc0792e3          	bnez	a5,80003ff4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004034:	fb9ff06f          	j	80003fec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004038:	00100793          	li	a5,1
    8000403c:	00007717          	auipc	a4,0x7
    80004040:	54f72623          	sw	a5,1356(a4) # 8000b588 <_ZL9threadEnd>
    td->buffer->put('!');
    80004044:	0289b783          	ld	a5,40(s3)
    80004048:	02100593          	li	a1,33
    8000404c:	0087b503          	ld	a0,8(a5)
    80004050:	00001097          	auipc	ra,0x1
    80004054:	c20080e7          	jalr	-992(ra) # 80004c70 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004058:	0104b503          	ld	a0,16(s1)
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	cdc080e7          	jalr	-804(ra) # 80001d38 <_ZN9Semaphore6signalEv>
}
    80004064:	02813083          	ld	ra,40(sp)
    80004068:	02013403          	ld	s0,32(sp)
    8000406c:	01813483          	ld	s1,24(sp)
    80004070:	01013903          	ld	s2,16(sp)
    80004074:	00813983          	ld	s3,8(sp)
    80004078:	03010113          	addi	sp,sp,48
    8000407c:	00008067          	ret

0000000080004080 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004080:	fe010113          	addi	sp,sp,-32
    80004084:	00113c23          	sd	ra,24(sp)
    80004088:	00813823          	sd	s0,16(sp)
    8000408c:	00913423          	sd	s1,8(sp)
    80004090:	01213023          	sd	s2,0(sp)
    80004094:	02010413          	addi	s0,sp,32
    80004098:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000409c:	00000913          	li	s2,0
    800040a0:	00c0006f          	j	800040ac <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800040a4:	ffffe097          	auipc	ra,0xffffe
    800040a8:	be0080e7          	jalr	-1056(ra) # 80001c84 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800040ac:	00007797          	auipc	a5,0x7
    800040b0:	4dc7a783          	lw	a5,1244(a5) # 8000b588 <_ZL9threadEnd>
    800040b4:	02079e63          	bnez	a5,800040f0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800040b8:	0004a583          	lw	a1,0(s1)
    800040bc:	0305859b          	addiw	a1,a1,48
    800040c0:	0084b503          	ld	a0,8(s1)
    800040c4:	00001097          	auipc	ra,0x1
    800040c8:	bac080e7          	jalr	-1108(ra) # 80004c70 <_ZN9BufferCPP3putEi>
        i++;
    800040cc:	0019071b          	addiw	a4,s2,1
    800040d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800040d4:	0004a683          	lw	a3,0(s1)
    800040d8:	0026979b          	slliw	a5,a3,0x2
    800040dc:	00d787bb          	addw	a5,a5,a3
    800040e0:	0017979b          	slliw	a5,a5,0x1
    800040e4:	02f767bb          	remw	a5,a4,a5
    800040e8:	fc0792e3          	bnez	a5,800040ac <_ZN12ProducerSync8producerEPv+0x2c>
    800040ec:	fb9ff06f          	j	800040a4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800040f0:	0104b503          	ld	a0,16(s1)
    800040f4:	ffffe097          	auipc	ra,0xffffe
    800040f8:	c44080e7          	jalr	-956(ra) # 80001d38 <_ZN9Semaphore6signalEv>
}
    800040fc:	01813083          	ld	ra,24(sp)
    80004100:	01013403          	ld	s0,16(sp)
    80004104:	00813483          	ld	s1,8(sp)
    80004108:	00013903          	ld	s2,0(sp)
    8000410c:	02010113          	addi	sp,sp,32
    80004110:	00008067          	ret

0000000080004114 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004114:	fd010113          	addi	sp,sp,-48
    80004118:	02113423          	sd	ra,40(sp)
    8000411c:	02813023          	sd	s0,32(sp)
    80004120:	00913c23          	sd	s1,24(sp)
    80004124:	01213823          	sd	s2,16(sp)
    80004128:	01313423          	sd	s3,8(sp)
    8000412c:	01413023          	sd	s4,0(sp)
    80004130:	03010413          	addi	s0,sp,48
    80004134:	00050993          	mv	s3,a0
    80004138:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000413c:	00000a13          	li	s4,0
    80004140:	01c0006f          	j	8000415c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004144:	ffffe097          	auipc	ra,0xffffe
    80004148:	b40080e7          	jalr	-1216(ra) # 80001c84 <_ZN6Thread8dispatchEv>
    8000414c:	0500006f          	j	8000419c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004150:	00a00513          	li	a0,10
    80004154:	ffffd097          	auipc	ra,0xffffd
    80004158:	2bc080e7          	jalr	700(ra) # 80001410 <_Z4putcc>
    while (!threadEnd) {
    8000415c:	00007797          	auipc	a5,0x7
    80004160:	42c7a783          	lw	a5,1068(a5) # 8000b588 <_ZL9threadEnd>
    80004164:	06079263          	bnez	a5,800041c8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004168:	00893503          	ld	a0,8(s2)
    8000416c:	00001097          	auipc	ra,0x1
    80004170:	b94080e7          	jalr	-1132(ra) # 80004d00 <_ZN9BufferCPP3getEv>
        i++;
    80004174:	001a049b          	addiw	s1,s4,1
    80004178:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000417c:	0ff57513          	andi	a0,a0,255
    80004180:	ffffd097          	auipc	ra,0xffffd
    80004184:	290080e7          	jalr	656(ra) # 80001410 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004188:	00092703          	lw	a4,0(s2)
    8000418c:	0027179b          	slliw	a5,a4,0x2
    80004190:	00e787bb          	addw	a5,a5,a4
    80004194:	02f4e7bb          	remw	a5,s1,a5
    80004198:	fa0786e3          	beqz	a5,80004144 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000419c:	05000793          	li	a5,80
    800041a0:	02f4e4bb          	remw	s1,s1,a5
    800041a4:	fa049ce3          	bnez	s1,8000415c <_ZN12ConsumerSync8consumerEPv+0x48>
    800041a8:	fa9ff06f          	j	80004150 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800041ac:	0289b783          	ld	a5,40(s3)
    800041b0:	0087b503          	ld	a0,8(a5)
    800041b4:	00001097          	auipc	ra,0x1
    800041b8:	b4c080e7          	jalr	-1204(ra) # 80004d00 <_ZN9BufferCPP3getEv>
        putc(key);
    800041bc:	0ff57513          	andi	a0,a0,255
    800041c0:	ffffd097          	auipc	ra,0xffffd
    800041c4:	250080e7          	jalr	592(ra) # 80001410 <_Z4putcc>
    while (td->buffer->getCnt() > 0) {
    800041c8:	0289b783          	ld	a5,40(s3)
    800041cc:	0087b503          	ld	a0,8(a5)
    800041d0:	00001097          	auipc	ra,0x1
    800041d4:	bbc080e7          	jalr	-1092(ra) # 80004d8c <_ZN9BufferCPP6getCntEv>
    800041d8:	fca04ae3          	bgtz	a0,800041ac <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800041dc:	01093503          	ld	a0,16(s2)
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	b58080e7          	jalr	-1192(ra) # 80001d38 <_ZN9Semaphore6signalEv>
}
    800041e8:	02813083          	ld	ra,40(sp)
    800041ec:	02013403          	ld	s0,32(sp)
    800041f0:	01813483          	ld	s1,24(sp)
    800041f4:	01013903          	ld	s2,16(sp)
    800041f8:	00813983          	ld	s3,8(sp)
    800041fc:	00013a03          	ld	s4,0(sp)
    80004200:	03010113          	addi	sp,sp,48
    80004204:	00008067          	ret

0000000080004208 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004208:	f8010113          	addi	sp,sp,-128
    8000420c:	06113c23          	sd	ra,120(sp)
    80004210:	06813823          	sd	s0,112(sp)
    80004214:	06913423          	sd	s1,104(sp)
    80004218:	07213023          	sd	s2,96(sp)
    8000421c:	05313c23          	sd	s3,88(sp)
    80004220:	05413823          	sd	s4,80(sp)
    80004224:	05513423          	sd	s5,72(sp)
    80004228:	05613023          	sd	s6,64(sp)
    8000422c:	03713c23          	sd	s7,56(sp)
    80004230:	03813823          	sd	s8,48(sp)
    80004234:	03913423          	sd	s9,40(sp)
    80004238:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000423c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004240:	00005517          	auipc	a0,0x5
    80004244:	29050513          	addi	a0,a0,656 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80004248:	00000097          	auipc	ra,0x0
    8000424c:	604080e7          	jalr	1540(ra) # 8000484c <_Z11printStringPKc>
    getString(input, 30);
    80004250:	01e00593          	li	a1,30
    80004254:	f8040493          	addi	s1,s0,-128
    80004258:	00048513          	mv	a0,s1
    8000425c:	00000097          	auipc	ra,0x0
    80004260:	678080e7          	jalr	1656(ra) # 800048d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004264:	00048513          	mv	a0,s1
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	744080e7          	jalr	1860(ra) # 800049ac <_Z11stringToIntPKc>
    80004270:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004274:	00005517          	auipc	a0,0x5
    80004278:	27c50513          	addi	a0,a0,636 # 800094f0 <CONSOLE_STATUS+0x4e0>
    8000427c:	00000097          	auipc	ra,0x0
    80004280:	5d0080e7          	jalr	1488(ra) # 8000484c <_Z11printStringPKc>
    getString(input, 30);
    80004284:	01e00593          	li	a1,30
    80004288:	00048513          	mv	a0,s1
    8000428c:	00000097          	auipc	ra,0x0
    80004290:	648080e7          	jalr	1608(ra) # 800048d4 <_Z9getStringPci>
    n = stringToInt(input);
    80004294:	00048513          	mv	a0,s1
    80004298:	00000097          	auipc	ra,0x0
    8000429c:	714080e7          	jalr	1812(ra) # 800049ac <_Z11stringToIntPKc>
    800042a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800042a4:	00005517          	auipc	a0,0x5
    800042a8:	26c50513          	addi	a0,a0,620 # 80009510 <CONSOLE_STATUS+0x500>
    800042ac:	00000097          	auipc	ra,0x0
    800042b0:	5a0080e7          	jalr	1440(ra) # 8000484c <_Z11printStringPKc>
    800042b4:	00000613          	li	a2,0
    800042b8:	00a00593          	li	a1,10
    800042bc:	00090513          	mv	a0,s2
    800042c0:	00000097          	auipc	ra,0x0
    800042c4:	73c080e7          	jalr	1852(ra) # 800049fc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800042c8:	00005517          	auipc	a0,0x5
    800042cc:	26050513          	addi	a0,a0,608 # 80009528 <CONSOLE_STATUS+0x518>
    800042d0:	00000097          	auipc	ra,0x0
    800042d4:	57c080e7          	jalr	1404(ra) # 8000484c <_Z11printStringPKc>
    800042d8:	00000613          	li	a2,0
    800042dc:	00a00593          	li	a1,10
    800042e0:	00048513          	mv	a0,s1
    800042e4:	00000097          	auipc	ra,0x0
    800042e8:	718080e7          	jalr	1816(ra) # 800049fc <_Z8printIntiii>
    printString(".\n");
    800042ec:	00005517          	auipc	a0,0x5
    800042f0:	25450513          	addi	a0,a0,596 # 80009540 <CONSOLE_STATUS+0x530>
    800042f4:	00000097          	auipc	ra,0x0
    800042f8:	558080e7          	jalr	1368(ra) # 8000484c <_Z11printStringPKc>
    if(threadNum > n) {
    800042fc:	0324c463          	blt	s1,s2,80004324 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004300:	03205c63          	blez	s2,80004338 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004304:	03800513          	li	a0,56
    80004308:	ffffd097          	auipc	ra,0xffffd
    8000430c:	3c8080e7          	jalr	968(ra) # 800016d0 <_Znwm>
    80004310:	00050a93          	mv	s5,a0
    80004314:	00048593          	mv	a1,s1
    80004318:	00001097          	auipc	ra,0x1
    8000431c:	804080e7          	jalr	-2044(ra) # 80004b1c <_ZN9BufferCPPC1Ei>
    80004320:	0300006f          	j	80004350 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004324:	00005517          	auipc	a0,0x5
    80004328:	22450513          	addi	a0,a0,548 # 80009548 <CONSOLE_STATUS+0x538>
    8000432c:	00000097          	auipc	ra,0x0
    80004330:	520080e7          	jalr	1312(ra) # 8000484c <_Z11printStringPKc>
        return;
    80004334:	0140006f          	j	80004348 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004338:	00005517          	auipc	a0,0x5
    8000433c:	25050513          	addi	a0,a0,592 # 80009588 <CONSOLE_STATUS+0x578>
    80004340:	00000097          	auipc	ra,0x0
    80004344:	50c080e7          	jalr	1292(ra) # 8000484c <_Z11printStringPKc>
        return;
    80004348:	000b8113          	mv	sp,s7
    8000434c:	2380006f          	j	80004584 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004350:	01000513          	li	a0,16
    80004354:	ffffd097          	auipc	ra,0xffffd
    80004358:	37c080e7          	jalr	892(ra) # 800016d0 <_Znwm>
    8000435c:	00050493          	mv	s1,a0
    80004360:	00000593          	li	a1,0
    80004364:	ffffe097          	auipc	ra,0xffffe
    80004368:	970080e7          	jalr	-1680(ra) # 80001cd4 <_ZN9SemaphoreC1Ej>
    8000436c:	00007797          	auipc	a5,0x7
    80004370:	2297b223          	sd	s1,548(a5) # 8000b590 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004374:	00391793          	slli	a5,s2,0x3
    80004378:	00f78793          	addi	a5,a5,15
    8000437c:	ff07f793          	andi	a5,a5,-16
    80004380:	40f10133          	sub	sp,sp,a5
    80004384:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004388:	0019071b          	addiw	a4,s2,1
    8000438c:	00171793          	slli	a5,a4,0x1
    80004390:	00e787b3          	add	a5,a5,a4
    80004394:	00379793          	slli	a5,a5,0x3
    80004398:	00f78793          	addi	a5,a5,15
    8000439c:	ff07f793          	andi	a5,a5,-16
    800043a0:	40f10133          	sub	sp,sp,a5
    800043a4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800043a8:	00191c13          	slli	s8,s2,0x1
    800043ac:	012c07b3          	add	a5,s8,s2
    800043b0:	00379793          	slli	a5,a5,0x3
    800043b4:	00fa07b3          	add	a5,s4,a5
    800043b8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800043bc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800043c0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800043c4:	03000513          	li	a0,48
    800043c8:	ffffd097          	auipc	ra,0xffffd
    800043cc:	308080e7          	jalr	776(ra) # 800016d0 <_Znwm>
    800043d0:	00050b13          	mv	s6,a0
    800043d4:	012c0c33          	add	s8,s8,s2
    800043d8:	003c1c13          	slli	s8,s8,0x3
    800043dc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	8cc080e7          	jalr	-1844(ra) # 80001cac <_ZN6ThreadC1Ev>
    800043e8:	00007797          	auipc	a5,0x7
    800043ec:	0a878793          	addi	a5,a5,168 # 8000b490 <_ZTV12ConsumerSync+0x10>
    800043f0:	00fb3023          	sd	a5,0(s6)
    800043f4:	038b3423          	sd	s8,40(s6)
    consumerThread->start();
    800043f8:	000b0513          	mv	a0,s6
    800043fc:	ffffe097          	auipc	ra,0xffffe
    80004400:	808080e7          	jalr	-2040(ra) # 80001c04 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004404:	00000493          	li	s1,0
    80004408:	0380006f          	j	80004440 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000440c:	00007797          	auipc	a5,0x7
    80004410:	05c78793          	addi	a5,a5,92 # 8000b468 <_ZTV12ProducerSync+0x10>
    80004414:	00fcb023          	sd	a5,0(s9)
    80004418:	038cb423          	sd	s8,40(s9)
            threads[i] = new ProducerSync(data+i);
    8000441c:	00349793          	slli	a5,s1,0x3
    80004420:	00f987b3          	add	a5,s3,a5
    80004424:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004428:	00349793          	slli	a5,s1,0x3
    8000442c:	00f987b3          	add	a5,s3,a5
    80004430:	0007b503          	ld	a0,0(a5)
    80004434:	ffffd097          	auipc	ra,0xffffd
    80004438:	7d0080e7          	jalr	2000(ra) # 80001c04 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000443c:	0014849b          	addiw	s1,s1,1
    80004440:	0b24d063          	bge	s1,s2,800044e0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004444:	00149793          	slli	a5,s1,0x1
    80004448:	009787b3          	add	a5,a5,s1
    8000444c:	00379793          	slli	a5,a5,0x3
    80004450:	00fa07b3          	add	a5,s4,a5
    80004454:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004458:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000445c:	00007717          	auipc	a4,0x7
    80004460:	13473703          	ld	a4,308(a4) # 8000b590 <_ZL10waitForAll>
    80004464:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004468:	02905863          	blez	s1,80004498 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000446c:	03000513          	li	a0,48
    80004470:	ffffd097          	auipc	ra,0xffffd
    80004474:	260080e7          	jalr	608(ra) # 800016d0 <_Znwm>
    80004478:	00050c93          	mv	s9,a0
    8000447c:	00149c13          	slli	s8,s1,0x1
    80004480:	009c0c33          	add	s8,s8,s1
    80004484:	003c1c13          	slli	s8,s8,0x3
    80004488:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	820080e7          	jalr	-2016(ra) # 80001cac <_ZN6ThreadC1Ev>
    80004494:	f79ff06f          	j	8000440c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004498:	03000513          	li	a0,48
    8000449c:	ffffd097          	auipc	ra,0xffffd
    800044a0:	234080e7          	jalr	564(ra) # 800016d0 <_Znwm>
    800044a4:	00050c93          	mv	s9,a0
    800044a8:	00149c13          	slli	s8,s1,0x1
    800044ac:	009c0c33          	add	s8,s8,s1
    800044b0:	003c1c13          	slli	s8,s8,0x3
    800044b4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800044b8:	ffffd097          	auipc	ra,0xffffd
    800044bc:	7f4080e7          	jalr	2036(ra) # 80001cac <_ZN6ThreadC1Ev>
    800044c0:	00007797          	auipc	a5,0x7
    800044c4:	f8078793          	addi	a5,a5,-128 # 8000b440 <_ZTV16ProducerKeyboard+0x10>
    800044c8:	00fcb023          	sd	a5,0(s9)
    800044cc:	038cb423          	sd	s8,40(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800044d0:	00349793          	slli	a5,s1,0x3
    800044d4:	00f987b3          	add	a5,s3,a5
    800044d8:	0197b023          	sd	s9,0(a5)
    800044dc:	f4dff06f          	j	80004428 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800044e0:	ffffd097          	auipc	ra,0xffffd
    800044e4:	7a4080e7          	jalr	1956(ra) # 80001c84 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800044e8:	00000493          	li	s1,0
    800044ec:	00994e63          	blt	s2,s1,80004508 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800044f0:	00007517          	auipc	a0,0x7
    800044f4:	0a053503          	ld	a0,160(a0) # 8000b590 <_ZL10waitForAll>
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	814080e7          	jalr	-2028(ra) # 80001d0c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004500:	0014849b          	addiw	s1,s1,1
    80004504:	fe9ff06f          	j	800044ec <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004508:	00000493          	li	s1,0
    8000450c:	0080006f          	j	80004514 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004510:	0014849b          	addiw	s1,s1,1
    80004514:	0324d263          	bge	s1,s2,80004538 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004518:	00349793          	slli	a5,s1,0x3
    8000451c:	00f987b3          	add	a5,s3,a5
    80004520:	0007b503          	ld	a0,0(a5)
    80004524:	fe0506e3          	beqz	a0,80004510 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004528:	00053783          	ld	a5,0(a0)
    8000452c:	0087b783          	ld	a5,8(a5)
    80004530:	000780e7          	jalr	a5
    80004534:	fddff06f          	j	80004510 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004538:	000b0a63          	beqz	s6,8000454c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000453c:	000b3783          	ld	a5,0(s6)
    80004540:	0087b783          	ld	a5,8(a5)
    80004544:	000b0513          	mv	a0,s6
    80004548:	000780e7          	jalr	a5
    delete waitForAll;
    8000454c:	00007517          	auipc	a0,0x7
    80004550:	04453503          	ld	a0,68(a0) # 8000b590 <_ZL10waitForAll>
    80004554:	00050863          	beqz	a0,80004564 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004558:	00053783          	ld	a5,0(a0)
    8000455c:	0087b783          	ld	a5,8(a5)
    80004560:	000780e7          	jalr	a5
    delete buffer;
    80004564:	000a8e63          	beqz	s5,80004580 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004568:	000a8513          	mv	a0,s5
    8000456c:	00001097          	auipc	ra,0x1
    80004570:	8a8080e7          	jalr	-1880(ra) # 80004e14 <_ZN9BufferCPPD1Ev>
    80004574:	000a8513          	mv	a0,s5
    80004578:	ffffd097          	auipc	ra,0xffffd
    8000457c:	1d8080e7          	jalr	472(ra) # 80001750 <_ZdlPv>
    80004580:	000b8113          	mv	sp,s7

}
    80004584:	f8040113          	addi	sp,s0,-128
    80004588:	07813083          	ld	ra,120(sp)
    8000458c:	07013403          	ld	s0,112(sp)
    80004590:	06813483          	ld	s1,104(sp)
    80004594:	06013903          	ld	s2,96(sp)
    80004598:	05813983          	ld	s3,88(sp)
    8000459c:	05013a03          	ld	s4,80(sp)
    800045a0:	04813a83          	ld	s5,72(sp)
    800045a4:	04013b03          	ld	s6,64(sp)
    800045a8:	03813b83          	ld	s7,56(sp)
    800045ac:	03013c03          	ld	s8,48(sp)
    800045b0:	02813c83          	ld	s9,40(sp)
    800045b4:	08010113          	addi	sp,sp,128
    800045b8:	00008067          	ret
    800045bc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800045c0:	000a8513          	mv	a0,s5
    800045c4:	ffffd097          	auipc	ra,0xffffd
    800045c8:	18c080e7          	jalr	396(ra) # 80001750 <_ZdlPv>
    800045cc:	00048513          	mv	a0,s1
    800045d0:	00008097          	auipc	ra,0x8
    800045d4:	0b8080e7          	jalr	184(ra) # 8000c688 <_Unwind_Resume>
    800045d8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800045dc:	00048513          	mv	a0,s1
    800045e0:	ffffd097          	auipc	ra,0xffffd
    800045e4:	170080e7          	jalr	368(ra) # 80001750 <_ZdlPv>
    800045e8:	00090513          	mv	a0,s2
    800045ec:	00008097          	auipc	ra,0x8
    800045f0:	09c080e7          	jalr	156(ra) # 8000c688 <_Unwind_Resume>
    800045f4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800045f8:	000b0513          	mv	a0,s6
    800045fc:	ffffd097          	auipc	ra,0xffffd
    80004600:	154080e7          	jalr	340(ra) # 80001750 <_ZdlPv>
    80004604:	00048513          	mv	a0,s1
    80004608:	00008097          	auipc	ra,0x8
    8000460c:	080080e7          	jalr	128(ra) # 8000c688 <_Unwind_Resume>
    80004610:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004614:	000c8513          	mv	a0,s9
    80004618:	ffffd097          	auipc	ra,0xffffd
    8000461c:	138080e7          	jalr	312(ra) # 80001750 <_ZdlPv>
    80004620:	00048513          	mv	a0,s1
    80004624:	00008097          	auipc	ra,0x8
    80004628:	064080e7          	jalr	100(ra) # 8000c688 <_Unwind_Resume>
    8000462c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004630:	000c8513          	mv	a0,s9
    80004634:	ffffd097          	auipc	ra,0xffffd
    80004638:	11c080e7          	jalr	284(ra) # 80001750 <_ZdlPv>
    8000463c:	00048513          	mv	a0,s1
    80004640:	00008097          	auipc	ra,0x8
    80004644:	048080e7          	jalr	72(ra) # 8000c688 <_Unwind_Resume>

0000000080004648 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004648:	ff010113          	addi	sp,sp,-16
    8000464c:	00113423          	sd	ra,8(sp)
    80004650:	00813023          	sd	s0,0(sp)
    80004654:	01010413          	addi	s0,sp,16
    80004658:	00007797          	auipc	a5,0x7
    8000465c:	e3878793          	addi	a5,a5,-456 # 8000b490 <_ZTV12ConsumerSync+0x10>
    80004660:	00f53023          	sd	a5,0(a0)
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	48c080e7          	jalr	1164(ra) # 80001af0 <_ZN6ThreadD1Ev>
    8000466c:	00813083          	ld	ra,8(sp)
    80004670:	00013403          	ld	s0,0(sp)
    80004674:	01010113          	addi	sp,sp,16
    80004678:	00008067          	ret

000000008000467c <_ZN12ConsumerSyncD0Ev>:
    8000467c:	fe010113          	addi	sp,sp,-32
    80004680:	00113c23          	sd	ra,24(sp)
    80004684:	00813823          	sd	s0,16(sp)
    80004688:	00913423          	sd	s1,8(sp)
    8000468c:	02010413          	addi	s0,sp,32
    80004690:	00050493          	mv	s1,a0
    80004694:	00007797          	auipc	a5,0x7
    80004698:	dfc78793          	addi	a5,a5,-516 # 8000b490 <_ZTV12ConsumerSync+0x10>
    8000469c:	00f53023          	sd	a5,0(a0)
    800046a0:	ffffd097          	auipc	ra,0xffffd
    800046a4:	450080e7          	jalr	1104(ra) # 80001af0 <_ZN6ThreadD1Ev>
    800046a8:	00048513          	mv	a0,s1
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	0a4080e7          	jalr	164(ra) # 80001750 <_ZdlPv>
    800046b4:	01813083          	ld	ra,24(sp)
    800046b8:	01013403          	ld	s0,16(sp)
    800046bc:	00813483          	ld	s1,8(sp)
    800046c0:	02010113          	addi	sp,sp,32
    800046c4:	00008067          	ret

00000000800046c8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800046c8:	ff010113          	addi	sp,sp,-16
    800046cc:	00113423          	sd	ra,8(sp)
    800046d0:	00813023          	sd	s0,0(sp)
    800046d4:	01010413          	addi	s0,sp,16
    800046d8:	00007797          	auipc	a5,0x7
    800046dc:	d9078793          	addi	a5,a5,-624 # 8000b468 <_ZTV12ProducerSync+0x10>
    800046e0:	00f53023          	sd	a5,0(a0)
    800046e4:	ffffd097          	auipc	ra,0xffffd
    800046e8:	40c080e7          	jalr	1036(ra) # 80001af0 <_ZN6ThreadD1Ev>
    800046ec:	00813083          	ld	ra,8(sp)
    800046f0:	00013403          	ld	s0,0(sp)
    800046f4:	01010113          	addi	sp,sp,16
    800046f8:	00008067          	ret

00000000800046fc <_ZN12ProducerSyncD0Ev>:
    800046fc:	fe010113          	addi	sp,sp,-32
    80004700:	00113c23          	sd	ra,24(sp)
    80004704:	00813823          	sd	s0,16(sp)
    80004708:	00913423          	sd	s1,8(sp)
    8000470c:	02010413          	addi	s0,sp,32
    80004710:	00050493          	mv	s1,a0
    80004714:	00007797          	auipc	a5,0x7
    80004718:	d5478793          	addi	a5,a5,-684 # 8000b468 <_ZTV12ProducerSync+0x10>
    8000471c:	00f53023          	sd	a5,0(a0)
    80004720:	ffffd097          	auipc	ra,0xffffd
    80004724:	3d0080e7          	jalr	976(ra) # 80001af0 <_ZN6ThreadD1Ev>
    80004728:	00048513          	mv	a0,s1
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	024080e7          	jalr	36(ra) # 80001750 <_ZdlPv>
    80004734:	01813083          	ld	ra,24(sp)
    80004738:	01013403          	ld	s0,16(sp)
    8000473c:	00813483          	ld	s1,8(sp)
    80004740:	02010113          	addi	sp,sp,32
    80004744:	00008067          	ret

0000000080004748 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004748:	ff010113          	addi	sp,sp,-16
    8000474c:	00113423          	sd	ra,8(sp)
    80004750:	00813023          	sd	s0,0(sp)
    80004754:	01010413          	addi	s0,sp,16
    80004758:	00007797          	auipc	a5,0x7
    8000475c:	ce878793          	addi	a5,a5,-792 # 8000b440 <_ZTV16ProducerKeyboard+0x10>
    80004760:	00f53023          	sd	a5,0(a0)
    80004764:	ffffd097          	auipc	ra,0xffffd
    80004768:	38c080e7          	jalr	908(ra) # 80001af0 <_ZN6ThreadD1Ev>
    8000476c:	00813083          	ld	ra,8(sp)
    80004770:	00013403          	ld	s0,0(sp)
    80004774:	01010113          	addi	sp,sp,16
    80004778:	00008067          	ret

000000008000477c <_ZN16ProducerKeyboardD0Ev>:
    8000477c:	fe010113          	addi	sp,sp,-32
    80004780:	00113c23          	sd	ra,24(sp)
    80004784:	00813823          	sd	s0,16(sp)
    80004788:	00913423          	sd	s1,8(sp)
    8000478c:	02010413          	addi	s0,sp,32
    80004790:	00050493          	mv	s1,a0
    80004794:	00007797          	auipc	a5,0x7
    80004798:	cac78793          	addi	a5,a5,-852 # 8000b440 <_ZTV16ProducerKeyboard+0x10>
    8000479c:	00f53023          	sd	a5,0(a0)
    800047a0:	ffffd097          	auipc	ra,0xffffd
    800047a4:	350080e7          	jalr	848(ra) # 80001af0 <_ZN6ThreadD1Ev>
    800047a8:	00048513          	mv	a0,s1
    800047ac:	ffffd097          	auipc	ra,0xffffd
    800047b0:	fa4080e7          	jalr	-92(ra) # 80001750 <_ZdlPv>
    800047b4:	01813083          	ld	ra,24(sp)
    800047b8:	01013403          	ld	s0,16(sp)
    800047bc:	00813483          	ld	s1,8(sp)
    800047c0:	02010113          	addi	sp,sp,32
    800047c4:	00008067          	ret

00000000800047c8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800047c8:	ff010113          	addi	sp,sp,-16
    800047cc:	00113423          	sd	ra,8(sp)
    800047d0:	00813023          	sd	s0,0(sp)
    800047d4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800047d8:	02853583          	ld	a1,40(a0)
    800047dc:	fffff097          	auipc	ra,0xfffff
    800047e0:	7e4080e7          	jalr	2020(ra) # 80003fc0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800047e4:	00813083          	ld	ra,8(sp)
    800047e8:	00013403          	ld	s0,0(sp)
    800047ec:	01010113          	addi	sp,sp,16
    800047f0:	00008067          	ret

00000000800047f4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800047f4:	ff010113          	addi	sp,sp,-16
    800047f8:	00113423          	sd	ra,8(sp)
    800047fc:	00813023          	sd	s0,0(sp)
    80004800:	01010413          	addi	s0,sp,16
        producer(td);
    80004804:	02853583          	ld	a1,40(a0)
    80004808:	00000097          	auipc	ra,0x0
    8000480c:	878080e7          	jalr	-1928(ra) # 80004080 <_ZN12ProducerSync8producerEPv>
    }
    80004810:	00813083          	ld	ra,8(sp)
    80004814:	00013403          	ld	s0,0(sp)
    80004818:	01010113          	addi	sp,sp,16
    8000481c:	00008067          	ret

0000000080004820 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004820:	ff010113          	addi	sp,sp,-16
    80004824:	00113423          	sd	ra,8(sp)
    80004828:	00813023          	sd	s0,0(sp)
    8000482c:	01010413          	addi	s0,sp,16
        consumer(td);
    80004830:	02853583          	ld	a1,40(a0)
    80004834:	00000097          	auipc	ra,0x0
    80004838:	8e0080e7          	jalr	-1824(ra) # 80004114 <_ZN12ConsumerSync8consumerEPv>
    }
    8000483c:	00813083          	ld	ra,8(sp)
    80004840:	00013403          	ld	s0,0(sp)
    80004844:	01010113          	addi	sp,sp,16
    80004848:	00008067          	ret

000000008000484c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000484c:	fe010113          	addi	sp,sp,-32
    80004850:	00113c23          	sd	ra,24(sp)
    80004854:	00813823          	sd	s0,16(sp)
    80004858:	00913423          	sd	s1,8(sp)
    8000485c:	02010413          	addi	s0,sp,32
    80004860:	00050493          	mv	s1,a0
    LOCK();
    80004864:	00100613          	li	a2,1
    80004868:	00000593          	li	a1,0
    8000486c:	00007517          	auipc	a0,0x7
    80004870:	d2c50513          	addi	a0,a0,-724 # 8000b598 <lockPrint>
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	8bc080e7          	jalr	-1860(ra) # 80001130 <copy_and_swap>
    8000487c:	00050863          	beqz	a0,8000488c <_Z11printStringPKc+0x40>
    80004880:	ffffd097          	auipc	ra,0xffffd
    80004884:	a00080e7          	jalr	-1536(ra) # 80001280 <_Z15thread_dispatchv>
    80004888:	fddff06f          	j	80004864 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000488c:	0004c503          	lbu	a0,0(s1)
    80004890:	00050a63          	beqz	a0,800048a4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	b7c080e7          	jalr	-1156(ra) # 80001410 <_Z4putcc>
        string++;
    8000489c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800048a0:	fedff06f          	j	8000488c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800048a4:	00000613          	li	a2,0
    800048a8:	00100593          	li	a1,1
    800048ac:	00007517          	auipc	a0,0x7
    800048b0:	cec50513          	addi	a0,a0,-788 # 8000b598 <lockPrint>
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	87c080e7          	jalr	-1924(ra) # 80001130 <copy_and_swap>
    800048bc:	fe0514e3          	bnez	a0,800048a4 <_Z11printStringPKc+0x58>
}
    800048c0:	01813083          	ld	ra,24(sp)
    800048c4:	01013403          	ld	s0,16(sp)
    800048c8:	00813483          	ld	s1,8(sp)
    800048cc:	02010113          	addi	sp,sp,32
    800048d0:	00008067          	ret

00000000800048d4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800048d4:	fd010113          	addi	sp,sp,-48
    800048d8:	02113423          	sd	ra,40(sp)
    800048dc:	02813023          	sd	s0,32(sp)
    800048e0:	00913c23          	sd	s1,24(sp)
    800048e4:	01213823          	sd	s2,16(sp)
    800048e8:	01313423          	sd	s3,8(sp)
    800048ec:	01413023          	sd	s4,0(sp)
    800048f0:	03010413          	addi	s0,sp,48
    800048f4:	00050993          	mv	s3,a0
    800048f8:	00058a13          	mv	s4,a1
    LOCK();
    800048fc:	00100613          	li	a2,1
    80004900:	00000593          	li	a1,0
    80004904:	00007517          	auipc	a0,0x7
    80004908:	c9450513          	addi	a0,a0,-876 # 8000b598 <lockPrint>
    8000490c:	ffffd097          	auipc	ra,0xffffd
    80004910:	824080e7          	jalr	-2012(ra) # 80001130 <copy_and_swap>
    80004914:	00050863          	beqz	a0,80004924 <_Z9getStringPci+0x50>
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	968080e7          	jalr	-1688(ra) # 80001280 <_Z15thread_dispatchv>
    80004920:	fddff06f          	j	800048fc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004924:	00000913          	li	s2,0
    80004928:	00090493          	mv	s1,s2
    8000492c:	0019091b          	addiw	s2,s2,1
    80004930:	03495a63          	bge	s2,s4,80004964 <_Z9getStringPci+0x90>
        cc = getc();
    80004934:	ffffd097          	auipc	ra,0xffffd
    80004938:	ab0080e7          	jalr	-1360(ra) # 800013e4 <_Z4getcv>
        if(cc < 1)
    8000493c:	02050463          	beqz	a0,80004964 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004940:	009984b3          	add	s1,s3,s1
    80004944:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004948:	00a00793          	li	a5,10
    8000494c:	00f50a63          	beq	a0,a5,80004960 <_Z9getStringPci+0x8c>
    80004950:	00d00793          	li	a5,13
    80004954:	fcf51ae3          	bne	a0,a5,80004928 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004958:	00090493          	mv	s1,s2
    8000495c:	0080006f          	j	80004964 <_Z9getStringPci+0x90>
    80004960:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004964:	009984b3          	add	s1,s3,s1
    80004968:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000496c:	00000613          	li	a2,0
    80004970:	00100593          	li	a1,1
    80004974:	00007517          	auipc	a0,0x7
    80004978:	c2450513          	addi	a0,a0,-988 # 8000b598 <lockPrint>
    8000497c:	ffffc097          	auipc	ra,0xffffc
    80004980:	7b4080e7          	jalr	1972(ra) # 80001130 <copy_and_swap>
    80004984:	fe0514e3          	bnez	a0,8000496c <_Z9getStringPci+0x98>
    return buf;
}
    80004988:	00098513          	mv	a0,s3
    8000498c:	02813083          	ld	ra,40(sp)
    80004990:	02013403          	ld	s0,32(sp)
    80004994:	01813483          	ld	s1,24(sp)
    80004998:	01013903          	ld	s2,16(sp)
    8000499c:	00813983          	ld	s3,8(sp)
    800049a0:	00013a03          	ld	s4,0(sp)
    800049a4:	03010113          	addi	sp,sp,48
    800049a8:	00008067          	ret

00000000800049ac <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800049ac:	ff010113          	addi	sp,sp,-16
    800049b0:	00813423          	sd	s0,8(sp)
    800049b4:	01010413          	addi	s0,sp,16
    800049b8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800049bc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800049c0:	0006c603          	lbu	a2,0(a3)
    800049c4:	fd06071b          	addiw	a4,a2,-48
    800049c8:	0ff77713          	andi	a4,a4,255
    800049cc:	00900793          	li	a5,9
    800049d0:	02e7e063          	bltu	a5,a4,800049f0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800049d4:	0025179b          	slliw	a5,a0,0x2
    800049d8:	00a787bb          	addw	a5,a5,a0
    800049dc:	0017979b          	slliw	a5,a5,0x1
    800049e0:	00168693          	addi	a3,a3,1
    800049e4:	00c787bb          	addw	a5,a5,a2
    800049e8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800049ec:	fd5ff06f          	j	800049c0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800049f0:	00813403          	ld	s0,8(sp)
    800049f4:	01010113          	addi	sp,sp,16
    800049f8:	00008067          	ret

00000000800049fc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800049fc:	fc010113          	addi	sp,sp,-64
    80004a00:	02113c23          	sd	ra,56(sp)
    80004a04:	02813823          	sd	s0,48(sp)
    80004a08:	02913423          	sd	s1,40(sp)
    80004a0c:	03213023          	sd	s2,32(sp)
    80004a10:	01313c23          	sd	s3,24(sp)
    80004a14:	04010413          	addi	s0,sp,64
    80004a18:	00050493          	mv	s1,a0
    80004a1c:	00058913          	mv	s2,a1
    80004a20:	00060993          	mv	s3,a2
    LOCK();
    80004a24:	00100613          	li	a2,1
    80004a28:	00000593          	li	a1,0
    80004a2c:	00007517          	auipc	a0,0x7
    80004a30:	b6c50513          	addi	a0,a0,-1172 # 8000b598 <lockPrint>
    80004a34:	ffffc097          	auipc	ra,0xffffc
    80004a38:	6fc080e7          	jalr	1788(ra) # 80001130 <copy_and_swap>
    80004a3c:	00050863          	beqz	a0,80004a4c <_Z8printIntiii+0x50>
    80004a40:	ffffd097          	auipc	ra,0xffffd
    80004a44:	840080e7          	jalr	-1984(ra) # 80001280 <_Z15thread_dispatchv>
    80004a48:	fddff06f          	j	80004a24 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004a4c:	00098463          	beqz	s3,80004a54 <_Z8printIntiii+0x58>
    80004a50:	0804c463          	bltz	s1,80004ad8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004a54:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004a58:	00000593          	li	a1,0
    }

    i = 0;
    80004a5c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004a60:	0009079b          	sext.w	a5,s2
    80004a64:	0325773b          	remuw	a4,a0,s2
    80004a68:	00048613          	mv	a2,s1
    80004a6c:	0014849b          	addiw	s1,s1,1
    80004a70:	02071693          	slli	a3,a4,0x20
    80004a74:	0206d693          	srli	a3,a3,0x20
    80004a78:	00007717          	auipc	a4,0x7
    80004a7c:	a3070713          	addi	a4,a4,-1488 # 8000b4a8 <digits>
    80004a80:	00d70733          	add	a4,a4,a3
    80004a84:	00074683          	lbu	a3,0(a4)
    80004a88:	fd040713          	addi	a4,s0,-48
    80004a8c:	00c70733          	add	a4,a4,a2
    80004a90:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004a94:	0005071b          	sext.w	a4,a0
    80004a98:	0325553b          	divuw	a0,a0,s2
    80004a9c:	fcf772e3          	bgeu	a4,a5,80004a60 <_Z8printIntiii+0x64>
    if(neg)
    80004aa0:	00058c63          	beqz	a1,80004ab8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004aa4:	fd040793          	addi	a5,s0,-48
    80004aa8:	009784b3          	add	s1,a5,s1
    80004aac:	02d00793          	li	a5,45
    80004ab0:	fef48823          	sb	a5,-16(s1)
    80004ab4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004ab8:	fff4849b          	addiw	s1,s1,-1
    80004abc:	0204c463          	bltz	s1,80004ae4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004ac0:	fd040793          	addi	a5,s0,-48
    80004ac4:	009787b3          	add	a5,a5,s1
    80004ac8:	ff07c503          	lbu	a0,-16(a5)
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	944080e7          	jalr	-1724(ra) # 80001410 <_Z4putcc>
    80004ad4:	fe5ff06f          	j	80004ab8 <_Z8printIntiii+0xbc>
        x = -xx;
    80004ad8:	4090053b          	negw	a0,s1
        neg = 1;
    80004adc:	00100593          	li	a1,1
        x = -xx;
    80004ae0:	f7dff06f          	j	80004a5c <_Z8printIntiii+0x60>

    UNLOCK();
    80004ae4:	00000613          	li	a2,0
    80004ae8:	00100593          	li	a1,1
    80004aec:	00007517          	auipc	a0,0x7
    80004af0:	aac50513          	addi	a0,a0,-1364 # 8000b598 <lockPrint>
    80004af4:	ffffc097          	auipc	ra,0xffffc
    80004af8:	63c080e7          	jalr	1596(ra) # 80001130 <copy_and_swap>
    80004afc:	fe0514e3          	bnez	a0,80004ae4 <_Z8printIntiii+0xe8>
    80004b00:	03813083          	ld	ra,56(sp)
    80004b04:	03013403          	ld	s0,48(sp)
    80004b08:	02813483          	ld	s1,40(sp)
    80004b0c:	02013903          	ld	s2,32(sp)
    80004b10:	01813983          	ld	s3,24(sp)
    80004b14:	04010113          	addi	sp,sp,64
    80004b18:	00008067          	ret

0000000080004b1c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../lib/console.h"
#include "../lib/mem.h"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004b1c:	fd010113          	addi	sp,sp,-48
    80004b20:	02113423          	sd	ra,40(sp)
    80004b24:	02813023          	sd	s0,32(sp)
    80004b28:	00913c23          	sd	s1,24(sp)
    80004b2c:	01213823          	sd	s2,16(sp)
    80004b30:	01313423          	sd	s3,8(sp)
    80004b34:	03010413          	addi	s0,sp,48
    80004b38:	00050493          	mv	s1,a0
    80004b3c:	00058913          	mv	s2,a1
    80004b40:	0015879b          	addiw	a5,a1,1
    80004b44:	0007851b          	sext.w	a0,a5
    80004b48:	00f4a023          	sw	a5,0(s1)
    80004b4c:	0004a823          	sw	zero,16(s1)
    80004b50:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004b54:	00251513          	slli	a0,a0,0x2
    80004b58:	ffffc097          	auipc	ra,0xffffc
    80004b5c:	5f8080e7          	jalr	1528(ra) # 80001150 <_Z9mem_allocm>
    80004b60:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004b64:	01000513          	li	a0,16
    80004b68:	ffffd097          	auipc	ra,0xffffd
    80004b6c:	b68080e7          	jalr	-1176(ra) # 800016d0 <_Znwm>
    80004b70:	00050993          	mv	s3,a0
    80004b74:	00000593          	li	a1,0
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	15c080e7          	jalr	348(ra) # 80001cd4 <_ZN9SemaphoreC1Ej>
    80004b80:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004b84:	01000513          	li	a0,16
    80004b88:	ffffd097          	auipc	ra,0xffffd
    80004b8c:	b48080e7          	jalr	-1208(ra) # 800016d0 <_Znwm>
    80004b90:	00050993          	mv	s3,a0
    80004b94:	00090593          	mv	a1,s2
    80004b98:	ffffd097          	auipc	ra,0xffffd
    80004b9c:	13c080e7          	jalr	316(ra) # 80001cd4 <_ZN9SemaphoreC1Ej>
    80004ba0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004ba4:	01000513          	li	a0,16
    80004ba8:	ffffd097          	auipc	ra,0xffffd
    80004bac:	b28080e7          	jalr	-1240(ra) # 800016d0 <_Znwm>
    80004bb0:	00050913          	mv	s2,a0
    80004bb4:	00100593          	li	a1,1
    80004bb8:	ffffd097          	auipc	ra,0xffffd
    80004bbc:	11c080e7          	jalr	284(ra) # 80001cd4 <_ZN9SemaphoreC1Ej>
    80004bc0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004bc4:	01000513          	li	a0,16
    80004bc8:	ffffd097          	auipc	ra,0xffffd
    80004bcc:	b08080e7          	jalr	-1272(ra) # 800016d0 <_Znwm>
    80004bd0:	00050913          	mv	s2,a0
    80004bd4:	00100593          	li	a1,1
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	0fc080e7          	jalr	252(ra) # 80001cd4 <_ZN9SemaphoreC1Ej>
    80004be0:	0324b823          	sd	s2,48(s1)
}
    80004be4:	02813083          	ld	ra,40(sp)
    80004be8:	02013403          	ld	s0,32(sp)
    80004bec:	01813483          	ld	s1,24(sp)
    80004bf0:	01013903          	ld	s2,16(sp)
    80004bf4:	00813983          	ld	s3,8(sp)
    80004bf8:	03010113          	addi	sp,sp,48
    80004bfc:	00008067          	ret
    80004c00:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004c04:	00098513          	mv	a0,s3
    80004c08:	ffffd097          	auipc	ra,0xffffd
    80004c0c:	b48080e7          	jalr	-1208(ra) # 80001750 <_ZdlPv>
    80004c10:	00048513          	mv	a0,s1
    80004c14:	00008097          	auipc	ra,0x8
    80004c18:	a74080e7          	jalr	-1420(ra) # 8000c688 <_Unwind_Resume>
    80004c1c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004c20:	00098513          	mv	a0,s3
    80004c24:	ffffd097          	auipc	ra,0xffffd
    80004c28:	b2c080e7          	jalr	-1236(ra) # 80001750 <_ZdlPv>
    80004c2c:	00048513          	mv	a0,s1
    80004c30:	00008097          	auipc	ra,0x8
    80004c34:	a58080e7          	jalr	-1448(ra) # 8000c688 <_Unwind_Resume>
    80004c38:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004c3c:	00090513          	mv	a0,s2
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	b10080e7          	jalr	-1264(ra) # 80001750 <_ZdlPv>
    80004c48:	00048513          	mv	a0,s1
    80004c4c:	00008097          	auipc	ra,0x8
    80004c50:	a3c080e7          	jalr	-1476(ra) # 8000c688 <_Unwind_Resume>
    80004c54:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004c58:	00090513          	mv	a0,s2
    80004c5c:	ffffd097          	auipc	ra,0xffffd
    80004c60:	af4080e7          	jalr	-1292(ra) # 80001750 <_ZdlPv>
    80004c64:	00048513          	mv	a0,s1
    80004c68:	00008097          	auipc	ra,0x8
    80004c6c:	a20080e7          	jalr	-1504(ra) # 8000c688 <_Unwind_Resume>

0000000080004c70 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004c70:	fe010113          	addi	sp,sp,-32
    80004c74:	00113c23          	sd	ra,24(sp)
    80004c78:	00813823          	sd	s0,16(sp)
    80004c7c:	00913423          	sd	s1,8(sp)
    80004c80:	01213023          	sd	s2,0(sp)
    80004c84:	02010413          	addi	s0,sp,32
    80004c88:	00050493          	mv	s1,a0
    80004c8c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004c90:	01853503          	ld	a0,24(a0)
    80004c94:	ffffd097          	auipc	ra,0xffffd
    80004c98:	078080e7          	jalr	120(ra) # 80001d0c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004c9c:	0304b503          	ld	a0,48(s1)
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	06c080e7          	jalr	108(ra) # 80001d0c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004ca8:	0084b783          	ld	a5,8(s1)
    80004cac:	0144a703          	lw	a4,20(s1)
    80004cb0:	00271713          	slli	a4,a4,0x2
    80004cb4:	00e787b3          	add	a5,a5,a4
    80004cb8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004cbc:	0144a783          	lw	a5,20(s1)
    80004cc0:	0017879b          	addiw	a5,a5,1
    80004cc4:	0004a703          	lw	a4,0(s1)
    80004cc8:	02e7e7bb          	remw	a5,a5,a4
    80004ccc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004cd0:	0304b503          	ld	a0,48(s1)
    80004cd4:	ffffd097          	auipc	ra,0xffffd
    80004cd8:	064080e7          	jalr	100(ra) # 80001d38 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004cdc:	0204b503          	ld	a0,32(s1)
    80004ce0:	ffffd097          	auipc	ra,0xffffd
    80004ce4:	058080e7          	jalr	88(ra) # 80001d38 <_ZN9Semaphore6signalEv>

}
    80004ce8:	01813083          	ld	ra,24(sp)
    80004cec:	01013403          	ld	s0,16(sp)
    80004cf0:	00813483          	ld	s1,8(sp)
    80004cf4:	00013903          	ld	s2,0(sp)
    80004cf8:	02010113          	addi	sp,sp,32
    80004cfc:	00008067          	ret

0000000080004d00 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004d00:	fe010113          	addi	sp,sp,-32
    80004d04:	00113c23          	sd	ra,24(sp)
    80004d08:	00813823          	sd	s0,16(sp)
    80004d0c:	00913423          	sd	s1,8(sp)
    80004d10:	01213023          	sd	s2,0(sp)
    80004d14:	02010413          	addi	s0,sp,32
    80004d18:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004d1c:	02053503          	ld	a0,32(a0)
    80004d20:	ffffd097          	auipc	ra,0xffffd
    80004d24:	fec080e7          	jalr	-20(ra) # 80001d0c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004d28:	0284b503          	ld	a0,40(s1)
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	fe0080e7          	jalr	-32(ra) # 80001d0c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004d34:	0084b703          	ld	a4,8(s1)
    80004d38:	0104a783          	lw	a5,16(s1)
    80004d3c:	00279693          	slli	a3,a5,0x2
    80004d40:	00d70733          	add	a4,a4,a3
    80004d44:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004d48:	0017879b          	addiw	a5,a5,1
    80004d4c:	0004a703          	lw	a4,0(s1)
    80004d50:	02e7e7bb          	remw	a5,a5,a4
    80004d54:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004d58:	0284b503          	ld	a0,40(s1)
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	fdc080e7          	jalr	-36(ra) # 80001d38 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004d64:	0184b503          	ld	a0,24(s1)
    80004d68:	ffffd097          	auipc	ra,0xffffd
    80004d6c:	fd0080e7          	jalr	-48(ra) # 80001d38 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004d70:	00090513          	mv	a0,s2
    80004d74:	01813083          	ld	ra,24(sp)
    80004d78:	01013403          	ld	s0,16(sp)
    80004d7c:	00813483          	ld	s1,8(sp)
    80004d80:	00013903          	ld	s2,0(sp)
    80004d84:	02010113          	addi	sp,sp,32
    80004d88:	00008067          	ret

0000000080004d8c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004d8c:	fe010113          	addi	sp,sp,-32
    80004d90:	00113c23          	sd	ra,24(sp)
    80004d94:	00813823          	sd	s0,16(sp)
    80004d98:	00913423          	sd	s1,8(sp)
    80004d9c:	01213023          	sd	s2,0(sp)
    80004da0:	02010413          	addi	s0,sp,32
    80004da4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004da8:	02853503          	ld	a0,40(a0)
    80004dac:	ffffd097          	auipc	ra,0xffffd
    80004db0:	f60080e7          	jalr	-160(ra) # 80001d0c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004db4:	0304b503          	ld	a0,48(s1)
    80004db8:	ffffd097          	auipc	ra,0xffffd
    80004dbc:	f54080e7          	jalr	-172(ra) # 80001d0c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004dc0:	0144a783          	lw	a5,20(s1)
    80004dc4:	0104a903          	lw	s2,16(s1)
    80004dc8:	0327ce63          	blt	a5,s2,80004e04 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004dcc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004dd0:	0304b503          	ld	a0,48(s1)
    80004dd4:	ffffd097          	auipc	ra,0xffffd
    80004dd8:	f64080e7          	jalr	-156(ra) # 80001d38 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004ddc:	0284b503          	ld	a0,40(s1)
    80004de0:	ffffd097          	auipc	ra,0xffffd
    80004de4:	f58080e7          	jalr	-168(ra) # 80001d38 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004de8:	00090513          	mv	a0,s2
    80004dec:	01813083          	ld	ra,24(sp)
    80004df0:	01013403          	ld	s0,16(sp)
    80004df4:	00813483          	ld	s1,8(sp)
    80004df8:	00013903          	ld	s2,0(sp)
    80004dfc:	02010113          	addi	sp,sp,32
    80004e00:	00008067          	ret
        ret = cap - head + tail;
    80004e04:	0004a703          	lw	a4,0(s1)
    80004e08:	4127093b          	subw	s2,a4,s2
    80004e0c:	00f9093b          	addw	s2,s2,a5
    80004e10:	fc1ff06f          	j	80004dd0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004e14 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004e14:	fe010113          	addi	sp,sp,-32
    80004e18:	00113c23          	sd	ra,24(sp)
    80004e1c:	00813823          	sd	s0,16(sp)
    80004e20:	00913423          	sd	s1,8(sp)
    80004e24:	02010413          	addi	s0,sp,32
    80004e28:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004e2c:	00a00513          	li	a0,10
    80004e30:	ffffd097          	auipc	ra,0xffffd
    80004e34:	f5c080e7          	jalr	-164(ra) # 80001d8c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004e38:	00005517          	auipc	a0,0x5
    80004e3c:	88050513          	addi	a0,a0,-1920 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80004e40:	00000097          	auipc	ra,0x0
    80004e44:	a0c080e7          	jalr	-1524(ra) # 8000484c <_Z11printStringPKc>
    while (getCnt()) {
    80004e48:	00048513          	mv	a0,s1
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	f40080e7          	jalr	-192(ra) # 80004d8c <_ZN9BufferCPP6getCntEv>
    80004e54:	02050c63          	beqz	a0,80004e8c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004e58:	0084b783          	ld	a5,8(s1)
    80004e5c:	0104a703          	lw	a4,16(s1)
    80004e60:	00271713          	slli	a4,a4,0x2
    80004e64:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004e68:	0007c503          	lbu	a0,0(a5)
    80004e6c:	ffffd097          	auipc	ra,0xffffd
    80004e70:	f20080e7          	jalr	-224(ra) # 80001d8c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004e74:	0104a783          	lw	a5,16(s1)
    80004e78:	0017879b          	addiw	a5,a5,1
    80004e7c:	0004a703          	lw	a4,0(s1)
    80004e80:	02e7e7bb          	remw	a5,a5,a4
    80004e84:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004e88:	fc1ff06f          	j	80004e48 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004e8c:	02100513          	li	a0,33
    80004e90:	ffffd097          	auipc	ra,0xffffd
    80004e94:	efc080e7          	jalr	-260(ra) # 80001d8c <_ZN7Console4putcEc>
    Console::putc('\n');
    80004e98:	00a00513          	li	a0,10
    80004e9c:	ffffd097          	auipc	ra,0xffffd
    80004ea0:	ef0080e7          	jalr	-272(ra) # 80001d8c <_ZN7Console4putcEc>
    mem_free(buffer);
    80004ea4:	0084b503          	ld	a0,8(s1)
    80004ea8:	ffffc097          	auipc	ra,0xffffc
    80004eac:	2ec080e7          	jalr	748(ra) # 80001194 <_Z8mem_freePv>
    delete itemAvailable;
    80004eb0:	0204b503          	ld	a0,32(s1)
    80004eb4:	00050863          	beqz	a0,80004ec4 <_ZN9BufferCPPD1Ev+0xb0>
    80004eb8:	00053783          	ld	a5,0(a0)
    80004ebc:	0087b783          	ld	a5,8(a5)
    80004ec0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004ec4:	0184b503          	ld	a0,24(s1)
    80004ec8:	00050863          	beqz	a0,80004ed8 <_ZN9BufferCPPD1Ev+0xc4>
    80004ecc:	00053783          	ld	a5,0(a0)
    80004ed0:	0087b783          	ld	a5,8(a5)
    80004ed4:	000780e7          	jalr	a5
    delete mutexTail;
    80004ed8:	0304b503          	ld	a0,48(s1)
    80004edc:	00050863          	beqz	a0,80004eec <_ZN9BufferCPPD1Ev+0xd8>
    80004ee0:	00053783          	ld	a5,0(a0)
    80004ee4:	0087b783          	ld	a5,8(a5)
    80004ee8:	000780e7          	jalr	a5
    delete mutexHead;
    80004eec:	0284b503          	ld	a0,40(s1)
    80004ef0:	00050863          	beqz	a0,80004f00 <_ZN9BufferCPPD1Ev+0xec>
    80004ef4:	00053783          	ld	a5,0(a0)
    80004ef8:	0087b783          	ld	a5,8(a5)
    80004efc:	000780e7          	jalr	a5
}
    80004f00:	01813083          	ld	ra,24(sp)
    80004f04:	01013403          	ld	s0,16(sp)
    80004f08:	00813483          	ld	s1,8(sp)
    80004f0c:	02010113          	addi	sp,sp,32
    80004f10:	00008067          	ret

0000000080004f14 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80004f14:	fe010113          	addi	sp,sp,-32
    80004f18:	00113c23          	sd	ra,24(sp)
    80004f1c:	00813823          	sd	s0,16(sp)
    80004f20:	00913423          	sd	s1,8(sp)
    80004f24:	01213023          	sd	s2,0(sp)
    80004f28:	02010413          	addi	s0,sp,32
    80004f2c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004f30:	00000913          	li	s2,0
    80004f34:	00c0006f          	j	80004f40 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != '$') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004f38:	ffffc097          	auipc	ra,0xffffc
    80004f3c:	348080e7          	jalr	840(ra) # 80001280 <_Z15thread_dispatchv>
    while ((key = getc()) != '$') {
    80004f40:	ffffc097          	auipc	ra,0xffffc
    80004f44:	4a4080e7          	jalr	1188(ra) # 800013e4 <_Z4getcv>
    80004f48:	0005059b          	sext.w	a1,a0
    80004f4c:	02400793          	li	a5,36
    80004f50:	02f58a63          	beq	a1,a5,80004f84 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004f54:	0084b503          	ld	a0,8(s1)
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	0a8080e7          	jalr	168(ra) # 80006000 <_ZN6Buffer3putEi>
        i++;
    80004f60:	0019071b          	addiw	a4,s2,1
    80004f64:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f68:	0004a683          	lw	a3,0(s1)
    80004f6c:	0026979b          	slliw	a5,a3,0x2
    80004f70:	00d787bb          	addw	a5,a5,a3
    80004f74:	0017979b          	slliw	a5,a5,0x1
    80004f78:	02f767bb          	remw	a5,a4,a5
    80004f7c:	fc0792e3          	bnez	a5,80004f40 <_ZL16producerKeyboardPv+0x2c>
    80004f80:	fb9ff06f          	j	80004f38 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80004f84:	00100793          	li	a5,1
    80004f88:	00006717          	auipc	a4,0x6
    80004f8c:	60f72c23          	sw	a5,1560(a4) # 8000b5a0 <_ZL9threadEnd>
    data->buffer->put('!');
    80004f90:	02100593          	li	a1,33
    80004f94:	0084b503          	ld	a0,8(s1)
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	068080e7          	jalr	104(ra) # 80006000 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80004fa0:	0104b503          	ld	a0,16(s1)
    80004fa4:	ffffc097          	auipc	ra,0xffffc
    80004fa8:	3f4080e7          	jalr	1012(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>
}
    80004fac:	01813083          	ld	ra,24(sp)
    80004fb0:	01013403          	ld	s0,16(sp)
    80004fb4:	00813483          	ld	s1,8(sp)
    80004fb8:	00013903          	ld	s2,0(sp)
    80004fbc:	02010113          	addi	sp,sp,32
    80004fc0:	00008067          	ret

0000000080004fc4 <_ZL8producerPv>:

static void producer(void *arg) {
    80004fc4:	fe010113          	addi	sp,sp,-32
    80004fc8:	00113c23          	sd	ra,24(sp)
    80004fcc:	00813823          	sd	s0,16(sp)
    80004fd0:	00913423          	sd	s1,8(sp)
    80004fd4:	01213023          	sd	s2,0(sp)
    80004fd8:	02010413          	addi	s0,sp,32
    80004fdc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004fe0:	00000913          	li	s2,0
    80004fe4:	00c0006f          	j	80004ff0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004fe8:	ffffc097          	auipc	ra,0xffffc
    80004fec:	298080e7          	jalr	664(ra) # 80001280 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80004ff0:	00006797          	auipc	a5,0x6
    80004ff4:	5b07a783          	lw	a5,1456(a5) # 8000b5a0 <_ZL9threadEnd>
    80004ff8:	02079e63          	bnez	a5,80005034 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004ffc:	0004a583          	lw	a1,0(s1)
    80005000:	0305859b          	addiw	a1,a1,48
    80005004:	0084b503          	ld	a0,8(s1)
    80005008:	00001097          	auipc	ra,0x1
    8000500c:	ff8080e7          	jalr	-8(ra) # 80006000 <_ZN6Buffer3putEi>
        i++;
    80005010:	0019071b          	addiw	a4,s2,1
    80005014:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005018:	0004a683          	lw	a3,0(s1)
    8000501c:	0026979b          	slliw	a5,a3,0x2
    80005020:	00d787bb          	addw	a5,a5,a3
    80005024:	0017979b          	slliw	a5,a5,0x1
    80005028:	02f767bb          	remw	a5,a4,a5
    8000502c:	fc0792e3          	bnez	a5,80004ff0 <_ZL8producerPv+0x2c>
    80005030:	fb9ff06f          	j	80004fe8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80005034:	0104b503          	ld	a0,16(s1)
    80005038:	ffffc097          	auipc	ra,0xffffc
    8000503c:	360080e7          	jalr	864(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>
}
    80005040:	01813083          	ld	ra,24(sp)
    80005044:	01013403          	ld	s0,16(sp)
    80005048:	00813483          	ld	s1,8(sp)
    8000504c:	00013903          	ld	s2,0(sp)
    80005050:	02010113          	addi	sp,sp,32
    80005054:	00008067          	ret

0000000080005058 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80005058:	fd010113          	addi	sp,sp,-48
    8000505c:	02113423          	sd	ra,40(sp)
    80005060:	02813023          	sd	s0,32(sp)
    80005064:	00913c23          	sd	s1,24(sp)
    80005068:	01213823          	sd	s2,16(sp)
    8000506c:	01313423          	sd	s3,8(sp)
    80005070:	03010413          	addi	s0,sp,48
    80005074:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005078:	00000993          	li	s3,0
    8000507c:	01c0006f          	j	80005098 <_ZL8consumerPv+0x40>
        i++;

       putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80005080:	ffffc097          	auipc	ra,0xffffc
    80005084:	200080e7          	jalr	512(ra) # 80001280 <_Z15thread_dispatchv>
    80005088:	0500006f          	j	800050d8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000508c:	00a00513          	li	a0,10
    80005090:	ffffc097          	auipc	ra,0xffffc
    80005094:	380080e7          	jalr	896(ra) # 80001410 <_Z4putcc>
    while (!threadEnd) {
    80005098:	00006797          	auipc	a5,0x6
    8000509c:	5087a783          	lw	a5,1288(a5) # 8000b5a0 <_ZL9threadEnd>
    800050a0:	06079063          	bnez	a5,80005100 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800050a4:	00893503          	ld	a0,8(s2)
    800050a8:	00001097          	auipc	ra,0x1
    800050ac:	fe8080e7          	jalr	-24(ra) # 80006090 <_ZN6Buffer3getEv>
        i++;
    800050b0:	0019849b          	addiw	s1,s3,1
    800050b4:	0004899b          	sext.w	s3,s1
       putc(key);
    800050b8:	0ff57513          	andi	a0,a0,255
    800050bc:	ffffc097          	auipc	ra,0xffffc
    800050c0:	354080e7          	jalr	852(ra) # 80001410 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800050c4:	00092703          	lw	a4,0(s2)
    800050c8:	0027179b          	slliw	a5,a4,0x2
    800050cc:	00e787bb          	addw	a5,a5,a4
    800050d0:	02f4e7bb          	remw	a5,s1,a5
    800050d4:	fa0786e3          	beqz	a5,80005080 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800050d8:	05000793          	li	a5,80
    800050dc:	02f4e4bb          	remw	s1,s1,a5
    800050e0:	fa049ce3          	bnez	s1,80005098 <_ZL8consumerPv+0x40>
    800050e4:	fa9ff06f          	j	8000508c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800050e8:	00893503          	ld	a0,8(s2)
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	fa4080e7          	jalr	-92(ra) # 80006090 <_ZN6Buffer3getEv>
        putc(key);
    800050f4:	0ff57513          	andi	a0,a0,255
    800050f8:	ffffc097          	auipc	ra,0xffffc
    800050fc:	318080e7          	jalr	792(ra) # 80001410 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80005100:	00893503          	ld	a0,8(s2)
    80005104:	00001097          	auipc	ra,0x1
    80005108:	018080e7          	jalr	24(ra) # 8000611c <_ZN6Buffer6getCntEv>
    8000510c:	fca04ee3          	bgtz	a0,800050e8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80005110:	01093503          	ld	a0,16(s2)
    80005114:	ffffc097          	auipc	ra,0xffffc
    80005118:	284080e7          	jalr	644(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>
}
    8000511c:	02813083          	ld	ra,40(sp)
    80005120:	02013403          	ld	s0,32(sp)
    80005124:	01813483          	ld	s1,24(sp)
    80005128:	01013903          	ld	s2,16(sp)
    8000512c:	00813983          	ld	s3,8(sp)
    80005130:	03010113          	addi	sp,sp,48
    80005134:	00008067          	ret

0000000080005138 <_Z7semTestv>:

void semTest() {
    80005138:	f2010113          	addi	sp,sp,-224
    8000513c:	0c113c23          	sd	ra,216(sp)
    80005140:	0c813823          	sd	s0,208(sp)
    80005144:	0c913423          	sd	s1,200(sp)
    80005148:	0d213023          	sd	s2,192(sp)
    8000514c:	0e010413          	addi	s0,sp,224
//    n = stringToInt(input);

    threadNum=5;
    n=10;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80005150:	00004517          	auipc	a0,0x4
    80005154:	3c050513          	addi	a0,a0,960 # 80009510 <CONSOLE_STATUS+0x500>
    80005158:	fffff097          	auipc	ra,0xfffff
    8000515c:	6f4080e7          	jalr	1780(ra) # 8000484c <_Z11printStringPKc>
    80005160:	00000613          	li	a2,0
    80005164:	00a00593          	li	a1,10
    80005168:	00500513          	li	a0,5
    8000516c:	00000097          	auipc	ra,0x0
    80005170:	890080e7          	jalr	-1904(ra) # 800049fc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005174:	00004517          	auipc	a0,0x4
    80005178:	3b450513          	addi	a0,a0,948 # 80009528 <CONSOLE_STATUS+0x518>
    8000517c:	fffff097          	auipc	ra,0xfffff
    80005180:	6d0080e7          	jalr	1744(ra) # 8000484c <_Z11printStringPKc>
    80005184:	00000613          	li	a2,0
    80005188:	00a00593          	li	a1,10
    8000518c:	00a00513          	li	a0,10
    80005190:	00000097          	auipc	ra,0x0
    80005194:	86c080e7          	jalr	-1940(ra) # 800049fc <_Z8printIntiii>
    printString(".\n");
    80005198:	00004517          	auipc	a0,0x4
    8000519c:	3a850513          	addi	a0,a0,936 # 80009540 <CONSOLE_STATUS+0x530>
    800051a0:	fffff097          	auipc	ra,0xfffff
    800051a4:	6ac080e7          	jalr	1708(ra) # 8000484c <_Z11printStringPKc>
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    Buffer *buffer = new Buffer(n);
    800051a8:	03800513          	li	a0,56
    800051ac:	ffffc097          	auipc	ra,0xffffc
    800051b0:	524080e7          	jalr	1316(ra) # 800016d0 <_Znwm>
    800051b4:	00050913          	mv	s2,a0
    800051b8:	00a00593          	li	a1,10
    800051bc:	00001097          	auipc	ra,0x1
    800051c0:	d30080e7          	jalr	-720(ra) # 80005eec <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    800051c4:	00000593          	li	a1,0
    800051c8:	00006517          	auipc	a0,0x6
    800051cc:	3e050513          	addi	a0,a0,992 # 8000b5a8 <_ZL10waitForAll>
    800051d0:	ffffc097          	auipc	ra,0xffffc
    800051d4:	0dc080e7          	jalr	220(ra) # 800012ac <_Z8sem_openPP13SemaforKernelj>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    800051d8:	00500793          	li	a5,5
    800051dc:	fcf42023          	sw	a5,-64(s0)
    data[threadNum].buffer = buffer;
    800051e0:	fd243423          	sd	s2,-56(s0)
    data[threadNum].wait = waitForAll;
    800051e4:	00006797          	auipc	a5,0x6
    800051e8:	3c47b783          	ld	a5,964(a5) # 8000b5a8 <_ZL10waitForAll>
    800051ec:	fcf43823          	sd	a5,-48(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    800051f0:	fc040613          	addi	a2,s0,-64
    800051f4:	00000597          	auipc	a1,0x0
    800051f8:	e6458593          	addi	a1,a1,-412 # 80005058 <_ZL8consumerPv>
    800051fc:	fd840513          	addi	a0,s0,-40
    80005200:	ffffc097          	auipc	ra,0xffffc
    80005204:	fd4080e7          	jalr	-44(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>

    for (int i = 0; i < threadNum; i++) {
    80005208:	00000493          	li	s1,0
    8000520c:	00400793          	li	a5,4
    80005210:	0697cc63          	blt	a5,s1,80005288 <_Z7semTestv+0x150>
        data[i].id = i;
    80005214:	00149793          	slli	a5,s1,0x1
    80005218:	009787b3          	add	a5,a5,s1
    8000521c:	00379793          	slli	a5,a5,0x3
    80005220:	fe040713          	addi	a4,s0,-32
    80005224:	00f707b3          	add	a5,a4,a5
    80005228:	f697a423          	sw	s1,-152(a5)
        data[i].buffer = buffer;
    8000522c:	f727b823          	sd	s2,-144(a5)
        data[i].wait = waitForAll;
    80005230:	00006717          	auipc	a4,0x6
    80005234:	37873703          	ld	a4,888(a4) # 8000b5a8 <_ZL10waitForAll>
    80005238:	f6e7bc23          	sd	a4,-136(a5)

        thread_create(threads + i,
    8000523c:	00048613          	mv	a2,s1
    80005240:	00349513          	slli	a0,s1,0x3
    80005244:	f2040713          	addi	a4,s0,-224
    80005248:	00a70533          	add	a0,a4,a0
    8000524c:	02905863          	blez	s1,8000527c <_Z7semTestv+0x144>
    80005250:	00000597          	auipc	a1,0x0
    80005254:	d7458593          	addi	a1,a1,-652 # 80004fc4 <_ZL8producerPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80005258:	00161793          	slli	a5,a2,0x1
    8000525c:	00c787b3          	add	a5,a5,a2
    80005260:	00379793          	slli	a5,a5,0x3
        thread_create(threads + i,
    80005264:	f4840613          	addi	a2,s0,-184
    80005268:	00f60633          	add	a2,a2,a5
    8000526c:	ffffc097          	auipc	ra,0xffffc
    80005270:	f68080e7          	jalr	-152(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005274:	0014849b          	addiw	s1,s1,1
    80005278:	f95ff06f          	j	8000520c <_Z7semTestv+0xd4>
        thread_create(threads + i,
    8000527c:	00000597          	auipc	a1,0x0
    80005280:	c9858593          	addi	a1,a1,-872 # 80004f14 <_ZL16producerKeyboardPv>
    80005284:	fd5ff06f          	j	80005258 <_Z7semTestv+0x120>
    }

    thread_dispatch();
    80005288:	ffffc097          	auipc	ra,0xffffc
    8000528c:	ff8080e7          	jalr	-8(ra) # 80001280 <_Z15thread_dispatchv>

    for (int i = 0; i <= threadNum; i++) {
    80005290:	00000493          	li	s1,0
    80005294:	00500793          	li	a5,5
    80005298:	0097ce63          	blt	a5,s1,800052b4 <_Z7semTestv+0x17c>
        sem_wait(waitForAll);
    8000529c:	00006517          	auipc	a0,0x6
    800052a0:	30c53503          	ld	a0,780(a0) # 8000b5a8 <_ZL10waitForAll>
    800052a4:	ffffc097          	auipc	ra,0xffffc
    800052a8:	0a8080e7          	jalr	168(ra) # 8000134c <_Z8sem_waitP13SemaforKernel>
    for (int i = 0; i <= threadNum; i++) {
    800052ac:	0014849b          	addiw	s1,s1,1
    800052b0:	fe5ff06f          	j	80005294 <_Z7semTestv+0x15c>
    }

    sem_close(waitForAll);
    800052b4:	00006517          	auipc	a0,0x6
    800052b8:	2f453503          	ld	a0,756(a0) # 8000b5a8 <_ZL10waitForAll>
    800052bc:	ffffc097          	auipc	ra,0xffffc
    800052c0:	044080e7          	jalr	68(ra) # 80001300 <_Z9sem_closeP13SemaforKernel>

    delete buffer;
    800052c4:	00090e63          	beqz	s2,800052e0 <_Z7semTestv+0x1a8>
    800052c8:	00090513          	mv	a0,s2
    800052cc:	00001097          	auipc	ra,0x1
    800052d0:	ed8080e7          	jalr	-296(ra) # 800061a4 <_ZN6BufferD1Ev>
    800052d4:	00090513          	mv	a0,s2
    800052d8:	ffffc097          	auipc	ra,0xffffc
    800052dc:	478080e7          	jalr	1144(ra) # 80001750 <_ZdlPv>

}
    800052e0:	0d813083          	ld	ra,216(sp)
    800052e4:	0d013403          	ld	s0,208(sp)
    800052e8:	0c813483          	ld	s1,200(sp)
    800052ec:	0c013903          	ld	s2,192(sp)
    800052f0:	0e010113          	addi	sp,sp,224
    800052f4:	00008067          	ret
    800052f8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800052fc:	00090513          	mv	a0,s2
    80005300:	ffffc097          	auipc	ra,0xffffc
    80005304:	450080e7          	jalr	1104(ra) # 80001750 <_ZdlPv>
    80005308:	00048513          	mv	a0,s1
    8000530c:	00007097          	auipc	ra,0x7
    80005310:	37c080e7          	jalr	892(ra) # 8000c688 <_Unwind_Resume>

0000000080005314 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005314:	fe010113          	addi	sp,sp,-32
    80005318:	00113c23          	sd	ra,24(sp)
    8000531c:	00813823          	sd	s0,16(sp)
    80005320:	00913423          	sd	s1,8(sp)
    80005324:	01213023          	sd	s2,0(sp)
    80005328:	02010413          	addi	s0,sp,32
    8000532c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005330:	00100793          	li	a5,1
    80005334:	02a7f863          	bgeu	a5,a0,80005364 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005338:	00a00793          	li	a5,10
    8000533c:	02f577b3          	remu	a5,a0,a5
    80005340:	02078e63          	beqz	a5,8000537c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005344:	fff48513          	addi	a0,s1,-1
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	fcc080e7          	jalr	-52(ra) # 80005314 <_ZL9fibonaccim>
    80005350:	00050913          	mv	s2,a0
    80005354:	ffe48513          	addi	a0,s1,-2
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	fbc080e7          	jalr	-68(ra) # 80005314 <_ZL9fibonaccim>
    80005360:	00a90533          	add	a0,s2,a0
}
    80005364:	01813083          	ld	ra,24(sp)
    80005368:	01013403          	ld	s0,16(sp)
    8000536c:	00813483          	ld	s1,8(sp)
    80005370:	00013903          	ld	s2,0(sp)
    80005374:	02010113          	addi	sp,sp,32
    80005378:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000537c:	ffffc097          	auipc	ra,0xffffc
    80005380:	f04080e7          	jalr	-252(ra) # 80001280 <_Z15thread_dispatchv>
    80005384:	fc1ff06f          	j	80005344 <_ZL9fibonaccim+0x30>

0000000080005388 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005388:	fe010113          	addi	sp,sp,-32
    8000538c:	00113c23          	sd	ra,24(sp)
    80005390:	00813823          	sd	s0,16(sp)
    80005394:	00913423          	sd	s1,8(sp)
    80005398:	01213023          	sd	s2,0(sp)
    8000539c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800053a0:	00a00493          	li	s1,10
    800053a4:	0400006f          	j	800053e4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800053a8:	00004517          	auipc	a0,0x4
    800053ac:	29050513          	addi	a0,a0,656 # 80009638 <CONSOLE_STATUS+0x628>
    800053b0:	fffff097          	auipc	ra,0xfffff
    800053b4:	49c080e7          	jalr	1180(ra) # 8000484c <_Z11printStringPKc>
    800053b8:	00000613          	li	a2,0
    800053bc:	00a00593          	li	a1,10
    800053c0:	00048513          	mv	a0,s1
    800053c4:	fffff097          	auipc	ra,0xfffff
    800053c8:	638080e7          	jalr	1592(ra) # 800049fc <_Z8printIntiii>
    800053cc:	00004517          	auipc	a0,0x4
    800053d0:	df450513          	addi	a0,a0,-524 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800053d4:	fffff097          	auipc	ra,0xfffff
    800053d8:	478080e7          	jalr	1144(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800053dc:	0014849b          	addiw	s1,s1,1
    800053e0:	0ff4f493          	andi	s1,s1,255
    800053e4:	00c00793          	li	a5,12
    800053e8:	fc97f0e3          	bgeu	a5,s1,800053a8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800053ec:	00004517          	auipc	a0,0x4
    800053f0:	25450513          	addi	a0,a0,596 # 80009640 <CONSOLE_STATUS+0x630>
    800053f4:	fffff097          	auipc	ra,0xfffff
    800053f8:	458080e7          	jalr	1112(ra) # 8000484c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800053fc:	00500313          	li	t1,5
    thread_dispatch();
    80005400:	ffffc097          	auipc	ra,0xffffc
    80005404:	e80080e7          	jalr	-384(ra) # 80001280 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005408:	01000513          	li	a0,16
    8000540c:	00000097          	auipc	ra,0x0
    80005410:	f08080e7          	jalr	-248(ra) # 80005314 <_ZL9fibonaccim>
    80005414:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005418:	00004517          	auipc	a0,0x4
    8000541c:	23850513          	addi	a0,a0,568 # 80009650 <CONSOLE_STATUS+0x640>
    80005420:	fffff097          	auipc	ra,0xfffff
    80005424:	42c080e7          	jalr	1068(ra) # 8000484c <_Z11printStringPKc>
    80005428:	00000613          	li	a2,0
    8000542c:	00a00593          	li	a1,10
    80005430:	0009051b          	sext.w	a0,s2
    80005434:	fffff097          	auipc	ra,0xfffff
    80005438:	5c8080e7          	jalr	1480(ra) # 800049fc <_Z8printIntiii>
    8000543c:	00004517          	auipc	a0,0x4
    80005440:	d8450513          	addi	a0,a0,-636 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005444:	fffff097          	auipc	ra,0xfffff
    80005448:	408080e7          	jalr	1032(ra) # 8000484c <_Z11printStringPKc>
    8000544c:	0400006f          	j	8000548c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005450:	00004517          	auipc	a0,0x4
    80005454:	1e850513          	addi	a0,a0,488 # 80009638 <CONSOLE_STATUS+0x628>
    80005458:	fffff097          	auipc	ra,0xfffff
    8000545c:	3f4080e7          	jalr	1012(ra) # 8000484c <_Z11printStringPKc>
    80005460:	00000613          	li	a2,0
    80005464:	00a00593          	li	a1,10
    80005468:	00048513          	mv	a0,s1
    8000546c:	fffff097          	auipc	ra,0xfffff
    80005470:	590080e7          	jalr	1424(ra) # 800049fc <_Z8printIntiii>
    80005474:	00004517          	auipc	a0,0x4
    80005478:	d4c50513          	addi	a0,a0,-692 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000547c:	fffff097          	auipc	ra,0xfffff
    80005480:	3d0080e7          	jalr	976(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005484:	0014849b          	addiw	s1,s1,1
    80005488:	0ff4f493          	andi	s1,s1,255
    8000548c:	00f00793          	li	a5,15
    80005490:	fc97f0e3          	bgeu	a5,s1,80005450 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005494:	00004517          	auipc	a0,0x4
    80005498:	1cc50513          	addi	a0,a0,460 # 80009660 <CONSOLE_STATUS+0x650>
    8000549c:	fffff097          	auipc	ra,0xfffff
    800054a0:	3b0080e7          	jalr	944(ra) # 8000484c <_Z11printStringPKc>
    finishedD = true;
    800054a4:	00100793          	li	a5,1
    800054a8:	00006717          	auipc	a4,0x6
    800054ac:	10f70423          	sb	a5,264(a4) # 8000b5b0 <_ZL9finishedD>
    thread_dispatch();
    800054b0:	ffffc097          	auipc	ra,0xffffc
    800054b4:	dd0080e7          	jalr	-560(ra) # 80001280 <_Z15thread_dispatchv>
}
    800054b8:	01813083          	ld	ra,24(sp)
    800054bc:	01013403          	ld	s0,16(sp)
    800054c0:	00813483          	ld	s1,8(sp)
    800054c4:	00013903          	ld	s2,0(sp)
    800054c8:	02010113          	addi	sp,sp,32
    800054cc:	00008067          	ret

00000000800054d0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800054d0:	fe010113          	addi	sp,sp,-32
    800054d4:	00113c23          	sd	ra,24(sp)
    800054d8:	00813823          	sd	s0,16(sp)
    800054dc:	00913423          	sd	s1,8(sp)
    800054e0:	01213023          	sd	s2,0(sp)
    800054e4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800054e8:	00000493          	li	s1,0
    800054ec:	0400006f          	j	8000552c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800054f0:	00004517          	auipc	a0,0x4
    800054f4:	11850513          	addi	a0,a0,280 # 80009608 <CONSOLE_STATUS+0x5f8>
    800054f8:	fffff097          	auipc	ra,0xfffff
    800054fc:	354080e7          	jalr	852(ra) # 8000484c <_Z11printStringPKc>
    80005500:	00000613          	li	a2,0
    80005504:	00a00593          	li	a1,10
    80005508:	00048513          	mv	a0,s1
    8000550c:	fffff097          	auipc	ra,0xfffff
    80005510:	4f0080e7          	jalr	1264(ra) # 800049fc <_Z8printIntiii>
    80005514:	00004517          	auipc	a0,0x4
    80005518:	cac50513          	addi	a0,a0,-852 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000551c:	fffff097          	auipc	ra,0xfffff
    80005520:	330080e7          	jalr	816(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005524:	0014849b          	addiw	s1,s1,1
    80005528:	0ff4f493          	andi	s1,s1,255
    8000552c:	00200793          	li	a5,2
    80005530:	fc97f0e3          	bgeu	a5,s1,800054f0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005534:	00004517          	auipc	a0,0x4
    80005538:	0dc50513          	addi	a0,a0,220 # 80009610 <CONSOLE_STATUS+0x600>
    8000553c:	fffff097          	auipc	ra,0xfffff
    80005540:	310080e7          	jalr	784(ra) # 8000484c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005544:	00700313          	li	t1,7
    thread_dispatch();
    80005548:	ffffc097          	auipc	ra,0xffffc
    8000554c:	d38080e7          	jalr	-712(ra) # 80001280 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005550:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005554:	00004517          	auipc	a0,0x4
    80005558:	0cc50513          	addi	a0,a0,204 # 80009620 <CONSOLE_STATUS+0x610>
    8000555c:	fffff097          	auipc	ra,0xfffff
    80005560:	2f0080e7          	jalr	752(ra) # 8000484c <_Z11printStringPKc>
    80005564:	00000613          	li	a2,0
    80005568:	00a00593          	li	a1,10
    8000556c:	0009051b          	sext.w	a0,s2
    80005570:	fffff097          	auipc	ra,0xfffff
    80005574:	48c080e7          	jalr	1164(ra) # 800049fc <_Z8printIntiii>
    80005578:	00004517          	auipc	a0,0x4
    8000557c:	c4850513          	addi	a0,a0,-952 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005580:	fffff097          	auipc	ra,0xfffff
    80005584:	2cc080e7          	jalr	716(ra) # 8000484c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005588:	00c00513          	li	a0,12
    8000558c:	00000097          	auipc	ra,0x0
    80005590:	d88080e7          	jalr	-632(ra) # 80005314 <_ZL9fibonaccim>
    80005594:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005598:	00004517          	auipc	a0,0x4
    8000559c:	09050513          	addi	a0,a0,144 # 80009628 <CONSOLE_STATUS+0x618>
    800055a0:	fffff097          	auipc	ra,0xfffff
    800055a4:	2ac080e7          	jalr	684(ra) # 8000484c <_Z11printStringPKc>
    800055a8:	00000613          	li	a2,0
    800055ac:	00a00593          	li	a1,10
    800055b0:	0009051b          	sext.w	a0,s2
    800055b4:	fffff097          	auipc	ra,0xfffff
    800055b8:	448080e7          	jalr	1096(ra) # 800049fc <_Z8printIntiii>
    800055bc:	00004517          	auipc	a0,0x4
    800055c0:	c0450513          	addi	a0,a0,-1020 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800055c4:	fffff097          	auipc	ra,0xfffff
    800055c8:	288080e7          	jalr	648(ra) # 8000484c <_Z11printStringPKc>
    800055cc:	0400006f          	j	8000560c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800055d0:	00004517          	auipc	a0,0x4
    800055d4:	03850513          	addi	a0,a0,56 # 80009608 <CONSOLE_STATUS+0x5f8>
    800055d8:	fffff097          	auipc	ra,0xfffff
    800055dc:	274080e7          	jalr	628(ra) # 8000484c <_Z11printStringPKc>
    800055e0:	00000613          	li	a2,0
    800055e4:	00a00593          	li	a1,10
    800055e8:	00048513          	mv	a0,s1
    800055ec:	fffff097          	auipc	ra,0xfffff
    800055f0:	410080e7          	jalr	1040(ra) # 800049fc <_Z8printIntiii>
    800055f4:	00004517          	auipc	a0,0x4
    800055f8:	bcc50513          	addi	a0,a0,-1076 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800055fc:	fffff097          	auipc	ra,0xfffff
    80005600:	250080e7          	jalr	592(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005604:	0014849b          	addiw	s1,s1,1
    80005608:	0ff4f493          	andi	s1,s1,255
    8000560c:	00500793          	li	a5,5
    80005610:	fc97f0e3          	bgeu	a5,s1,800055d0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005614:	00004517          	auipc	a0,0x4
    80005618:	a1450513          	addi	a0,a0,-1516 # 80009028 <CONSOLE_STATUS+0x18>
    8000561c:	fffff097          	auipc	ra,0xfffff
    80005620:	230080e7          	jalr	560(ra) # 8000484c <_Z11printStringPKc>
    finishedC = true;
    80005624:	00100793          	li	a5,1
    80005628:	00006717          	auipc	a4,0x6
    8000562c:	f8f704a3          	sb	a5,-119(a4) # 8000b5b1 <_ZL9finishedC>
    thread_dispatch();
    80005630:	ffffc097          	auipc	ra,0xffffc
    80005634:	c50080e7          	jalr	-944(ra) # 80001280 <_Z15thread_dispatchv>
}
    80005638:	01813083          	ld	ra,24(sp)
    8000563c:	01013403          	ld	s0,16(sp)
    80005640:	00813483          	ld	s1,8(sp)
    80005644:	00013903          	ld	s2,0(sp)
    80005648:	02010113          	addi	sp,sp,32
    8000564c:	00008067          	ret

0000000080005650 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005650:	fe010113          	addi	sp,sp,-32
    80005654:	00113c23          	sd	ra,24(sp)
    80005658:	00813823          	sd	s0,16(sp)
    8000565c:	00913423          	sd	s1,8(sp)
    80005660:	01213023          	sd	s2,0(sp)
    80005664:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005668:	00000913          	li	s2,0
    8000566c:	0380006f          	j	800056a4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	c10080e7          	jalr	-1008(ra) # 80001280 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005678:	00148493          	addi	s1,s1,1
    8000567c:	000027b7          	lui	a5,0x2
    80005680:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005684:	0097ee63          	bltu	a5,s1,800056a0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005688:	00000713          	li	a4,0
    8000568c:	000077b7          	lui	a5,0x7
    80005690:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005694:	fce7eee3          	bltu	a5,a4,80005670 <_ZL11workerBodyBPv+0x20>
    80005698:	00170713          	addi	a4,a4,1
    8000569c:	ff1ff06f          	j	8000568c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800056a0:	00190913          	addi	s2,s2,1
    800056a4:	00f00793          	li	a5,15
    800056a8:	0527e063          	bltu	a5,s2,800056e8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800056ac:	00004517          	auipc	a0,0x4
    800056b0:	f4450513          	addi	a0,a0,-188 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800056b4:	fffff097          	auipc	ra,0xfffff
    800056b8:	198080e7          	jalr	408(ra) # 8000484c <_Z11printStringPKc>
    800056bc:	00000613          	li	a2,0
    800056c0:	00a00593          	li	a1,10
    800056c4:	0009051b          	sext.w	a0,s2
    800056c8:	fffff097          	auipc	ra,0xfffff
    800056cc:	334080e7          	jalr	820(ra) # 800049fc <_Z8printIntiii>
    800056d0:	00004517          	auipc	a0,0x4
    800056d4:	af050513          	addi	a0,a0,-1296 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800056d8:	fffff097          	auipc	ra,0xfffff
    800056dc:	174080e7          	jalr	372(ra) # 8000484c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056e0:	00000493          	li	s1,0
    800056e4:	f99ff06f          	j	8000567c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800056e8:	00004517          	auipc	a0,0x4
    800056ec:	f1050513          	addi	a0,a0,-240 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800056f0:	fffff097          	auipc	ra,0xfffff
    800056f4:	15c080e7          	jalr	348(ra) # 8000484c <_Z11printStringPKc>
    finishedB = true;
    800056f8:	00100793          	li	a5,1
    800056fc:	00006717          	auipc	a4,0x6
    80005700:	eaf70b23          	sb	a5,-330(a4) # 8000b5b2 <_ZL9finishedB>
    thread_dispatch();
    80005704:	ffffc097          	auipc	ra,0xffffc
    80005708:	b7c080e7          	jalr	-1156(ra) # 80001280 <_Z15thread_dispatchv>
}
    8000570c:	01813083          	ld	ra,24(sp)
    80005710:	01013403          	ld	s0,16(sp)
    80005714:	00813483          	ld	s1,8(sp)
    80005718:	00013903          	ld	s2,0(sp)
    8000571c:	02010113          	addi	sp,sp,32
    80005720:	00008067          	ret

0000000080005724 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005724:	fe010113          	addi	sp,sp,-32
    80005728:	00113c23          	sd	ra,24(sp)
    8000572c:	00813823          	sd	s0,16(sp)
    80005730:	00913423          	sd	s1,8(sp)
    80005734:	01213023          	sd	s2,0(sp)
    80005738:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000573c:	00000913          	li	s2,0
    80005740:	0380006f          	j	80005778 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005744:	ffffc097          	auipc	ra,0xffffc
    80005748:	b3c080e7          	jalr	-1220(ra) # 80001280 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000574c:	00148493          	addi	s1,s1,1
    80005750:	000027b7          	lui	a5,0x2
    80005754:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005758:	0097ee63          	bltu	a5,s1,80005774 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000575c:	00000713          	li	a4,0
    80005760:	000077b7          	lui	a5,0x7
    80005764:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005768:	fce7eee3          	bltu	a5,a4,80005744 <_ZL11workerBodyAPv+0x20>
    8000576c:	00170713          	addi	a4,a4,1
    80005770:	ff1ff06f          	j	80005760 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005774:	00190913          	addi	s2,s2,1
    80005778:	00900793          	li	a5,9
    8000577c:	0527e063          	bltu	a5,s2,800057bc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005780:	00004517          	auipc	a0,0x4
    80005784:	8a050513          	addi	a0,a0,-1888 # 80009020 <CONSOLE_STATUS+0x10>
    80005788:	fffff097          	auipc	ra,0xfffff
    8000578c:	0c4080e7          	jalr	196(ra) # 8000484c <_Z11printStringPKc>
    80005790:	00000613          	li	a2,0
    80005794:	00a00593          	li	a1,10
    80005798:	0009051b          	sext.w	a0,s2
    8000579c:	fffff097          	auipc	ra,0xfffff
    800057a0:	260080e7          	jalr	608(ra) # 800049fc <_Z8printIntiii>
    800057a4:	00004517          	auipc	a0,0x4
    800057a8:	a1c50513          	addi	a0,a0,-1508 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800057ac:	fffff097          	auipc	ra,0xfffff
    800057b0:	0a0080e7          	jalr	160(ra) # 8000484c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800057b4:	00000493          	li	s1,0
    800057b8:	f99ff06f          	j	80005750 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800057bc:	00004517          	auipc	a0,0x4
    800057c0:	86c50513          	addi	a0,a0,-1940 # 80009028 <CONSOLE_STATUS+0x18>
    800057c4:	fffff097          	auipc	ra,0xfffff
    800057c8:	088080e7          	jalr	136(ra) # 8000484c <_Z11printStringPKc>
    finishedA = true;
    800057cc:	00100793          	li	a5,1
    800057d0:	00006717          	auipc	a4,0x6
    800057d4:	def701a3          	sb	a5,-541(a4) # 8000b5b3 <_ZL9finishedA>
}
    800057d8:	01813083          	ld	ra,24(sp)
    800057dc:	01013403          	ld	s0,16(sp)
    800057e0:	00813483          	ld	s1,8(sp)
    800057e4:	00013903          	ld	s2,0(sp)
    800057e8:	02010113          	addi	sp,sp,32
    800057ec:	00008067          	ret

00000000800057f0 <_Z5test1v>:


void test1() {
    800057f0:	fc010113          	addi	sp,sp,-64
    800057f4:	02113c23          	sd	ra,56(sp)
    800057f8:	02813823          	sd	s0,48(sp)
    800057fc:	02913423          	sd	s1,40(sp)
    80005800:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005804:	00000613          	li	a2,0
    80005808:	00000597          	auipc	a1,0x0
    8000580c:	f1c58593          	addi	a1,a1,-228 # 80005724 <_ZL11workerBodyAPv>
    80005810:	fc040513          	addi	a0,s0,-64
    80005814:	ffffc097          	auipc	ra,0xffffc
    80005818:	9c0080e7          	jalr	-1600(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000581c:	00004517          	auipc	a0,0x4
    80005820:	81c50513          	addi	a0,a0,-2020 # 80009038 <CONSOLE_STATUS+0x28>
    80005824:	fffff097          	auipc	ra,0xfffff
    80005828:	028080e7          	jalr	40(ra) # 8000484c <_Z11printStringPKc>
    //putc('A');
    char b=getc();
    8000582c:	ffffc097          	auipc	ra,0xffffc
    80005830:	bb8080e7          	jalr	-1096(ra) # 800013e4 <_Z4getcv>
    80005834:	00050493          	mv	s1,a0
    getc();
    80005838:	ffffc097          	auipc	ra,0xffffc
    8000583c:	bac080e7          	jalr	-1108(ra) # 800013e4 <_Z4getcv>
    putc(b);
    80005840:	00048513          	mv	a0,s1
    80005844:	ffffc097          	auipc	ra,0xffffc
    80005848:	bcc080e7          	jalr	-1076(ra) # 80001410 <_Z4putcc>


    thread_create(&threads[1], workerBodyB, nullptr);
    8000584c:	00000613          	li	a2,0
    80005850:	00000597          	auipc	a1,0x0
    80005854:	e0058593          	addi	a1,a1,-512 # 80005650 <_ZL11workerBodyBPv>
    80005858:	fc840513          	addi	a0,s0,-56
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	978080e7          	jalr	-1672(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005864:	00004517          	auipc	a0,0x4
    80005868:	e0c50513          	addi	a0,a0,-500 # 80009670 <CONSOLE_STATUS+0x660>
    8000586c:	fffff097          	auipc	ra,0xfffff
    80005870:	fe0080e7          	jalr	-32(ra) # 8000484c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005874:	00000613          	li	a2,0
    80005878:	00000597          	auipc	a1,0x0
    8000587c:	c5858593          	addi	a1,a1,-936 # 800054d0 <_ZL11workerBodyCPv>
    80005880:	fd040513          	addi	a0,s0,-48
    80005884:	ffffc097          	auipc	ra,0xffffc
    80005888:	950080e7          	jalr	-1712(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000588c:	00004517          	auipc	a0,0x4
    80005890:	dfc50513          	addi	a0,a0,-516 # 80009688 <CONSOLE_STATUS+0x678>
    80005894:	fffff097          	auipc	ra,0xfffff
    80005898:	fb8080e7          	jalr	-72(ra) # 8000484c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000589c:	00000613          	li	a2,0
    800058a0:	00000597          	auipc	a1,0x0
    800058a4:	ae858593          	addi	a1,a1,-1304 # 80005388 <_ZL11workerBodyDPv>
    800058a8:	fd840513          	addi	a0,s0,-40
    800058ac:	ffffc097          	auipc	ra,0xffffc
    800058b0:	928080e7          	jalr	-1752(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800058b4:	00004517          	auipc	a0,0x4
    800058b8:	dec50513          	addi	a0,a0,-532 # 800096a0 <CONSOLE_STATUS+0x690>
    800058bc:	fffff097          	auipc	ra,0xfffff
    800058c0:	f90080e7          	jalr	-112(ra) # 8000484c <_Z11printStringPKc>
    800058c4:	00c0006f          	j	800058d0 <_Z5test1v+0xe0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800058c8:	ffffc097          	auipc	ra,0xffffc
    800058cc:	9b8080e7          	jalr	-1608(ra) # 80001280 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800058d0:	00006797          	auipc	a5,0x6
    800058d4:	ce37c783          	lbu	a5,-797(a5) # 8000b5b3 <_ZL9finishedA>
    800058d8:	fe0788e3          	beqz	a5,800058c8 <_Z5test1v+0xd8>
    800058dc:	00006797          	auipc	a5,0x6
    800058e0:	cd67c783          	lbu	a5,-810(a5) # 8000b5b2 <_ZL9finishedB>
    800058e4:	fe0782e3          	beqz	a5,800058c8 <_Z5test1v+0xd8>
    800058e8:	00006797          	auipc	a5,0x6
    800058ec:	cc97c783          	lbu	a5,-823(a5) # 8000b5b1 <_ZL9finishedC>
    800058f0:	fc078ce3          	beqz	a5,800058c8 <_Z5test1v+0xd8>
    800058f4:	00006797          	auipc	a5,0x6
    800058f8:	cbc7c783          	lbu	a5,-836(a5) # 8000b5b0 <_ZL9finishedD>
    800058fc:	fc0786e3          	beqz	a5,800058c8 <_Z5test1v+0xd8>

    }

}
    80005900:	03813083          	ld	ra,56(sp)
    80005904:	03013403          	ld	s0,48(sp)
    80005908:	02813483          	ld	s1,40(sp)
    8000590c:	04010113          	addi	sp,sp,64
    80005910:	00008067          	ret

0000000080005914 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005914:	fe010113          	addi	sp,sp,-32
    80005918:	00113c23          	sd	ra,24(sp)
    8000591c:	00813823          	sd	s0,16(sp)
    80005920:	00913423          	sd	s1,8(sp)
    80005924:	01213023          	sd	s2,0(sp)
    80005928:	02010413          	addi	s0,sp,32
    8000592c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005930:	00100793          	li	a5,1
    80005934:	02a7f863          	bgeu	a5,a0,80005964 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005938:	00a00793          	li	a5,10
    8000593c:	02f577b3          	remu	a5,a0,a5
    80005940:	02078e63          	beqz	a5,8000597c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005944:	fff48513          	addi	a0,s1,-1
    80005948:	00000097          	auipc	ra,0x0
    8000594c:	fcc080e7          	jalr	-52(ra) # 80005914 <_ZL9fibonaccim>
    80005950:	00050913          	mv	s2,a0
    80005954:	ffe48513          	addi	a0,s1,-2
    80005958:	00000097          	auipc	ra,0x0
    8000595c:	fbc080e7          	jalr	-68(ra) # 80005914 <_ZL9fibonaccim>
    80005960:	00a90533          	add	a0,s2,a0
}
    80005964:	01813083          	ld	ra,24(sp)
    80005968:	01013403          	ld	s0,16(sp)
    8000596c:	00813483          	ld	s1,8(sp)
    80005970:	00013903          	ld	s2,0(sp)
    80005974:	02010113          	addi	sp,sp,32
    80005978:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000597c:	ffffc097          	auipc	ra,0xffffc
    80005980:	904080e7          	jalr	-1788(ra) # 80001280 <_Z15thread_dispatchv>
    80005984:	fc1ff06f          	j	80005944 <_ZL9fibonaccim+0x30>

0000000080005988 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005988:	fe010113          	addi	sp,sp,-32
    8000598c:	00113c23          	sd	ra,24(sp)
    80005990:	00813823          	sd	s0,16(sp)
    80005994:	00913423          	sd	s1,8(sp)
    80005998:	01213023          	sd	s2,0(sp)
    8000599c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800059a0:	00a00493          	li	s1,10
    800059a4:	0400006f          	j	800059e4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800059a8:	00004517          	auipc	a0,0x4
    800059ac:	c9050513          	addi	a0,a0,-880 # 80009638 <CONSOLE_STATUS+0x628>
    800059b0:	fffff097          	auipc	ra,0xfffff
    800059b4:	e9c080e7          	jalr	-356(ra) # 8000484c <_Z11printStringPKc>
    800059b8:	00000613          	li	a2,0
    800059bc:	00a00593          	li	a1,10
    800059c0:	00048513          	mv	a0,s1
    800059c4:	fffff097          	auipc	ra,0xfffff
    800059c8:	038080e7          	jalr	56(ra) # 800049fc <_Z8printIntiii>
    800059cc:	00003517          	auipc	a0,0x3
    800059d0:	7f450513          	addi	a0,a0,2036 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800059d4:	fffff097          	auipc	ra,0xfffff
    800059d8:	e78080e7          	jalr	-392(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800059dc:	0014849b          	addiw	s1,s1,1
    800059e0:	0ff4f493          	andi	s1,s1,255
    800059e4:	00c00793          	li	a5,12
    800059e8:	fc97f0e3          	bgeu	a5,s1,800059a8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800059ec:	00004517          	auipc	a0,0x4
    800059f0:	c5450513          	addi	a0,a0,-940 # 80009640 <CONSOLE_STATUS+0x630>
    800059f4:	fffff097          	auipc	ra,0xfffff
    800059f8:	e58080e7          	jalr	-424(ra) # 8000484c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800059fc:	00500313          	li	t1,5
    thread_dispatch();
    80005a00:	ffffc097          	auipc	ra,0xffffc
    80005a04:	880080e7          	jalr	-1920(ra) # 80001280 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005a08:	01000513          	li	a0,16
    80005a0c:	00000097          	auipc	ra,0x0
    80005a10:	f08080e7          	jalr	-248(ra) # 80005914 <_ZL9fibonaccim>
    80005a14:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005a18:	00004517          	auipc	a0,0x4
    80005a1c:	c3850513          	addi	a0,a0,-968 # 80009650 <CONSOLE_STATUS+0x640>
    80005a20:	fffff097          	auipc	ra,0xfffff
    80005a24:	e2c080e7          	jalr	-468(ra) # 8000484c <_Z11printStringPKc>
    80005a28:	00000613          	li	a2,0
    80005a2c:	00a00593          	li	a1,10
    80005a30:	0009051b          	sext.w	a0,s2
    80005a34:	fffff097          	auipc	ra,0xfffff
    80005a38:	fc8080e7          	jalr	-56(ra) # 800049fc <_Z8printIntiii>
    80005a3c:	00003517          	auipc	a0,0x3
    80005a40:	78450513          	addi	a0,a0,1924 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005a44:	fffff097          	auipc	ra,0xfffff
    80005a48:	e08080e7          	jalr	-504(ra) # 8000484c <_Z11printStringPKc>
    80005a4c:	0400006f          	j	80005a8c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a50:	00004517          	auipc	a0,0x4
    80005a54:	be850513          	addi	a0,a0,-1048 # 80009638 <CONSOLE_STATUS+0x628>
    80005a58:	fffff097          	auipc	ra,0xfffff
    80005a5c:	df4080e7          	jalr	-524(ra) # 8000484c <_Z11printStringPKc>
    80005a60:	00000613          	li	a2,0
    80005a64:	00a00593          	li	a1,10
    80005a68:	00048513          	mv	a0,s1
    80005a6c:	fffff097          	auipc	ra,0xfffff
    80005a70:	f90080e7          	jalr	-112(ra) # 800049fc <_Z8printIntiii>
    80005a74:	00003517          	auipc	a0,0x3
    80005a78:	74c50513          	addi	a0,a0,1868 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005a7c:	fffff097          	auipc	ra,0xfffff
    80005a80:	dd0080e7          	jalr	-560(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005a84:	0014849b          	addiw	s1,s1,1
    80005a88:	0ff4f493          	andi	s1,s1,255
    80005a8c:	00f00793          	li	a5,15
    80005a90:	fc97f0e3          	bgeu	a5,s1,80005a50 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005a94:	00004517          	auipc	a0,0x4
    80005a98:	bcc50513          	addi	a0,a0,-1076 # 80009660 <CONSOLE_STATUS+0x650>
    80005a9c:	fffff097          	auipc	ra,0xfffff
    80005aa0:	db0080e7          	jalr	-592(ra) # 8000484c <_Z11printStringPKc>
    finishedD = true;
    80005aa4:	00100793          	li	a5,1
    80005aa8:	00006717          	auipc	a4,0x6
    80005aac:	b0f70623          	sb	a5,-1268(a4) # 8000b5b4 <_ZL9finishedD>
    thread_dispatch();
    80005ab0:	ffffb097          	auipc	ra,0xffffb
    80005ab4:	7d0080e7          	jalr	2000(ra) # 80001280 <_Z15thread_dispatchv>
}
    80005ab8:	01813083          	ld	ra,24(sp)
    80005abc:	01013403          	ld	s0,16(sp)
    80005ac0:	00813483          	ld	s1,8(sp)
    80005ac4:	00013903          	ld	s2,0(sp)
    80005ac8:	02010113          	addi	sp,sp,32
    80005acc:	00008067          	ret

0000000080005ad0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005ad0:	fe010113          	addi	sp,sp,-32
    80005ad4:	00113c23          	sd	ra,24(sp)
    80005ad8:	00813823          	sd	s0,16(sp)
    80005adc:	00913423          	sd	s1,8(sp)
    80005ae0:	01213023          	sd	s2,0(sp)
    80005ae4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005ae8:	00000493          	li	s1,0
    80005aec:	0400006f          	j	80005b2c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005af0:	00004517          	auipc	a0,0x4
    80005af4:	b1850513          	addi	a0,a0,-1256 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005af8:	fffff097          	auipc	ra,0xfffff
    80005afc:	d54080e7          	jalr	-684(ra) # 8000484c <_Z11printStringPKc>
    80005b00:	00000613          	li	a2,0
    80005b04:	00a00593          	li	a1,10
    80005b08:	00048513          	mv	a0,s1
    80005b0c:	fffff097          	auipc	ra,0xfffff
    80005b10:	ef0080e7          	jalr	-272(ra) # 800049fc <_Z8printIntiii>
    80005b14:	00003517          	auipc	a0,0x3
    80005b18:	6ac50513          	addi	a0,a0,1708 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005b1c:	fffff097          	auipc	ra,0xfffff
    80005b20:	d30080e7          	jalr	-720(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005b24:	0014849b          	addiw	s1,s1,1
    80005b28:	0ff4f493          	andi	s1,s1,255
    80005b2c:	00200793          	li	a5,2
    80005b30:	fc97f0e3          	bgeu	a5,s1,80005af0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005b34:	00004517          	auipc	a0,0x4
    80005b38:	adc50513          	addi	a0,a0,-1316 # 80009610 <CONSOLE_STATUS+0x600>
    80005b3c:	fffff097          	auipc	ra,0xfffff
    80005b40:	d10080e7          	jalr	-752(ra) # 8000484c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005b44:	00700313          	li	t1,7
    thread_dispatch();
    80005b48:	ffffb097          	auipc	ra,0xffffb
    80005b4c:	738080e7          	jalr	1848(ra) # 80001280 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005b50:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005b54:	00004517          	auipc	a0,0x4
    80005b58:	acc50513          	addi	a0,a0,-1332 # 80009620 <CONSOLE_STATUS+0x610>
    80005b5c:	fffff097          	auipc	ra,0xfffff
    80005b60:	cf0080e7          	jalr	-784(ra) # 8000484c <_Z11printStringPKc>
    80005b64:	00000613          	li	a2,0
    80005b68:	00a00593          	li	a1,10
    80005b6c:	0009051b          	sext.w	a0,s2
    80005b70:	fffff097          	auipc	ra,0xfffff
    80005b74:	e8c080e7          	jalr	-372(ra) # 800049fc <_Z8printIntiii>
    80005b78:	00003517          	auipc	a0,0x3
    80005b7c:	64850513          	addi	a0,a0,1608 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005b80:	fffff097          	auipc	ra,0xfffff
    80005b84:	ccc080e7          	jalr	-820(ra) # 8000484c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005b88:	00c00513          	li	a0,12
    80005b8c:	00000097          	auipc	ra,0x0
    80005b90:	d88080e7          	jalr	-632(ra) # 80005914 <_ZL9fibonaccim>
    80005b94:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005b98:	00004517          	auipc	a0,0x4
    80005b9c:	a9050513          	addi	a0,a0,-1392 # 80009628 <CONSOLE_STATUS+0x618>
    80005ba0:	fffff097          	auipc	ra,0xfffff
    80005ba4:	cac080e7          	jalr	-852(ra) # 8000484c <_Z11printStringPKc>
    80005ba8:	00000613          	li	a2,0
    80005bac:	00a00593          	li	a1,10
    80005bb0:	0009051b          	sext.w	a0,s2
    80005bb4:	fffff097          	auipc	ra,0xfffff
    80005bb8:	e48080e7          	jalr	-440(ra) # 800049fc <_Z8printIntiii>
    80005bbc:	00003517          	auipc	a0,0x3
    80005bc0:	60450513          	addi	a0,a0,1540 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005bc4:	fffff097          	auipc	ra,0xfffff
    80005bc8:	c88080e7          	jalr	-888(ra) # 8000484c <_Z11printStringPKc>
    80005bcc:	0400006f          	j	80005c0c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005bd0:	00004517          	auipc	a0,0x4
    80005bd4:	a3850513          	addi	a0,a0,-1480 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005bd8:	fffff097          	auipc	ra,0xfffff
    80005bdc:	c74080e7          	jalr	-908(ra) # 8000484c <_Z11printStringPKc>
    80005be0:	00000613          	li	a2,0
    80005be4:	00a00593          	li	a1,10
    80005be8:	00048513          	mv	a0,s1
    80005bec:	fffff097          	auipc	ra,0xfffff
    80005bf0:	e10080e7          	jalr	-496(ra) # 800049fc <_Z8printIntiii>
    80005bf4:	00003517          	auipc	a0,0x3
    80005bf8:	5cc50513          	addi	a0,a0,1484 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005bfc:	fffff097          	auipc	ra,0xfffff
    80005c00:	c50080e7          	jalr	-944(ra) # 8000484c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005c04:	0014849b          	addiw	s1,s1,1
    80005c08:	0ff4f493          	andi	s1,s1,255
    80005c0c:	00500793          	li	a5,5
    80005c10:	fc97f0e3          	bgeu	a5,s1,80005bd0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005c14:	00003517          	auipc	a0,0x3
    80005c18:	41450513          	addi	a0,a0,1044 # 80009028 <CONSOLE_STATUS+0x18>
    80005c1c:	fffff097          	auipc	ra,0xfffff
    80005c20:	c30080e7          	jalr	-976(ra) # 8000484c <_Z11printStringPKc>
    finishedC = true;
    80005c24:	00100793          	li	a5,1
    80005c28:	00006717          	auipc	a4,0x6
    80005c2c:	98f706a3          	sb	a5,-1651(a4) # 8000b5b5 <_ZL9finishedC>
    thread_dispatch();
    80005c30:	ffffb097          	auipc	ra,0xffffb
    80005c34:	650080e7          	jalr	1616(ra) # 80001280 <_Z15thread_dispatchv>
}
    80005c38:	01813083          	ld	ra,24(sp)
    80005c3c:	01013403          	ld	s0,16(sp)
    80005c40:	00813483          	ld	s1,8(sp)
    80005c44:	00013903          	ld	s2,0(sp)
    80005c48:	02010113          	addi	sp,sp,32
    80005c4c:	00008067          	ret

0000000080005c50 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005c50:	fe010113          	addi	sp,sp,-32
    80005c54:	00113c23          	sd	ra,24(sp)
    80005c58:	00813823          	sd	s0,16(sp)
    80005c5c:	00913423          	sd	s1,8(sp)
    80005c60:	01213023          	sd	s2,0(sp)
    80005c64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005c68:	00000913          	li	s2,0
    80005c6c:	0380006f          	j	80005ca4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005c70:	ffffb097          	auipc	ra,0xffffb
    80005c74:	610080e7          	jalr	1552(ra) # 80001280 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005c78:	00148493          	addi	s1,s1,1
    80005c7c:	000027b7          	lui	a5,0x2
    80005c80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005c84:	0097ee63          	bltu	a5,s1,80005ca0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005c88:	00000713          	li	a4,0
    80005c8c:	000077b7          	lui	a5,0x7
    80005c90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005c94:	fce7eee3          	bltu	a5,a4,80005c70 <_ZL11workerBodyBPv+0x20>
    80005c98:	00170713          	addi	a4,a4,1
    80005c9c:	ff1ff06f          	j	80005c8c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005ca0:	00190913          	addi	s2,s2,1
    80005ca4:	00f00793          	li	a5,15
    80005ca8:	0527e063          	bltu	a5,s2,80005ce8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005cac:	00004517          	auipc	a0,0x4
    80005cb0:	94450513          	addi	a0,a0,-1724 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005cb4:	fffff097          	auipc	ra,0xfffff
    80005cb8:	b98080e7          	jalr	-1128(ra) # 8000484c <_Z11printStringPKc>
    80005cbc:	00000613          	li	a2,0
    80005cc0:	00a00593          	li	a1,10
    80005cc4:	0009051b          	sext.w	a0,s2
    80005cc8:	fffff097          	auipc	ra,0xfffff
    80005ccc:	d34080e7          	jalr	-716(ra) # 800049fc <_Z8printIntiii>
    80005cd0:	00003517          	auipc	a0,0x3
    80005cd4:	4f050513          	addi	a0,a0,1264 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005cd8:	fffff097          	auipc	ra,0xfffff
    80005cdc:	b74080e7          	jalr	-1164(ra) # 8000484c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005ce0:	00000493          	li	s1,0
    80005ce4:	f99ff06f          	j	80005c7c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005ce8:	00004517          	auipc	a0,0x4
    80005cec:	91050513          	addi	a0,a0,-1776 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005cf0:	fffff097          	auipc	ra,0xfffff
    80005cf4:	b5c080e7          	jalr	-1188(ra) # 8000484c <_Z11printStringPKc>
    finishedB = true;
    80005cf8:	00100793          	li	a5,1
    80005cfc:	00006717          	auipc	a4,0x6
    80005d00:	8af70d23          	sb	a5,-1862(a4) # 8000b5b6 <_ZL9finishedB>
    thread_dispatch();
    80005d04:	ffffb097          	auipc	ra,0xffffb
    80005d08:	57c080e7          	jalr	1404(ra) # 80001280 <_Z15thread_dispatchv>
}
    80005d0c:	01813083          	ld	ra,24(sp)
    80005d10:	01013403          	ld	s0,16(sp)
    80005d14:	00813483          	ld	s1,8(sp)
    80005d18:	00013903          	ld	s2,0(sp)
    80005d1c:	02010113          	addi	sp,sp,32
    80005d20:	00008067          	ret

0000000080005d24 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005d24:	fe010113          	addi	sp,sp,-32
    80005d28:	00113c23          	sd	ra,24(sp)
    80005d2c:	00813823          	sd	s0,16(sp)
    80005d30:	00913423          	sd	s1,8(sp)
    80005d34:	01213023          	sd	s2,0(sp)
    80005d38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005d3c:	00000913          	li	s2,0
    80005d40:	0380006f          	j	80005d78 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005d44:	ffffb097          	auipc	ra,0xffffb
    80005d48:	53c080e7          	jalr	1340(ra) # 80001280 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005d4c:	00148493          	addi	s1,s1,1
    80005d50:	000027b7          	lui	a5,0x2
    80005d54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005d58:	0097ee63          	bltu	a5,s1,80005d74 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005d5c:	00000713          	li	a4,0
    80005d60:	000077b7          	lui	a5,0x7
    80005d64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005d68:	fce7eee3          	bltu	a5,a4,80005d44 <_ZL11workerBodyAPv+0x20>
    80005d6c:	00170713          	addi	a4,a4,1
    80005d70:	ff1ff06f          	j	80005d60 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005d74:	00190913          	addi	s2,s2,1
    80005d78:	00900793          	li	a5,9
    80005d7c:	0527e063          	bltu	a5,s2,80005dbc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005d80:	00003517          	auipc	a0,0x3
    80005d84:	2a050513          	addi	a0,a0,672 # 80009020 <CONSOLE_STATUS+0x10>
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	ac4080e7          	jalr	-1340(ra) # 8000484c <_Z11printStringPKc>
    80005d90:	00000613          	li	a2,0
    80005d94:	00a00593          	li	a1,10
    80005d98:	0009051b          	sext.w	a0,s2
    80005d9c:	fffff097          	auipc	ra,0xfffff
    80005da0:	c60080e7          	jalr	-928(ra) # 800049fc <_Z8printIntiii>
    80005da4:	00003517          	auipc	a0,0x3
    80005da8:	41c50513          	addi	a0,a0,1052 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005dac:	fffff097          	auipc	ra,0xfffff
    80005db0:	aa0080e7          	jalr	-1376(ra) # 8000484c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005db4:	00000493          	li	s1,0
    80005db8:	f99ff06f          	j	80005d50 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005dbc:	00003517          	auipc	a0,0x3
    80005dc0:	26c50513          	addi	a0,a0,620 # 80009028 <CONSOLE_STATUS+0x18>
    80005dc4:	fffff097          	auipc	ra,0xfffff
    80005dc8:	a88080e7          	jalr	-1400(ra) # 8000484c <_Z11printStringPKc>
    finishedA = true;
    80005dcc:	00100793          	li	a5,1
    80005dd0:	00005717          	auipc	a4,0x5
    80005dd4:	7ef703a3          	sb	a5,2023(a4) # 8000b5b7 <_ZL9finishedA>
}
    80005dd8:	01813083          	ld	ra,24(sp)
    80005ddc:	01013403          	ld	s0,16(sp)
    80005de0:	00813483          	ld	s1,8(sp)
    80005de4:	00013903          	ld	s2,0(sp)
    80005de8:	02010113          	addi	sp,sp,32
    80005dec:	00008067          	ret

0000000080005df0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005df0:	fd010113          	addi	sp,sp,-48
    80005df4:	02113423          	sd	ra,40(sp)
    80005df8:	02813023          	sd	s0,32(sp)
    80005dfc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005e00:	00000613          	li	a2,0
    80005e04:	00000597          	auipc	a1,0x0
    80005e08:	f2058593          	addi	a1,a1,-224 # 80005d24 <_ZL11workerBodyAPv>
    80005e0c:	fd040513          	addi	a0,s0,-48
    80005e10:	ffffb097          	auipc	ra,0xffffb
    80005e14:	3c4080e7          	jalr	964(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005e18:	00003517          	auipc	a0,0x3
    80005e1c:	22050513          	addi	a0,a0,544 # 80009038 <CONSOLE_STATUS+0x28>
    80005e20:	fffff097          	auipc	ra,0xfffff
    80005e24:	a2c080e7          	jalr	-1492(ra) # 8000484c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005e28:	00000613          	li	a2,0
    80005e2c:	00000597          	auipc	a1,0x0
    80005e30:	e2458593          	addi	a1,a1,-476 # 80005c50 <_ZL11workerBodyBPv>
    80005e34:	fd840513          	addi	a0,s0,-40
    80005e38:	ffffb097          	auipc	ra,0xffffb
    80005e3c:	39c080e7          	jalr	924(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005e40:	00004517          	auipc	a0,0x4
    80005e44:	83050513          	addi	a0,a0,-2000 # 80009670 <CONSOLE_STATUS+0x660>
    80005e48:	fffff097          	auipc	ra,0xfffff
    80005e4c:	a04080e7          	jalr	-1532(ra) # 8000484c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005e50:	00000613          	li	a2,0
    80005e54:	00000597          	auipc	a1,0x0
    80005e58:	c7c58593          	addi	a1,a1,-900 # 80005ad0 <_ZL11workerBodyCPv>
    80005e5c:	fe040513          	addi	a0,s0,-32
    80005e60:	ffffb097          	auipc	ra,0xffffb
    80005e64:	374080e7          	jalr	884(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005e68:	00004517          	auipc	a0,0x4
    80005e6c:	82050513          	addi	a0,a0,-2016 # 80009688 <CONSOLE_STATUS+0x678>
    80005e70:	fffff097          	auipc	ra,0xfffff
    80005e74:	9dc080e7          	jalr	-1572(ra) # 8000484c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005e78:	00000613          	li	a2,0
    80005e7c:	00000597          	auipc	a1,0x0
    80005e80:	b0c58593          	addi	a1,a1,-1268 # 80005988 <_ZL11workerBodyDPv>
    80005e84:	fe840513          	addi	a0,s0,-24
    80005e88:	ffffb097          	auipc	ra,0xffffb
    80005e8c:	34c080e7          	jalr	844(ra) # 800011d4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005e90:	00004517          	auipc	a0,0x4
    80005e94:	81050513          	addi	a0,a0,-2032 # 800096a0 <CONSOLE_STATUS+0x690>
    80005e98:	fffff097          	auipc	ra,0xfffff
    80005e9c:	9b4080e7          	jalr	-1612(ra) # 8000484c <_Z11printStringPKc>
    80005ea0:	00c0006f          	j	80005eac <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005ea4:	ffffb097          	auipc	ra,0xffffb
    80005ea8:	3dc080e7          	jalr	988(ra) # 80001280 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005eac:	00005797          	auipc	a5,0x5
    80005eb0:	70b7c783          	lbu	a5,1803(a5) # 8000b5b7 <_ZL9finishedA>
    80005eb4:	fe0788e3          	beqz	a5,80005ea4 <_Z16System_Mode_testv+0xb4>
    80005eb8:	00005797          	auipc	a5,0x5
    80005ebc:	6fe7c783          	lbu	a5,1790(a5) # 8000b5b6 <_ZL9finishedB>
    80005ec0:	fe0782e3          	beqz	a5,80005ea4 <_Z16System_Mode_testv+0xb4>
    80005ec4:	00005797          	auipc	a5,0x5
    80005ec8:	6f17c783          	lbu	a5,1777(a5) # 8000b5b5 <_ZL9finishedC>
    80005ecc:	fc078ce3          	beqz	a5,80005ea4 <_Z16System_Mode_testv+0xb4>
    80005ed0:	00005797          	auipc	a5,0x5
    80005ed4:	6e47c783          	lbu	a5,1764(a5) # 8000b5b4 <_ZL9finishedD>
    80005ed8:	fc0786e3          	beqz	a5,80005ea4 <_Z16System_Mode_testv+0xb4>
    }

}
    80005edc:	02813083          	ld	ra,40(sp)
    80005ee0:	02013403          	ld	s0,32(sp)
    80005ee4:	03010113          	addi	sp,sp,48
    80005ee8:	00008067          	ret

0000000080005eec <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../lib/mem.h"
#include "../lib/console.h"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005eec:	fe010113          	addi	sp,sp,-32
    80005ef0:	00113c23          	sd	ra,24(sp)
    80005ef4:	00813823          	sd	s0,16(sp)
    80005ef8:	00913423          	sd	s1,8(sp)
    80005efc:	01213023          	sd	s2,0(sp)
    80005f00:	02010413          	addi	s0,sp,32
    80005f04:	00050493          	mv	s1,a0
    80005f08:	00058913          	mv	s2,a1
    80005f0c:	0015879b          	addiw	a5,a1,1
    80005f10:	00f52023          	sw	a5,0(a0)
    80005f14:	00052823          	sw	zero,16(a0)
    80005f18:	00052a23          	sw	zero,20(a0)
    printString("[Buffer::Buffer] cap="); printInt(cap); putc('\n');
    80005f1c:	00003517          	auipc	a0,0x3
    80005f20:	7b450513          	addi	a0,a0,1972 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80005f24:	fffff097          	auipc	ra,0xfffff
    80005f28:	928080e7          	jalr	-1752(ra) # 8000484c <_Z11printStringPKc>
    80005f2c:	00000613          	li	a2,0
    80005f30:	00a00593          	li	a1,10
    80005f34:	0004a503          	lw	a0,0(s1)
    80005f38:	fffff097          	auipc	ra,0xfffff
    80005f3c:	ac4080e7          	jalr	-1340(ra) # 800049fc <_Z8printIntiii>
    80005f40:	00a00513          	li	a0,10
    80005f44:	ffffb097          	auipc	ra,0xffffb
    80005f48:	4cc080e7          	jalr	1228(ra) # 80001410 <_Z4putcc>

    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f4c:	0004a503          	lw	a0,0(s1)
    80005f50:	00251513          	slli	a0,a0,0x2
    80005f54:	ffffb097          	auipc	ra,0xffffb
    80005f58:	1fc080e7          	jalr	508(ra) # 80001150 <_Z9mem_allocm>
    80005f5c:	00a4b423          	sd	a0,8(s1)
    //buffer=(int*) MemoryAllocator::createAllocator()->alloc(sizeof(int) * cap);

    if (!buffer) {
    80005f60:	08050663          	beqz	a0,80005fec <_ZN6BufferC1Ei+0x100>
        printString("[Buffer::Buffer] ERROR: mem_alloc failed!\n");
    } else {
        printString("[Buffer::Buffer] mem_alloc OK, address: ");
    80005f64:	00003517          	auipc	a0,0x3
    80005f68:	7b450513          	addi	a0,a0,1972 # 80009718 <CONSOLE_STATUS+0x708>
    80005f6c:	fffff097          	auipc	ra,0xfffff
    80005f70:	8e0080e7          	jalr	-1824(ra) # 8000484c <_Z11printStringPKc>
        printInt((uint64)buffer); putc('\n');
    80005f74:	00000613          	li	a2,0
    80005f78:	00a00593          	li	a1,10
    80005f7c:	0084a503          	lw	a0,8(s1)
    80005f80:	fffff097          	auipc	ra,0xfffff
    80005f84:	a7c080e7          	jalr	-1412(ra) # 800049fc <_Z8printIntiii>
    80005f88:	00a00513          	li	a0,10
    80005f8c:	ffffb097          	auipc	ra,0xffffb
    80005f90:	484080e7          	jalr	1156(ra) # 80001410 <_Z4putcc>
    }
    sem_open(&itemAvailable, 0);
    80005f94:	00000593          	li	a1,0
    80005f98:	02048513          	addi	a0,s1,32
    80005f9c:	ffffb097          	auipc	ra,0xffffb
    80005fa0:	310080e7          	jalr	784(ra) # 800012ac <_Z8sem_openPP13SemaforKernelj>
    sem_open(&spaceAvailable, _cap);
    80005fa4:	00090593          	mv	a1,s2
    80005fa8:	01848513          	addi	a0,s1,24
    80005fac:	ffffb097          	auipc	ra,0xffffb
    80005fb0:	300080e7          	jalr	768(ra) # 800012ac <_Z8sem_openPP13SemaforKernelj>
    sem_open(&mutexHead, 1);
    80005fb4:	00100593          	li	a1,1
    80005fb8:	02848513          	addi	a0,s1,40
    80005fbc:	ffffb097          	auipc	ra,0xffffb
    80005fc0:	2f0080e7          	jalr	752(ra) # 800012ac <_Z8sem_openPP13SemaforKernelj>
    sem_open(&mutexTail, 1);
    80005fc4:	00100593          	li	a1,1
    80005fc8:	03048513          	addi	a0,s1,48
    80005fcc:	ffffb097          	auipc	ra,0xffffb
    80005fd0:	2e0080e7          	jalr	736(ra) # 800012ac <_Z8sem_openPP13SemaforKernelj>
}
    80005fd4:	01813083          	ld	ra,24(sp)
    80005fd8:	01013403          	ld	s0,16(sp)
    80005fdc:	00813483          	ld	s1,8(sp)
    80005fe0:	00013903          	ld	s2,0(sp)
    80005fe4:	02010113          	addi	sp,sp,32
    80005fe8:	00008067          	ret
        printString("[Buffer::Buffer] ERROR: mem_alloc failed!\n");
    80005fec:	00003517          	auipc	a0,0x3
    80005ff0:	6fc50513          	addi	a0,a0,1788 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80005ff4:	fffff097          	auipc	ra,0xfffff
    80005ff8:	858080e7          	jalr	-1960(ra) # 8000484c <_Z11printStringPKc>
    80005ffc:	f99ff06f          	j	80005f94 <_ZN6BufferC1Ei+0xa8>

0000000080006000 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006000:	fe010113          	addi	sp,sp,-32
    80006004:	00113c23          	sd	ra,24(sp)
    80006008:	00813823          	sd	s0,16(sp)
    8000600c:	00913423          	sd	s1,8(sp)
    80006010:	01213023          	sd	s2,0(sp)
    80006014:	02010413          	addi	s0,sp,32
    80006018:	00050493          	mv	s1,a0
    8000601c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006020:	01853503          	ld	a0,24(a0)
    80006024:	ffffb097          	auipc	ra,0xffffb
    80006028:	328080e7          	jalr	808(ra) # 8000134c <_Z8sem_waitP13SemaforKernel>

    sem_wait(mutexTail);
    8000602c:	0304b503          	ld	a0,48(s1)
    80006030:	ffffb097          	auipc	ra,0xffffb
    80006034:	31c080e7          	jalr	796(ra) # 8000134c <_Z8sem_waitP13SemaforKernel>
    buffer[tail] = val;
    80006038:	0084b783          	ld	a5,8(s1)
    8000603c:	0144a703          	lw	a4,20(s1)
    80006040:	00271713          	slli	a4,a4,0x2
    80006044:	00e787b3          	add	a5,a5,a4
    80006048:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000604c:	0144a783          	lw	a5,20(s1)
    80006050:	0017879b          	addiw	a5,a5,1
    80006054:	0004a703          	lw	a4,0(s1)
    80006058:	02e7e7bb          	remw	a5,a5,a4
    8000605c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006060:	0304b503          	ld	a0,48(s1)
    80006064:	ffffb097          	auipc	ra,0xffffb
    80006068:	334080e7          	jalr	820(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>

    sem_signal(itemAvailable);
    8000606c:	0204b503          	ld	a0,32(s1)
    80006070:	ffffb097          	auipc	ra,0xffffb
    80006074:	328080e7          	jalr	808(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>

}
    80006078:	01813083          	ld	ra,24(sp)
    8000607c:	01013403          	ld	s0,16(sp)
    80006080:	00813483          	ld	s1,8(sp)
    80006084:	00013903          	ld	s2,0(sp)
    80006088:	02010113          	addi	sp,sp,32
    8000608c:	00008067          	ret

0000000080006090 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006090:	fe010113          	addi	sp,sp,-32
    80006094:	00113c23          	sd	ra,24(sp)
    80006098:	00813823          	sd	s0,16(sp)
    8000609c:	00913423          	sd	s1,8(sp)
    800060a0:	01213023          	sd	s2,0(sp)
    800060a4:	02010413          	addi	s0,sp,32
    800060a8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800060ac:	02053503          	ld	a0,32(a0)
    800060b0:	ffffb097          	auipc	ra,0xffffb
    800060b4:	29c080e7          	jalr	668(ra) # 8000134c <_Z8sem_waitP13SemaforKernel>

    sem_wait(mutexHead);
    800060b8:	0284b503          	ld	a0,40(s1)
    800060bc:	ffffb097          	auipc	ra,0xffffb
    800060c0:	290080e7          	jalr	656(ra) # 8000134c <_Z8sem_waitP13SemaforKernel>

    int ret = buffer[head];
    800060c4:	0084b703          	ld	a4,8(s1)
    800060c8:	0104a783          	lw	a5,16(s1)
    800060cc:	00279693          	slli	a3,a5,0x2
    800060d0:	00d70733          	add	a4,a4,a3
    800060d4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800060d8:	0017879b          	addiw	a5,a5,1
    800060dc:	0004a703          	lw	a4,0(s1)
    800060e0:	02e7e7bb          	remw	a5,a5,a4
    800060e4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800060e8:	0284b503          	ld	a0,40(s1)
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	2ac080e7          	jalr	684(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>

    sem_signal(spaceAvailable);
    800060f4:	0184b503          	ld	a0,24(s1)
    800060f8:	ffffb097          	auipc	ra,0xffffb
    800060fc:	2a0080e7          	jalr	672(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>

    return ret;
}
    80006100:	00090513          	mv	a0,s2
    80006104:	01813083          	ld	ra,24(sp)
    80006108:	01013403          	ld	s0,16(sp)
    8000610c:	00813483          	ld	s1,8(sp)
    80006110:	00013903          	ld	s2,0(sp)
    80006114:	02010113          	addi	sp,sp,32
    80006118:	00008067          	ret

000000008000611c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000611c:	fe010113          	addi	sp,sp,-32
    80006120:	00113c23          	sd	ra,24(sp)
    80006124:	00813823          	sd	s0,16(sp)
    80006128:	00913423          	sd	s1,8(sp)
    8000612c:	01213023          	sd	s2,0(sp)
    80006130:	02010413          	addi	s0,sp,32
    80006134:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006138:	02853503          	ld	a0,40(a0)
    8000613c:	ffffb097          	auipc	ra,0xffffb
    80006140:	210080e7          	jalr	528(ra) # 8000134c <_Z8sem_waitP13SemaforKernel>
    sem_wait(mutexTail);
    80006144:	0304b503          	ld	a0,48(s1)
    80006148:	ffffb097          	auipc	ra,0xffffb
    8000614c:	204080e7          	jalr	516(ra) # 8000134c <_Z8sem_waitP13SemaforKernel>

    if (tail >= head) {
    80006150:	0144a783          	lw	a5,20(s1)
    80006154:	0104a903          	lw	s2,16(s1)
    80006158:	0327ce63          	blt	a5,s2,80006194 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000615c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006160:	0304b503          	ld	a0,48(s1)
    80006164:	ffffb097          	auipc	ra,0xffffb
    80006168:	234080e7          	jalr	564(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>
    sem_signal(mutexHead);
    8000616c:	0284b503          	ld	a0,40(s1)
    80006170:	ffffb097          	auipc	ra,0xffffb
    80006174:	228080e7          	jalr	552(ra) # 80001398 <_Z10sem_signalP13SemaforKernel>

    return ret;
}
    80006178:	00090513          	mv	a0,s2
    8000617c:	01813083          	ld	ra,24(sp)
    80006180:	01013403          	ld	s0,16(sp)
    80006184:	00813483          	ld	s1,8(sp)
    80006188:	00013903          	ld	s2,0(sp)
    8000618c:	02010113          	addi	sp,sp,32
    80006190:	00008067          	ret
        ret = cap - head + tail;
    80006194:	0004a703          	lw	a4,0(s1)
    80006198:	4127093b          	subw	s2,a4,s2
    8000619c:	00f9093b          	addw	s2,s2,a5
    800061a0:	fc1ff06f          	j	80006160 <_ZN6Buffer6getCntEv+0x44>

00000000800061a4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800061a4:	fe010113          	addi	sp,sp,-32
    800061a8:	00113c23          	sd	ra,24(sp)
    800061ac:	00813823          	sd	s0,16(sp)
    800061b0:	00913423          	sd	s1,8(sp)
    800061b4:	02010413          	addi	s0,sp,32
    800061b8:	00050493          	mv	s1,a0
    putc('\n');
    800061bc:	00a00513          	li	a0,10
    800061c0:	ffffb097          	auipc	ra,0xffffb
    800061c4:	250080e7          	jalr	592(ra) # 80001410 <_Z4putcc>
    printString("Buffer deleted!\n");
    800061c8:	00003517          	auipc	a0,0x3
    800061cc:	4f050513          	addi	a0,a0,1264 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800061d0:	ffffe097          	auipc	ra,0xffffe
    800061d4:	67c080e7          	jalr	1660(ra) # 8000484c <_Z11printStringPKc>
    while (getCnt() > 0) {
    800061d8:	00048513          	mv	a0,s1
    800061dc:	00000097          	auipc	ra,0x0
    800061e0:	f40080e7          	jalr	-192(ra) # 8000611c <_ZN6Buffer6getCntEv>
    800061e4:	02a05c63          	blez	a0,8000621c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800061e8:	0084b783          	ld	a5,8(s1)
    800061ec:	0104a703          	lw	a4,16(s1)
    800061f0:	00271713          	slli	a4,a4,0x2
    800061f4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800061f8:	0007c503          	lbu	a0,0(a5)
    800061fc:	ffffb097          	auipc	ra,0xffffb
    80006200:	214080e7          	jalr	532(ra) # 80001410 <_Z4putcc>
        head = (head + 1) % cap;
    80006204:	0104a783          	lw	a5,16(s1)
    80006208:	0017879b          	addiw	a5,a5,1
    8000620c:	0004a703          	lw	a4,0(s1)
    80006210:	02e7e7bb          	remw	a5,a5,a4
    80006214:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006218:	fc1ff06f          	j	800061d8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000621c:	02100513          	li	a0,33
    80006220:	ffffb097          	auipc	ra,0xffffb
    80006224:	1f0080e7          	jalr	496(ra) # 80001410 <_Z4putcc>
    putc('\n');
    80006228:	00a00513          	li	a0,10
    8000622c:	ffffb097          	auipc	ra,0xffffb
    80006230:	1e4080e7          	jalr	484(ra) # 80001410 <_Z4putcc>
    mem_free(buffer);
    80006234:	0084b503          	ld	a0,8(s1)
    80006238:	ffffb097          	auipc	ra,0xffffb
    8000623c:	f5c080e7          	jalr	-164(ra) # 80001194 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006240:	0204b503          	ld	a0,32(s1)
    80006244:	ffffb097          	auipc	ra,0xffffb
    80006248:	0bc080e7          	jalr	188(ra) # 80001300 <_Z9sem_closeP13SemaforKernel>
    sem_close(spaceAvailable);
    8000624c:	0184b503          	ld	a0,24(s1)
    80006250:	ffffb097          	auipc	ra,0xffffb
    80006254:	0b0080e7          	jalr	176(ra) # 80001300 <_Z9sem_closeP13SemaforKernel>
    sem_close(mutexTail);
    80006258:	0304b503          	ld	a0,48(s1)
    8000625c:	ffffb097          	auipc	ra,0xffffb
    80006260:	0a4080e7          	jalr	164(ra) # 80001300 <_Z9sem_closeP13SemaforKernel>
    sem_close(mutexHead);
    80006264:	0284b503          	ld	a0,40(s1)
    80006268:	ffffb097          	auipc	ra,0xffffb
    8000626c:	098080e7          	jalr	152(ra) # 80001300 <_Z9sem_closeP13SemaforKernel>
}
    80006270:	01813083          	ld	ra,24(sp)
    80006274:	01013403          	ld	s0,16(sp)
    80006278:	00813483          	ld	s1,8(sp)
    8000627c:	02010113          	addi	sp,sp,32
    80006280:	00008067          	ret

0000000080006284 <start>:
    80006284:	ff010113          	addi	sp,sp,-16
    80006288:	00813423          	sd	s0,8(sp)
    8000628c:	01010413          	addi	s0,sp,16
    80006290:	300027f3          	csrr	a5,mstatus
    80006294:	ffffe737          	lui	a4,0xffffe
    80006298:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1fdf>
    8000629c:	00e7f7b3          	and	a5,a5,a4
    800062a0:	00001737          	lui	a4,0x1
    800062a4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800062a8:	00e7e7b3          	or	a5,a5,a4
    800062ac:	30079073          	csrw	mstatus,a5
    800062b0:	00000797          	auipc	a5,0x0
    800062b4:	16078793          	addi	a5,a5,352 # 80006410 <system_main>
    800062b8:	34179073          	csrw	mepc,a5
    800062bc:	00000793          	li	a5,0
    800062c0:	18079073          	csrw	satp,a5
    800062c4:	000107b7          	lui	a5,0x10
    800062c8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800062cc:	30279073          	csrw	medeleg,a5
    800062d0:	30379073          	csrw	mideleg,a5
    800062d4:	104027f3          	csrr	a5,sie
    800062d8:	2227e793          	ori	a5,a5,546
    800062dc:	10479073          	csrw	sie,a5
    800062e0:	fff00793          	li	a5,-1
    800062e4:	00a7d793          	srli	a5,a5,0xa
    800062e8:	3b079073          	csrw	pmpaddr0,a5
    800062ec:	00f00793          	li	a5,15
    800062f0:	3a079073          	csrw	pmpcfg0,a5
    800062f4:	f14027f3          	csrr	a5,mhartid
    800062f8:	0200c737          	lui	a4,0x200c
    800062fc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006300:	0007869b          	sext.w	a3,a5
    80006304:	00269713          	slli	a4,a3,0x2
    80006308:	000f4637          	lui	a2,0xf4
    8000630c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006310:	00d70733          	add	a4,a4,a3
    80006314:	0037979b          	slliw	a5,a5,0x3
    80006318:	020046b7          	lui	a3,0x2004
    8000631c:	00d787b3          	add	a5,a5,a3
    80006320:	00c585b3          	add	a1,a1,a2
    80006324:	00371693          	slli	a3,a4,0x3
    80006328:	00005717          	auipc	a4,0x5
    8000632c:	29870713          	addi	a4,a4,664 # 8000b5c0 <timer_scratch>
    80006330:	00b7b023          	sd	a1,0(a5)
    80006334:	00d70733          	add	a4,a4,a3
    80006338:	00f73c23          	sd	a5,24(a4)
    8000633c:	02c73023          	sd	a2,32(a4)
    80006340:	34071073          	csrw	mscratch,a4
    80006344:	00000797          	auipc	a5,0x0
    80006348:	6ec78793          	addi	a5,a5,1772 # 80006a30 <timervec>
    8000634c:	30579073          	csrw	mtvec,a5
    80006350:	300027f3          	csrr	a5,mstatus
    80006354:	0087e793          	ori	a5,a5,8
    80006358:	30079073          	csrw	mstatus,a5
    8000635c:	304027f3          	csrr	a5,mie
    80006360:	0807e793          	ori	a5,a5,128
    80006364:	30479073          	csrw	mie,a5
    80006368:	f14027f3          	csrr	a5,mhartid
    8000636c:	0007879b          	sext.w	a5,a5
    80006370:	00078213          	mv	tp,a5
    80006374:	30200073          	mret
    80006378:	00813403          	ld	s0,8(sp)
    8000637c:	01010113          	addi	sp,sp,16
    80006380:	00008067          	ret

0000000080006384 <timerinit>:
    80006384:	ff010113          	addi	sp,sp,-16
    80006388:	00813423          	sd	s0,8(sp)
    8000638c:	01010413          	addi	s0,sp,16
    80006390:	f14027f3          	csrr	a5,mhartid
    80006394:	0200c737          	lui	a4,0x200c
    80006398:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000639c:	0007869b          	sext.w	a3,a5
    800063a0:	00269713          	slli	a4,a3,0x2
    800063a4:	000f4637          	lui	a2,0xf4
    800063a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800063ac:	00d70733          	add	a4,a4,a3
    800063b0:	0037979b          	slliw	a5,a5,0x3
    800063b4:	020046b7          	lui	a3,0x2004
    800063b8:	00d787b3          	add	a5,a5,a3
    800063bc:	00c585b3          	add	a1,a1,a2
    800063c0:	00371693          	slli	a3,a4,0x3
    800063c4:	00005717          	auipc	a4,0x5
    800063c8:	1fc70713          	addi	a4,a4,508 # 8000b5c0 <timer_scratch>
    800063cc:	00b7b023          	sd	a1,0(a5)
    800063d0:	00d70733          	add	a4,a4,a3
    800063d4:	00f73c23          	sd	a5,24(a4)
    800063d8:	02c73023          	sd	a2,32(a4)
    800063dc:	34071073          	csrw	mscratch,a4
    800063e0:	00000797          	auipc	a5,0x0
    800063e4:	65078793          	addi	a5,a5,1616 # 80006a30 <timervec>
    800063e8:	30579073          	csrw	mtvec,a5
    800063ec:	300027f3          	csrr	a5,mstatus
    800063f0:	0087e793          	ori	a5,a5,8
    800063f4:	30079073          	csrw	mstatus,a5
    800063f8:	304027f3          	csrr	a5,mie
    800063fc:	0807e793          	ori	a5,a5,128
    80006400:	30479073          	csrw	mie,a5
    80006404:	00813403          	ld	s0,8(sp)
    80006408:	01010113          	addi	sp,sp,16
    8000640c:	00008067          	ret

0000000080006410 <system_main>:
    80006410:	fe010113          	addi	sp,sp,-32
    80006414:	00813823          	sd	s0,16(sp)
    80006418:	00913423          	sd	s1,8(sp)
    8000641c:	00113c23          	sd	ra,24(sp)
    80006420:	02010413          	addi	s0,sp,32
    80006424:	00000097          	auipc	ra,0x0
    80006428:	0c4080e7          	jalr	196(ra) # 800064e8 <cpuid>
    8000642c:	00005497          	auipc	s1,0x5
    80006430:	0e448493          	addi	s1,s1,228 # 8000b510 <started>
    80006434:	02050263          	beqz	a0,80006458 <system_main+0x48>
    80006438:	0004a783          	lw	a5,0(s1)
    8000643c:	0007879b          	sext.w	a5,a5
    80006440:	fe078ce3          	beqz	a5,80006438 <system_main+0x28>
    80006444:	0ff0000f          	fence
    80006448:	00003517          	auipc	a0,0x3
    8000644c:	33050513          	addi	a0,a0,816 # 80009778 <CONSOLE_STATUS+0x768>
    80006450:	00001097          	auipc	ra,0x1
    80006454:	a7c080e7          	jalr	-1412(ra) # 80006ecc <panic>
    80006458:	00001097          	auipc	ra,0x1
    8000645c:	9d0080e7          	jalr	-1584(ra) # 80006e28 <consoleinit>
    80006460:	00001097          	auipc	ra,0x1
    80006464:	15c080e7          	jalr	348(ra) # 800075bc <printfinit>
    80006468:	00003517          	auipc	a0,0x3
    8000646c:	d5850513          	addi	a0,a0,-680 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80006470:	00001097          	auipc	ra,0x1
    80006474:	ab8080e7          	jalr	-1352(ra) # 80006f28 <__printf>
    80006478:	00003517          	auipc	a0,0x3
    8000647c:	2d050513          	addi	a0,a0,720 # 80009748 <CONSOLE_STATUS+0x738>
    80006480:	00001097          	auipc	ra,0x1
    80006484:	aa8080e7          	jalr	-1368(ra) # 80006f28 <__printf>
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	d3850513          	addi	a0,a0,-712 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80006490:	00001097          	auipc	ra,0x1
    80006494:	a98080e7          	jalr	-1384(ra) # 80006f28 <__printf>
    80006498:	00001097          	auipc	ra,0x1
    8000649c:	4b0080e7          	jalr	1200(ra) # 80007948 <kinit>
    800064a0:	00000097          	auipc	ra,0x0
    800064a4:	148080e7          	jalr	328(ra) # 800065e8 <trapinit>
    800064a8:	00000097          	auipc	ra,0x0
    800064ac:	16c080e7          	jalr	364(ra) # 80006614 <trapinithart>
    800064b0:	00000097          	auipc	ra,0x0
    800064b4:	5c0080e7          	jalr	1472(ra) # 80006a70 <plicinit>
    800064b8:	00000097          	auipc	ra,0x0
    800064bc:	5e0080e7          	jalr	1504(ra) # 80006a98 <plicinithart>
    800064c0:	00000097          	auipc	ra,0x0
    800064c4:	078080e7          	jalr	120(ra) # 80006538 <userinit>
    800064c8:	0ff0000f          	fence
    800064cc:	00100793          	li	a5,1
    800064d0:	00003517          	auipc	a0,0x3
    800064d4:	29050513          	addi	a0,a0,656 # 80009760 <CONSOLE_STATUS+0x750>
    800064d8:	00f4a023          	sw	a5,0(s1)
    800064dc:	00001097          	auipc	ra,0x1
    800064e0:	a4c080e7          	jalr	-1460(ra) # 80006f28 <__printf>
    800064e4:	0000006f          	j	800064e4 <system_main+0xd4>

00000000800064e8 <cpuid>:
    800064e8:	ff010113          	addi	sp,sp,-16
    800064ec:	00813423          	sd	s0,8(sp)
    800064f0:	01010413          	addi	s0,sp,16
    800064f4:	00020513          	mv	a0,tp
    800064f8:	00813403          	ld	s0,8(sp)
    800064fc:	0005051b          	sext.w	a0,a0
    80006500:	01010113          	addi	sp,sp,16
    80006504:	00008067          	ret

0000000080006508 <mycpu>:
    80006508:	ff010113          	addi	sp,sp,-16
    8000650c:	00813423          	sd	s0,8(sp)
    80006510:	01010413          	addi	s0,sp,16
    80006514:	00020793          	mv	a5,tp
    80006518:	00813403          	ld	s0,8(sp)
    8000651c:	0007879b          	sext.w	a5,a5
    80006520:	00779793          	slli	a5,a5,0x7
    80006524:	00006517          	auipc	a0,0x6
    80006528:	0cc50513          	addi	a0,a0,204 # 8000c5f0 <cpus>
    8000652c:	00f50533          	add	a0,a0,a5
    80006530:	01010113          	addi	sp,sp,16
    80006534:	00008067          	ret

0000000080006538 <userinit>:
    80006538:	ff010113          	addi	sp,sp,-16
    8000653c:	00813423          	sd	s0,8(sp)
    80006540:	01010413          	addi	s0,sp,16
    80006544:	00813403          	ld	s0,8(sp)
    80006548:	01010113          	addi	sp,sp,16
    8000654c:	ffffb317          	auipc	t1,0xffffb
    80006550:	2cc30067          	jr	716(t1) # 80001818 <main>

0000000080006554 <either_copyout>:
    80006554:	ff010113          	addi	sp,sp,-16
    80006558:	00813023          	sd	s0,0(sp)
    8000655c:	00113423          	sd	ra,8(sp)
    80006560:	01010413          	addi	s0,sp,16
    80006564:	02051663          	bnez	a0,80006590 <either_copyout+0x3c>
    80006568:	00058513          	mv	a0,a1
    8000656c:	00060593          	mv	a1,a2
    80006570:	0006861b          	sext.w	a2,a3
    80006574:	00002097          	auipc	ra,0x2
    80006578:	c60080e7          	jalr	-928(ra) # 800081d4 <__memmove>
    8000657c:	00813083          	ld	ra,8(sp)
    80006580:	00013403          	ld	s0,0(sp)
    80006584:	00000513          	li	a0,0
    80006588:	01010113          	addi	sp,sp,16
    8000658c:	00008067          	ret
    80006590:	00003517          	auipc	a0,0x3
    80006594:	21050513          	addi	a0,a0,528 # 800097a0 <CONSOLE_STATUS+0x790>
    80006598:	00001097          	auipc	ra,0x1
    8000659c:	934080e7          	jalr	-1740(ra) # 80006ecc <panic>

00000000800065a0 <either_copyin>:
    800065a0:	ff010113          	addi	sp,sp,-16
    800065a4:	00813023          	sd	s0,0(sp)
    800065a8:	00113423          	sd	ra,8(sp)
    800065ac:	01010413          	addi	s0,sp,16
    800065b0:	02059463          	bnez	a1,800065d8 <either_copyin+0x38>
    800065b4:	00060593          	mv	a1,a2
    800065b8:	0006861b          	sext.w	a2,a3
    800065bc:	00002097          	auipc	ra,0x2
    800065c0:	c18080e7          	jalr	-1000(ra) # 800081d4 <__memmove>
    800065c4:	00813083          	ld	ra,8(sp)
    800065c8:	00013403          	ld	s0,0(sp)
    800065cc:	00000513          	li	a0,0
    800065d0:	01010113          	addi	sp,sp,16
    800065d4:	00008067          	ret
    800065d8:	00003517          	auipc	a0,0x3
    800065dc:	1f050513          	addi	a0,a0,496 # 800097c8 <CONSOLE_STATUS+0x7b8>
    800065e0:	00001097          	auipc	ra,0x1
    800065e4:	8ec080e7          	jalr	-1812(ra) # 80006ecc <panic>

00000000800065e8 <trapinit>:
    800065e8:	ff010113          	addi	sp,sp,-16
    800065ec:	00813423          	sd	s0,8(sp)
    800065f0:	01010413          	addi	s0,sp,16
    800065f4:	00813403          	ld	s0,8(sp)
    800065f8:	00003597          	auipc	a1,0x3
    800065fc:	1f858593          	addi	a1,a1,504 # 800097f0 <CONSOLE_STATUS+0x7e0>
    80006600:	00006517          	auipc	a0,0x6
    80006604:	07050513          	addi	a0,a0,112 # 8000c670 <tickslock>
    80006608:	01010113          	addi	sp,sp,16
    8000660c:	00001317          	auipc	t1,0x1
    80006610:	5cc30067          	jr	1484(t1) # 80007bd8 <initlock>

0000000080006614 <trapinithart>:
    80006614:	ff010113          	addi	sp,sp,-16
    80006618:	00813423          	sd	s0,8(sp)
    8000661c:	01010413          	addi	s0,sp,16
    80006620:	00000797          	auipc	a5,0x0
    80006624:	30078793          	addi	a5,a5,768 # 80006920 <kernelvec>
    80006628:	10579073          	csrw	stvec,a5
    8000662c:	00813403          	ld	s0,8(sp)
    80006630:	01010113          	addi	sp,sp,16
    80006634:	00008067          	ret

0000000080006638 <usertrap>:
    80006638:	ff010113          	addi	sp,sp,-16
    8000663c:	00813423          	sd	s0,8(sp)
    80006640:	01010413          	addi	s0,sp,16
    80006644:	00813403          	ld	s0,8(sp)
    80006648:	01010113          	addi	sp,sp,16
    8000664c:	00008067          	ret

0000000080006650 <usertrapret>:
    80006650:	ff010113          	addi	sp,sp,-16
    80006654:	00813423          	sd	s0,8(sp)
    80006658:	01010413          	addi	s0,sp,16
    8000665c:	00813403          	ld	s0,8(sp)
    80006660:	01010113          	addi	sp,sp,16
    80006664:	00008067          	ret

0000000080006668 <kerneltrap>:
    80006668:	fe010113          	addi	sp,sp,-32
    8000666c:	00813823          	sd	s0,16(sp)
    80006670:	00113c23          	sd	ra,24(sp)
    80006674:	00913423          	sd	s1,8(sp)
    80006678:	02010413          	addi	s0,sp,32
    8000667c:	142025f3          	csrr	a1,scause
    80006680:	100027f3          	csrr	a5,sstatus
    80006684:	0027f793          	andi	a5,a5,2
    80006688:	10079c63          	bnez	a5,800067a0 <kerneltrap+0x138>
    8000668c:	142027f3          	csrr	a5,scause
    80006690:	0207ce63          	bltz	a5,800066cc <kerneltrap+0x64>
    80006694:	00003517          	auipc	a0,0x3
    80006698:	1a450513          	addi	a0,a0,420 # 80009838 <CONSOLE_STATUS+0x828>
    8000669c:	00001097          	auipc	ra,0x1
    800066a0:	88c080e7          	jalr	-1908(ra) # 80006f28 <__printf>
    800066a4:	141025f3          	csrr	a1,sepc
    800066a8:	14302673          	csrr	a2,stval
    800066ac:	00003517          	auipc	a0,0x3
    800066b0:	19c50513          	addi	a0,a0,412 # 80009848 <CONSOLE_STATUS+0x838>
    800066b4:	00001097          	auipc	ra,0x1
    800066b8:	874080e7          	jalr	-1932(ra) # 80006f28 <__printf>
    800066bc:	00003517          	auipc	a0,0x3
    800066c0:	1a450513          	addi	a0,a0,420 # 80009860 <CONSOLE_STATUS+0x850>
    800066c4:	00001097          	auipc	ra,0x1
    800066c8:	808080e7          	jalr	-2040(ra) # 80006ecc <panic>
    800066cc:	0ff7f713          	andi	a4,a5,255
    800066d0:	00900693          	li	a3,9
    800066d4:	04d70063          	beq	a4,a3,80006714 <kerneltrap+0xac>
    800066d8:	fff00713          	li	a4,-1
    800066dc:	03f71713          	slli	a4,a4,0x3f
    800066e0:	00170713          	addi	a4,a4,1
    800066e4:	fae798e3          	bne	a5,a4,80006694 <kerneltrap+0x2c>
    800066e8:	00000097          	auipc	ra,0x0
    800066ec:	e00080e7          	jalr	-512(ra) # 800064e8 <cpuid>
    800066f0:	06050663          	beqz	a0,8000675c <kerneltrap+0xf4>
    800066f4:	144027f3          	csrr	a5,sip
    800066f8:	ffd7f793          	andi	a5,a5,-3
    800066fc:	14479073          	csrw	sip,a5
    80006700:	01813083          	ld	ra,24(sp)
    80006704:	01013403          	ld	s0,16(sp)
    80006708:	00813483          	ld	s1,8(sp)
    8000670c:	02010113          	addi	sp,sp,32
    80006710:	00008067          	ret
    80006714:	00000097          	auipc	ra,0x0
    80006718:	3d0080e7          	jalr	976(ra) # 80006ae4 <plic_claim>
    8000671c:	00a00793          	li	a5,10
    80006720:	00050493          	mv	s1,a0
    80006724:	06f50863          	beq	a0,a5,80006794 <kerneltrap+0x12c>
    80006728:	fc050ce3          	beqz	a0,80006700 <kerneltrap+0x98>
    8000672c:	00050593          	mv	a1,a0
    80006730:	00003517          	auipc	a0,0x3
    80006734:	0e850513          	addi	a0,a0,232 # 80009818 <CONSOLE_STATUS+0x808>
    80006738:	00000097          	auipc	ra,0x0
    8000673c:	7f0080e7          	jalr	2032(ra) # 80006f28 <__printf>
    80006740:	01013403          	ld	s0,16(sp)
    80006744:	01813083          	ld	ra,24(sp)
    80006748:	00048513          	mv	a0,s1
    8000674c:	00813483          	ld	s1,8(sp)
    80006750:	02010113          	addi	sp,sp,32
    80006754:	00000317          	auipc	t1,0x0
    80006758:	3c830067          	jr	968(t1) # 80006b1c <plic_complete>
    8000675c:	00006517          	auipc	a0,0x6
    80006760:	f1450513          	addi	a0,a0,-236 # 8000c670 <tickslock>
    80006764:	00001097          	auipc	ra,0x1
    80006768:	498080e7          	jalr	1176(ra) # 80007bfc <acquire>
    8000676c:	00005717          	auipc	a4,0x5
    80006770:	da870713          	addi	a4,a4,-600 # 8000b514 <ticks>
    80006774:	00072783          	lw	a5,0(a4)
    80006778:	00006517          	auipc	a0,0x6
    8000677c:	ef850513          	addi	a0,a0,-264 # 8000c670 <tickslock>
    80006780:	0017879b          	addiw	a5,a5,1
    80006784:	00f72023          	sw	a5,0(a4)
    80006788:	00001097          	auipc	ra,0x1
    8000678c:	540080e7          	jalr	1344(ra) # 80007cc8 <release>
    80006790:	f65ff06f          	j	800066f4 <kerneltrap+0x8c>
    80006794:	00001097          	auipc	ra,0x1
    80006798:	09c080e7          	jalr	156(ra) # 80007830 <uartintr>
    8000679c:	fa5ff06f          	j	80006740 <kerneltrap+0xd8>
    800067a0:	00003517          	auipc	a0,0x3
    800067a4:	05850513          	addi	a0,a0,88 # 800097f8 <CONSOLE_STATUS+0x7e8>
    800067a8:	00000097          	auipc	ra,0x0
    800067ac:	724080e7          	jalr	1828(ra) # 80006ecc <panic>

00000000800067b0 <clockintr>:
    800067b0:	fe010113          	addi	sp,sp,-32
    800067b4:	00813823          	sd	s0,16(sp)
    800067b8:	00913423          	sd	s1,8(sp)
    800067bc:	00113c23          	sd	ra,24(sp)
    800067c0:	02010413          	addi	s0,sp,32
    800067c4:	00006497          	auipc	s1,0x6
    800067c8:	eac48493          	addi	s1,s1,-340 # 8000c670 <tickslock>
    800067cc:	00048513          	mv	a0,s1
    800067d0:	00001097          	auipc	ra,0x1
    800067d4:	42c080e7          	jalr	1068(ra) # 80007bfc <acquire>
    800067d8:	00005717          	auipc	a4,0x5
    800067dc:	d3c70713          	addi	a4,a4,-708 # 8000b514 <ticks>
    800067e0:	00072783          	lw	a5,0(a4)
    800067e4:	01013403          	ld	s0,16(sp)
    800067e8:	01813083          	ld	ra,24(sp)
    800067ec:	00048513          	mv	a0,s1
    800067f0:	0017879b          	addiw	a5,a5,1
    800067f4:	00813483          	ld	s1,8(sp)
    800067f8:	00f72023          	sw	a5,0(a4)
    800067fc:	02010113          	addi	sp,sp,32
    80006800:	00001317          	auipc	t1,0x1
    80006804:	4c830067          	jr	1224(t1) # 80007cc8 <release>

0000000080006808 <devintr>:
    80006808:	142027f3          	csrr	a5,scause
    8000680c:	00000513          	li	a0,0
    80006810:	0007c463          	bltz	a5,80006818 <devintr+0x10>
    80006814:	00008067          	ret
    80006818:	fe010113          	addi	sp,sp,-32
    8000681c:	00813823          	sd	s0,16(sp)
    80006820:	00113c23          	sd	ra,24(sp)
    80006824:	00913423          	sd	s1,8(sp)
    80006828:	02010413          	addi	s0,sp,32
    8000682c:	0ff7f713          	andi	a4,a5,255
    80006830:	00900693          	li	a3,9
    80006834:	04d70c63          	beq	a4,a3,8000688c <devintr+0x84>
    80006838:	fff00713          	li	a4,-1
    8000683c:	03f71713          	slli	a4,a4,0x3f
    80006840:	00170713          	addi	a4,a4,1
    80006844:	00e78c63          	beq	a5,a4,8000685c <devintr+0x54>
    80006848:	01813083          	ld	ra,24(sp)
    8000684c:	01013403          	ld	s0,16(sp)
    80006850:	00813483          	ld	s1,8(sp)
    80006854:	02010113          	addi	sp,sp,32
    80006858:	00008067          	ret
    8000685c:	00000097          	auipc	ra,0x0
    80006860:	c8c080e7          	jalr	-884(ra) # 800064e8 <cpuid>
    80006864:	06050663          	beqz	a0,800068d0 <devintr+0xc8>
    80006868:	144027f3          	csrr	a5,sip
    8000686c:	ffd7f793          	andi	a5,a5,-3
    80006870:	14479073          	csrw	sip,a5
    80006874:	01813083          	ld	ra,24(sp)
    80006878:	01013403          	ld	s0,16(sp)
    8000687c:	00813483          	ld	s1,8(sp)
    80006880:	00200513          	li	a0,2
    80006884:	02010113          	addi	sp,sp,32
    80006888:	00008067          	ret
    8000688c:	00000097          	auipc	ra,0x0
    80006890:	258080e7          	jalr	600(ra) # 80006ae4 <plic_claim>
    80006894:	00a00793          	li	a5,10
    80006898:	00050493          	mv	s1,a0
    8000689c:	06f50663          	beq	a0,a5,80006908 <devintr+0x100>
    800068a0:	00100513          	li	a0,1
    800068a4:	fa0482e3          	beqz	s1,80006848 <devintr+0x40>
    800068a8:	00048593          	mv	a1,s1
    800068ac:	00003517          	auipc	a0,0x3
    800068b0:	f6c50513          	addi	a0,a0,-148 # 80009818 <CONSOLE_STATUS+0x808>
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	674080e7          	jalr	1652(ra) # 80006f28 <__printf>
    800068bc:	00048513          	mv	a0,s1
    800068c0:	00000097          	auipc	ra,0x0
    800068c4:	25c080e7          	jalr	604(ra) # 80006b1c <plic_complete>
    800068c8:	00100513          	li	a0,1
    800068cc:	f7dff06f          	j	80006848 <devintr+0x40>
    800068d0:	00006517          	auipc	a0,0x6
    800068d4:	da050513          	addi	a0,a0,-608 # 8000c670 <tickslock>
    800068d8:	00001097          	auipc	ra,0x1
    800068dc:	324080e7          	jalr	804(ra) # 80007bfc <acquire>
    800068e0:	00005717          	auipc	a4,0x5
    800068e4:	c3470713          	addi	a4,a4,-972 # 8000b514 <ticks>
    800068e8:	00072783          	lw	a5,0(a4)
    800068ec:	00006517          	auipc	a0,0x6
    800068f0:	d8450513          	addi	a0,a0,-636 # 8000c670 <tickslock>
    800068f4:	0017879b          	addiw	a5,a5,1
    800068f8:	00f72023          	sw	a5,0(a4)
    800068fc:	00001097          	auipc	ra,0x1
    80006900:	3cc080e7          	jalr	972(ra) # 80007cc8 <release>
    80006904:	f65ff06f          	j	80006868 <devintr+0x60>
    80006908:	00001097          	auipc	ra,0x1
    8000690c:	f28080e7          	jalr	-216(ra) # 80007830 <uartintr>
    80006910:	fadff06f          	j	800068bc <devintr+0xb4>
	...

0000000080006920 <kernelvec>:
    80006920:	f0010113          	addi	sp,sp,-256
    80006924:	00113023          	sd	ra,0(sp)
    80006928:	00213423          	sd	sp,8(sp)
    8000692c:	00313823          	sd	gp,16(sp)
    80006930:	00413c23          	sd	tp,24(sp)
    80006934:	02513023          	sd	t0,32(sp)
    80006938:	02613423          	sd	t1,40(sp)
    8000693c:	02713823          	sd	t2,48(sp)
    80006940:	02813c23          	sd	s0,56(sp)
    80006944:	04913023          	sd	s1,64(sp)
    80006948:	04a13423          	sd	a0,72(sp)
    8000694c:	04b13823          	sd	a1,80(sp)
    80006950:	04c13c23          	sd	a2,88(sp)
    80006954:	06d13023          	sd	a3,96(sp)
    80006958:	06e13423          	sd	a4,104(sp)
    8000695c:	06f13823          	sd	a5,112(sp)
    80006960:	07013c23          	sd	a6,120(sp)
    80006964:	09113023          	sd	a7,128(sp)
    80006968:	09213423          	sd	s2,136(sp)
    8000696c:	09313823          	sd	s3,144(sp)
    80006970:	09413c23          	sd	s4,152(sp)
    80006974:	0b513023          	sd	s5,160(sp)
    80006978:	0b613423          	sd	s6,168(sp)
    8000697c:	0b713823          	sd	s7,176(sp)
    80006980:	0b813c23          	sd	s8,184(sp)
    80006984:	0d913023          	sd	s9,192(sp)
    80006988:	0da13423          	sd	s10,200(sp)
    8000698c:	0db13823          	sd	s11,208(sp)
    80006990:	0dc13c23          	sd	t3,216(sp)
    80006994:	0fd13023          	sd	t4,224(sp)
    80006998:	0fe13423          	sd	t5,232(sp)
    8000699c:	0ff13823          	sd	t6,240(sp)
    800069a0:	cc9ff0ef          	jal	ra,80006668 <kerneltrap>
    800069a4:	00013083          	ld	ra,0(sp)
    800069a8:	00813103          	ld	sp,8(sp)
    800069ac:	01013183          	ld	gp,16(sp)
    800069b0:	02013283          	ld	t0,32(sp)
    800069b4:	02813303          	ld	t1,40(sp)
    800069b8:	03013383          	ld	t2,48(sp)
    800069bc:	03813403          	ld	s0,56(sp)
    800069c0:	04013483          	ld	s1,64(sp)
    800069c4:	04813503          	ld	a0,72(sp)
    800069c8:	05013583          	ld	a1,80(sp)
    800069cc:	05813603          	ld	a2,88(sp)
    800069d0:	06013683          	ld	a3,96(sp)
    800069d4:	06813703          	ld	a4,104(sp)
    800069d8:	07013783          	ld	a5,112(sp)
    800069dc:	07813803          	ld	a6,120(sp)
    800069e0:	08013883          	ld	a7,128(sp)
    800069e4:	08813903          	ld	s2,136(sp)
    800069e8:	09013983          	ld	s3,144(sp)
    800069ec:	09813a03          	ld	s4,152(sp)
    800069f0:	0a013a83          	ld	s5,160(sp)
    800069f4:	0a813b03          	ld	s6,168(sp)
    800069f8:	0b013b83          	ld	s7,176(sp)
    800069fc:	0b813c03          	ld	s8,184(sp)
    80006a00:	0c013c83          	ld	s9,192(sp)
    80006a04:	0c813d03          	ld	s10,200(sp)
    80006a08:	0d013d83          	ld	s11,208(sp)
    80006a0c:	0d813e03          	ld	t3,216(sp)
    80006a10:	0e013e83          	ld	t4,224(sp)
    80006a14:	0e813f03          	ld	t5,232(sp)
    80006a18:	0f013f83          	ld	t6,240(sp)
    80006a1c:	10010113          	addi	sp,sp,256
    80006a20:	10200073          	sret
    80006a24:	00000013          	nop
    80006a28:	00000013          	nop
    80006a2c:	00000013          	nop

0000000080006a30 <timervec>:
    80006a30:	34051573          	csrrw	a0,mscratch,a0
    80006a34:	00b53023          	sd	a1,0(a0)
    80006a38:	00c53423          	sd	a2,8(a0)
    80006a3c:	00d53823          	sd	a3,16(a0)
    80006a40:	01853583          	ld	a1,24(a0)
    80006a44:	02053603          	ld	a2,32(a0)
    80006a48:	0005b683          	ld	a3,0(a1)
    80006a4c:	00c686b3          	add	a3,a3,a2
    80006a50:	00d5b023          	sd	a3,0(a1)
    80006a54:	00200593          	li	a1,2
    80006a58:	14459073          	csrw	sip,a1
    80006a5c:	01053683          	ld	a3,16(a0)
    80006a60:	00853603          	ld	a2,8(a0)
    80006a64:	00053583          	ld	a1,0(a0)
    80006a68:	34051573          	csrrw	a0,mscratch,a0
    80006a6c:	30200073          	mret

0000000080006a70 <plicinit>:
    80006a70:	ff010113          	addi	sp,sp,-16
    80006a74:	00813423          	sd	s0,8(sp)
    80006a78:	01010413          	addi	s0,sp,16
    80006a7c:	00813403          	ld	s0,8(sp)
    80006a80:	0c0007b7          	lui	a5,0xc000
    80006a84:	00100713          	li	a4,1
    80006a88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006a8c:	00e7a223          	sw	a4,4(a5)
    80006a90:	01010113          	addi	sp,sp,16
    80006a94:	00008067          	ret

0000000080006a98 <plicinithart>:
    80006a98:	ff010113          	addi	sp,sp,-16
    80006a9c:	00813023          	sd	s0,0(sp)
    80006aa0:	00113423          	sd	ra,8(sp)
    80006aa4:	01010413          	addi	s0,sp,16
    80006aa8:	00000097          	auipc	ra,0x0
    80006aac:	a40080e7          	jalr	-1472(ra) # 800064e8 <cpuid>
    80006ab0:	0085171b          	slliw	a4,a0,0x8
    80006ab4:	0c0027b7          	lui	a5,0xc002
    80006ab8:	00e787b3          	add	a5,a5,a4
    80006abc:	40200713          	li	a4,1026
    80006ac0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ac4:	00813083          	ld	ra,8(sp)
    80006ac8:	00013403          	ld	s0,0(sp)
    80006acc:	00d5151b          	slliw	a0,a0,0xd
    80006ad0:	0c2017b7          	lui	a5,0xc201
    80006ad4:	00a78533          	add	a0,a5,a0
    80006ad8:	00052023          	sw	zero,0(a0)
    80006adc:	01010113          	addi	sp,sp,16
    80006ae0:	00008067          	ret

0000000080006ae4 <plic_claim>:
    80006ae4:	ff010113          	addi	sp,sp,-16
    80006ae8:	00813023          	sd	s0,0(sp)
    80006aec:	00113423          	sd	ra,8(sp)
    80006af0:	01010413          	addi	s0,sp,16
    80006af4:	00000097          	auipc	ra,0x0
    80006af8:	9f4080e7          	jalr	-1548(ra) # 800064e8 <cpuid>
    80006afc:	00813083          	ld	ra,8(sp)
    80006b00:	00013403          	ld	s0,0(sp)
    80006b04:	00d5151b          	slliw	a0,a0,0xd
    80006b08:	0c2017b7          	lui	a5,0xc201
    80006b0c:	00a78533          	add	a0,a5,a0
    80006b10:	00452503          	lw	a0,4(a0)
    80006b14:	01010113          	addi	sp,sp,16
    80006b18:	00008067          	ret

0000000080006b1c <plic_complete>:
    80006b1c:	fe010113          	addi	sp,sp,-32
    80006b20:	00813823          	sd	s0,16(sp)
    80006b24:	00913423          	sd	s1,8(sp)
    80006b28:	00113c23          	sd	ra,24(sp)
    80006b2c:	02010413          	addi	s0,sp,32
    80006b30:	00050493          	mv	s1,a0
    80006b34:	00000097          	auipc	ra,0x0
    80006b38:	9b4080e7          	jalr	-1612(ra) # 800064e8 <cpuid>
    80006b3c:	01813083          	ld	ra,24(sp)
    80006b40:	01013403          	ld	s0,16(sp)
    80006b44:	00d5179b          	slliw	a5,a0,0xd
    80006b48:	0c201737          	lui	a4,0xc201
    80006b4c:	00f707b3          	add	a5,a4,a5
    80006b50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006b54:	00813483          	ld	s1,8(sp)
    80006b58:	02010113          	addi	sp,sp,32
    80006b5c:	00008067          	ret

0000000080006b60 <consolewrite>:
    80006b60:	fb010113          	addi	sp,sp,-80
    80006b64:	04813023          	sd	s0,64(sp)
    80006b68:	04113423          	sd	ra,72(sp)
    80006b6c:	02913c23          	sd	s1,56(sp)
    80006b70:	03213823          	sd	s2,48(sp)
    80006b74:	03313423          	sd	s3,40(sp)
    80006b78:	03413023          	sd	s4,32(sp)
    80006b7c:	01513c23          	sd	s5,24(sp)
    80006b80:	05010413          	addi	s0,sp,80
    80006b84:	06c05c63          	blez	a2,80006bfc <consolewrite+0x9c>
    80006b88:	00060993          	mv	s3,a2
    80006b8c:	00050a13          	mv	s4,a0
    80006b90:	00058493          	mv	s1,a1
    80006b94:	00000913          	li	s2,0
    80006b98:	fff00a93          	li	s5,-1
    80006b9c:	01c0006f          	j	80006bb8 <consolewrite+0x58>
    80006ba0:	fbf44503          	lbu	a0,-65(s0)
    80006ba4:	0019091b          	addiw	s2,s2,1
    80006ba8:	00148493          	addi	s1,s1,1
    80006bac:	00001097          	auipc	ra,0x1
    80006bb0:	a9c080e7          	jalr	-1380(ra) # 80007648 <uartputc>
    80006bb4:	03298063          	beq	s3,s2,80006bd4 <consolewrite+0x74>
    80006bb8:	00048613          	mv	a2,s1
    80006bbc:	00100693          	li	a3,1
    80006bc0:	000a0593          	mv	a1,s4
    80006bc4:	fbf40513          	addi	a0,s0,-65
    80006bc8:	00000097          	auipc	ra,0x0
    80006bcc:	9d8080e7          	jalr	-1576(ra) # 800065a0 <either_copyin>
    80006bd0:	fd5518e3          	bne	a0,s5,80006ba0 <consolewrite+0x40>
    80006bd4:	04813083          	ld	ra,72(sp)
    80006bd8:	04013403          	ld	s0,64(sp)
    80006bdc:	03813483          	ld	s1,56(sp)
    80006be0:	02813983          	ld	s3,40(sp)
    80006be4:	02013a03          	ld	s4,32(sp)
    80006be8:	01813a83          	ld	s5,24(sp)
    80006bec:	00090513          	mv	a0,s2
    80006bf0:	03013903          	ld	s2,48(sp)
    80006bf4:	05010113          	addi	sp,sp,80
    80006bf8:	00008067          	ret
    80006bfc:	00000913          	li	s2,0
    80006c00:	fd5ff06f          	j	80006bd4 <consolewrite+0x74>

0000000080006c04 <consoleread>:
    80006c04:	f9010113          	addi	sp,sp,-112
    80006c08:	06813023          	sd	s0,96(sp)
    80006c0c:	04913c23          	sd	s1,88(sp)
    80006c10:	05213823          	sd	s2,80(sp)
    80006c14:	05313423          	sd	s3,72(sp)
    80006c18:	05413023          	sd	s4,64(sp)
    80006c1c:	03513c23          	sd	s5,56(sp)
    80006c20:	03613823          	sd	s6,48(sp)
    80006c24:	03713423          	sd	s7,40(sp)
    80006c28:	03813023          	sd	s8,32(sp)
    80006c2c:	06113423          	sd	ra,104(sp)
    80006c30:	01913c23          	sd	s9,24(sp)
    80006c34:	07010413          	addi	s0,sp,112
    80006c38:	00060b93          	mv	s7,a2
    80006c3c:	00050913          	mv	s2,a0
    80006c40:	00058c13          	mv	s8,a1
    80006c44:	00060b1b          	sext.w	s6,a2
    80006c48:	00006497          	auipc	s1,0x6
    80006c4c:	a5048493          	addi	s1,s1,-1456 # 8000c698 <cons>
    80006c50:	00400993          	li	s3,4
    80006c54:	fff00a13          	li	s4,-1
    80006c58:	00a00a93          	li	s5,10
    80006c5c:	05705e63          	blez	s7,80006cb8 <consoleread+0xb4>
    80006c60:	09c4a703          	lw	a4,156(s1)
    80006c64:	0984a783          	lw	a5,152(s1)
    80006c68:	0007071b          	sext.w	a4,a4
    80006c6c:	08e78463          	beq	a5,a4,80006cf4 <consoleread+0xf0>
    80006c70:	07f7f713          	andi	a4,a5,127
    80006c74:	00e48733          	add	a4,s1,a4
    80006c78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006c7c:	0017869b          	addiw	a3,a5,1
    80006c80:	08d4ac23          	sw	a3,152(s1)
    80006c84:	00070c9b          	sext.w	s9,a4
    80006c88:	0b370663          	beq	a4,s3,80006d34 <consoleread+0x130>
    80006c8c:	00100693          	li	a3,1
    80006c90:	f9f40613          	addi	a2,s0,-97
    80006c94:	000c0593          	mv	a1,s8
    80006c98:	00090513          	mv	a0,s2
    80006c9c:	f8e40fa3          	sb	a4,-97(s0)
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	8b4080e7          	jalr	-1868(ra) # 80006554 <either_copyout>
    80006ca8:	01450863          	beq	a0,s4,80006cb8 <consoleread+0xb4>
    80006cac:	001c0c13          	addi	s8,s8,1
    80006cb0:	fffb8b9b          	addiw	s7,s7,-1
    80006cb4:	fb5c94e3          	bne	s9,s5,80006c5c <consoleread+0x58>
    80006cb8:	000b851b          	sext.w	a0,s7
    80006cbc:	06813083          	ld	ra,104(sp)
    80006cc0:	06013403          	ld	s0,96(sp)
    80006cc4:	05813483          	ld	s1,88(sp)
    80006cc8:	05013903          	ld	s2,80(sp)
    80006ccc:	04813983          	ld	s3,72(sp)
    80006cd0:	04013a03          	ld	s4,64(sp)
    80006cd4:	03813a83          	ld	s5,56(sp)
    80006cd8:	02813b83          	ld	s7,40(sp)
    80006cdc:	02013c03          	ld	s8,32(sp)
    80006ce0:	01813c83          	ld	s9,24(sp)
    80006ce4:	40ab053b          	subw	a0,s6,a0
    80006ce8:	03013b03          	ld	s6,48(sp)
    80006cec:	07010113          	addi	sp,sp,112
    80006cf0:	00008067          	ret
    80006cf4:	00001097          	auipc	ra,0x1
    80006cf8:	1d8080e7          	jalr	472(ra) # 80007ecc <push_on>
    80006cfc:	0984a703          	lw	a4,152(s1)
    80006d00:	09c4a783          	lw	a5,156(s1)
    80006d04:	0007879b          	sext.w	a5,a5
    80006d08:	fef70ce3          	beq	a4,a5,80006d00 <consoleread+0xfc>
    80006d0c:	00001097          	auipc	ra,0x1
    80006d10:	234080e7          	jalr	564(ra) # 80007f40 <pop_on>
    80006d14:	0984a783          	lw	a5,152(s1)
    80006d18:	07f7f713          	andi	a4,a5,127
    80006d1c:	00e48733          	add	a4,s1,a4
    80006d20:	01874703          	lbu	a4,24(a4)
    80006d24:	0017869b          	addiw	a3,a5,1
    80006d28:	08d4ac23          	sw	a3,152(s1)
    80006d2c:	00070c9b          	sext.w	s9,a4
    80006d30:	f5371ee3          	bne	a4,s3,80006c8c <consoleread+0x88>
    80006d34:	000b851b          	sext.w	a0,s7
    80006d38:	f96bf2e3          	bgeu	s7,s6,80006cbc <consoleread+0xb8>
    80006d3c:	08f4ac23          	sw	a5,152(s1)
    80006d40:	f7dff06f          	j	80006cbc <consoleread+0xb8>

0000000080006d44 <consputc>:
    80006d44:	10000793          	li	a5,256
    80006d48:	00f50663          	beq	a0,a5,80006d54 <consputc+0x10>
    80006d4c:	00001317          	auipc	t1,0x1
    80006d50:	9f430067          	jr	-1548(t1) # 80007740 <uartputc_sync>
    80006d54:	ff010113          	addi	sp,sp,-16
    80006d58:	00113423          	sd	ra,8(sp)
    80006d5c:	00813023          	sd	s0,0(sp)
    80006d60:	01010413          	addi	s0,sp,16
    80006d64:	00800513          	li	a0,8
    80006d68:	00001097          	auipc	ra,0x1
    80006d6c:	9d8080e7          	jalr	-1576(ra) # 80007740 <uartputc_sync>
    80006d70:	02000513          	li	a0,32
    80006d74:	00001097          	auipc	ra,0x1
    80006d78:	9cc080e7          	jalr	-1588(ra) # 80007740 <uartputc_sync>
    80006d7c:	00013403          	ld	s0,0(sp)
    80006d80:	00813083          	ld	ra,8(sp)
    80006d84:	00800513          	li	a0,8
    80006d88:	01010113          	addi	sp,sp,16
    80006d8c:	00001317          	auipc	t1,0x1
    80006d90:	9b430067          	jr	-1612(t1) # 80007740 <uartputc_sync>

0000000080006d94 <consoleintr>:
    80006d94:	fe010113          	addi	sp,sp,-32
    80006d98:	00813823          	sd	s0,16(sp)
    80006d9c:	00913423          	sd	s1,8(sp)
    80006da0:	01213023          	sd	s2,0(sp)
    80006da4:	00113c23          	sd	ra,24(sp)
    80006da8:	02010413          	addi	s0,sp,32
    80006dac:	00006917          	auipc	s2,0x6
    80006db0:	8ec90913          	addi	s2,s2,-1812 # 8000c698 <cons>
    80006db4:	00050493          	mv	s1,a0
    80006db8:	00090513          	mv	a0,s2
    80006dbc:	00001097          	auipc	ra,0x1
    80006dc0:	e40080e7          	jalr	-448(ra) # 80007bfc <acquire>
    80006dc4:	02048c63          	beqz	s1,80006dfc <consoleintr+0x68>
    80006dc8:	0a092783          	lw	a5,160(s2)
    80006dcc:	09892703          	lw	a4,152(s2)
    80006dd0:	07f00693          	li	a3,127
    80006dd4:	40e7873b          	subw	a4,a5,a4
    80006dd8:	02e6e263          	bltu	a3,a4,80006dfc <consoleintr+0x68>
    80006ddc:	00d00713          	li	a4,13
    80006de0:	04e48063          	beq	s1,a4,80006e20 <consoleintr+0x8c>
    80006de4:	07f7f713          	andi	a4,a5,127
    80006de8:	00e90733          	add	a4,s2,a4
    80006dec:	0017879b          	addiw	a5,a5,1
    80006df0:	0af92023          	sw	a5,160(s2)
    80006df4:	00970c23          	sb	s1,24(a4)
    80006df8:	08f92e23          	sw	a5,156(s2)
    80006dfc:	01013403          	ld	s0,16(sp)
    80006e00:	01813083          	ld	ra,24(sp)
    80006e04:	00813483          	ld	s1,8(sp)
    80006e08:	00013903          	ld	s2,0(sp)
    80006e0c:	00006517          	auipc	a0,0x6
    80006e10:	88c50513          	addi	a0,a0,-1908 # 8000c698 <cons>
    80006e14:	02010113          	addi	sp,sp,32
    80006e18:	00001317          	auipc	t1,0x1
    80006e1c:	eb030067          	jr	-336(t1) # 80007cc8 <release>
    80006e20:	00a00493          	li	s1,10
    80006e24:	fc1ff06f          	j	80006de4 <consoleintr+0x50>

0000000080006e28 <consoleinit>:
    80006e28:	fe010113          	addi	sp,sp,-32
    80006e2c:	00113c23          	sd	ra,24(sp)
    80006e30:	00813823          	sd	s0,16(sp)
    80006e34:	00913423          	sd	s1,8(sp)
    80006e38:	02010413          	addi	s0,sp,32
    80006e3c:	00006497          	auipc	s1,0x6
    80006e40:	85c48493          	addi	s1,s1,-1956 # 8000c698 <cons>
    80006e44:	00048513          	mv	a0,s1
    80006e48:	00003597          	auipc	a1,0x3
    80006e4c:	a2858593          	addi	a1,a1,-1496 # 80009870 <CONSOLE_STATUS+0x860>
    80006e50:	00001097          	auipc	ra,0x1
    80006e54:	d88080e7          	jalr	-632(ra) # 80007bd8 <initlock>
    80006e58:	00000097          	auipc	ra,0x0
    80006e5c:	7ac080e7          	jalr	1964(ra) # 80007604 <uartinit>
    80006e60:	01813083          	ld	ra,24(sp)
    80006e64:	01013403          	ld	s0,16(sp)
    80006e68:	00000797          	auipc	a5,0x0
    80006e6c:	d9c78793          	addi	a5,a5,-612 # 80006c04 <consoleread>
    80006e70:	0af4bc23          	sd	a5,184(s1)
    80006e74:	00000797          	auipc	a5,0x0
    80006e78:	cec78793          	addi	a5,a5,-788 # 80006b60 <consolewrite>
    80006e7c:	0cf4b023          	sd	a5,192(s1)
    80006e80:	00813483          	ld	s1,8(sp)
    80006e84:	02010113          	addi	sp,sp,32
    80006e88:	00008067          	ret

0000000080006e8c <console_read>:
    80006e8c:	ff010113          	addi	sp,sp,-16
    80006e90:	00813423          	sd	s0,8(sp)
    80006e94:	01010413          	addi	s0,sp,16
    80006e98:	00813403          	ld	s0,8(sp)
    80006e9c:	00006317          	auipc	t1,0x6
    80006ea0:	8b433303          	ld	t1,-1868(t1) # 8000c750 <devsw+0x10>
    80006ea4:	01010113          	addi	sp,sp,16
    80006ea8:	00030067          	jr	t1

0000000080006eac <console_write>:
    80006eac:	ff010113          	addi	sp,sp,-16
    80006eb0:	00813423          	sd	s0,8(sp)
    80006eb4:	01010413          	addi	s0,sp,16
    80006eb8:	00813403          	ld	s0,8(sp)
    80006ebc:	00006317          	auipc	t1,0x6
    80006ec0:	89c33303          	ld	t1,-1892(t1) # 8000c758 <devsw+0x18>
    80006ec4:	01010113          	addi	sp,sp,16
    80006ec8:	00030067          	jr	t1

0000000080006ecc <panic>:
    80006ecc:	fe010113          	addi	sp,sp,-32
    80006ed0:	00113c23          	sd	ra,24(sp)
    80006ed4:	00813823          	sd	s0,16(sp)
    80006ed8:	00913423          	sd	s1,8(sp)
    80006edc:	02010413          	addi	s0,sp,32
    80006ee0:	00050493          	mv	s1,a0
    80006ee4:	00003517          	auipc	a0,0x3
    80006ee8:	99450513          	addi	a0,a0,-1644 # 80009878 <CONSOLE_STATUS+0x868>
    80006eec:	00006797          	auipc	a5,0x6
    80006ef0:	9007a623          	sw	zero,-1780(a5) # 8000c7f8 <pr+0x18>
    80006ef4:	00000097          	auipc	ra,0x0
    80006ef8:	034080e7          	jalr	52(ra) # 80006f28 <__printf>
    80006efc:	00048513          	mv	a0,s1
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	028080e7          	jalr	40(ra) # 80006f28 <__printf>
    80006f08:	00002517          	auipc	a0,0x2
    80006f0c:	2b850513          	addi	a0,a0,696 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80006f10:	00000097          	auipc	ra,0x0
    80006f14:	018080e7          	jalr	24(ra) # 80006f28 <__printf>
    80006f18:	00100793          	li	a5,1
    80006f1c:	00004717          	auipc	a4,0x4
    80006f20:	5ef72e23          	sw	a5,1532(a4) # 8000b518 <panicked>
    80006f24:	0000006f          	j	80006f24 <panic+0x58>

0000000080006f28 <__printf>:
    80006f28:	f3010113          	addi	sp,sp,-208
    80006f2c:	08813023          	sd	s0,128(sp)
    80006f30:	07313423          	sd	s3,104(sp)
    80006f34:	09010413          	addi	s0,sp,144
    80006f38:	05813023          	sd	s8,64(sp)
    80006f3c:	08113423          	sd	ra,136(sp)
    80006f40:	06913c23          	sd	s1,120(sp)
    80006f44:	07213823          	sd	s2,112(sp)
    80006f48:	07413023          	sd	s4,96(sp)
    80006f4c:	05513c23          	sd	s5,88(sp)
    80006f50:	05613823          	sd	s6,80(sp)
    80006f54:	05713423          	sd	s7,72(sp)
    80006f58:	03913c23          	sd	s9,56(sp)
    80006f5c:	03a13823          	sd	s10,48(sp)
    80006f60:	03b13423          	sd	s11,40(sp)
    80006f64:	00006317          	auipc	t1,0x6
    80006f68:	87c30313          	addi	t1,t1,-1924 # 8000c7e0 <pr>
    80006f6c:	01832c03          	lw	s8,24(t1)
    80006f70:	00b43423          	sd	a1,8(s0)
    80006f74:	00c43823          	sd	a2,16(s0)
    80006f78:	00d43c23          	sd	a3,24(s0)
    80006f7c:	02e43023          	sd	a4,32(s0)
    80006f80:	02f43423          	sd	a5,40(s0)
    80006f84:	03043823          	sd	a6,48(s0)
    80006f88:	03143c23          	sd	a7,56(s0)
    80006f8c:	00050993          	mv	s3,a0
    80006f90:	4a0c1663          	bnez	s8,8000743c <__printf+0x514>
    80006f94:	60098c63          	beqz	s3,800075ac <__printf+0x684>
    80006f98:	0009c503          	lbu	a0,0(s3)
    80006f9c:	00840793          	addi	a5,s0,8
    80006fa0:	f6f43c23          	sd	a5,-136(s0)
    80006fa4:	00000493          	li	s1,0
    80006fa8:	22050063          	beqz	a0,800071c8 <__printf+0x2a0>
    80006fac:	00002a37          	lui	s4,0x2
    80006fb0:	00018ab7          	lui	s5,0x18
    80006fb4:	000f4b37          	lui	s6,0xf4
    80006fb8:	00989bb7          	lui	s7,0x989
    80006fbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006fc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006fc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006fc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006fcc:	00148c9b          	addiw	s9,s1,1
    80006fd0:	02500793          	li	a5,37
    80006fd4:	01998933          	add	s2,s3,s9
    80006fd8:	38f51263          	bne	a0,a5,8000735c <__printf+0x434>
    80006fdc:	00094783          	lbu	a5,0(s2)
    80006fe0:	00078c9b          	sext.w	s9,a5
    80006fe4:	1e078263          	beqz	a5,800071c8 <__printf+0x2a0>
    80006fe8:	0024849b          	addiw	s1,s1,2
    80006fec:	07000713          	li	a4,112
    80006ff0:	00998933          	add	s2,s3,s1
    80006ff4:	38e78a63          	beq	a5,a4,80007388 <__printf+0x460>
    80006ff8:	20f76863          	bltu	a4,a5,80007208 <__printf+0x2e0>
    80006ffc:	42a78863          	beq	a5,a0,8000742c <__printf+0x504>
    80007000:	06400713          	li	a4,100
    80007004:	40e79663          	bne	a5,a4,80007410 <__printf+0x4e8>
    80007008:	f7843783          	ld	a5,-136(s0)
    8000700c:	0007a603          	lw	a2,0(a5)
    80007010:	00878793          	addi	a5,a5,8
    80007014:	f6f43c23          	sd	a5,-136(s0)
    80007018:	42064a63          	bltz	a2,8000744c <__printf+0x524>
    8000701c:	00a00713          	li	a4,10
    80007020:	02e677bb          	remuw	a5,a2,a4
    80007024:	00003d97          	auipc	s11,0x3
    80007028:	87cd8d93          	addi	s11,s11,-1924 # 800098a0 <digits>
    8000702c:	00900593          	li	a1,9
    80007030:	0006051b          	sext.w	a0,a2
    80007034:	00000c93          	li	s9,0
    80007038:	02079793          	slli	a5,a5,0x20
    8000703c:	0207d793          	srli	a5,a5,0x20
    80007040:	00fd87b3          	add	a5,s11,a5
    80007044:	0007c783          	lbu	a5,0(a5)
    80007048:	02e656bb          	divuw	a3,a2,a4
    8000704c:	f8f40023          	sb	a5,-128(s0)
    80007050:	14c5d863          	bge	a1,a2,800071a0 <__printf+0x278>
    80007054:	06300593          	li	a1,99
    80007058:	00100c93          	li	s9,1
    8000705c:	02e6f7bb          	remuw	a5,a3,a4
    80007060:	02079793          	slli	a5,a5,0x20
    80007064:	0207d793          	srli	a5,a5,0x20
    80007068:	00fd87b3          	add	a5,s11,a5
    8000706c:	0007c783          	lbu	a5,0(a5)
    80007070:	02e6d73b          	divuw	a4,a3,a4
    80007074:	f8f400a3          	sb	a5,-127(s0)
    80007078:	12a5f463          	bgeu	a1,a0,800071a0 <__printf+0x278>
    8000707c:	00a00693          	li	a3,10
    80007080:	00900593          	li	a1,9
    80007084:	02d777bb          	remuw	a5,a4,a3
    80007088:	02079793          	slli	a5,a5,0x20
    8000708c:	0207d793          	srli	a5,a5,0x20
    80007090:	00fd87b3          	add	a5,s11,a5
    80007094:	0007c503          	lbu	a0,0(a5)
    80007098:	02d757bb          	divuw	a5,a4,a3
    8000709c:	f8a40123          	sb	a0,-126(s0)
    800070a0:	48e5f263          	bgeu	a1,a4,80007524 <__printf+0x5fc>
    800070a4:	06300513          	li	a0,99
    800070a8:	02d7f5bb          	remuw	a1,a5,a3
    800070ac:	02059593          	slli	a1,a1,0x20
    800070b0:	0205d593          	srli	a1,a1,0x20
    800070b4:	00bd85b3          	add	a1,s11,a1
    800070b8:	0005c583          	lbu	a1,0(a1)
    800070bc:	02d7d7bb          	divuw	a5,a5,a3
    800070c0:	f8b401a3          	sb	a1,-125(s0)
    800070c4:	48e57263          	bgeu	a0,a4,80007548 <__printf+0x620>
    800070c8:	3e700513          	li	a0,999
    800070cc:	02d7f5bb          	remuw	a1,a5,a3
    800070d0:	02059593          	slli	a1,a1,0x20
    800070d4:	0205d593          	srli	a1,a1,0x20
    800070d8:	00bd85b3          	add	a1,s11,a1
    800070dc:	0005c583          	lbu	a1,0(a1)
    800070e0:	02d7d7bb          	divuw	a5,a5,a3
    800070e4:	f8b40223          	sb	a1,-124(s0)
    800070e8:	46e57663          	bgeu	a0,a4,80007554 <__printf+0x62c>
    800070ec:	02d7f5bb          	remuw	a1,a5,a3
    800070f0:	02059593          	slli	a1,a1,0x20
    800070f4:	0205d593          	srli	a1,a1,0x20
    800070f8:	00bd85b3          	add	a1,s11,a1
    800070fc:	0005c583          	lbu	a1,0(a1)
    80007100:	02d7d7bb          	divuw	a5,a5,a3
    80007104:	f8b402a3          	sb	a1,-123(s0)
    80007108:	46ea7863          	bgeu	s4,a4,80007578 <__printf+0x650>
    8000710c:	02d7f5bb          	remuw	a1,a5,a3
    80007110:	02059593          	slli	a1,a1,0x20
    80007114:	0205d593          	srli	a1,a1,0x20
    80007118:	00bd85b3          	add	a1,s11,a1
    8000711c:	0005c583          	lbu	a1,0(a1)
    80007120:	02d7d7bb          	divuw	a5,a5,a3
    80007124:	f8b40323          	sb	a1,-122(s0)
    80007128:	3eeaf863          	bgeu	s5,a4,80007518 <__printf+0x5f0>
    8000712c:	02d7f5bb          	remuw	a1,a5,a3
    80007130:	02059593          	slli	a1,a1,0x20
    80007134:	0205d593          	srli	a1,a1,0x20
    80007138:	00bd85b3          	add	a1,s11,a1
    8000713c:	0005c583          	lbu	a1,0(a1)
    80007140:	02d7d7bb          	divuw	a5,a5,a3
    80007144:	f8b403a3          	sb	a1,-121(s0)
    80007148:	42eb7e63          	bgeu	s6,a4,80007584 <__printf+0x65c>
    8000714c:	02d7f5bb          	remuw	a1,a5,a3
    80007150:	02059593          	slli	a1,a1,0x20
    80007154:	0205d593          	srli	a1,a1,0x20
    80007158:	00bd85b3          	add	a1,s11,a1
    8000715c:	0005c583          	lbu	a1,0(a1)
    80007160:	02d7d7bb          	divuw	a5,a5,a3
    80007164:	f8b40423          	sb	a1,-120(s0)
    80007168:	42ebfc63          	bgeu	s7,a4,800075a0 <__printf+0x678>
    8000716c:	02079793          	slli	a5,a5,0x20
    80007170:	0207d793          	srli	a5,a5,0x20
    80007174:	00fd8db3          	add	s11,s11,a5
    80007178:	000dc703          	lbu	a4,0(s11)
    8000717c:	00a00793          	li	a5,10
    80007180:	00900c93          	li	s9,9
    80007184:	f8e404a3          	sb	a4,-119(s0)
    80007188:	00065c63          	bgez	a2,800071a0 <__printf+0x278>
    8000718c:	f9040713          	addi	a4,s0,-112
    80007190:	00f70733          	add	a4,a4,a5
    80007194:	02d00693          	li	a3,45
    80007198:	fed70823          	sb	a3,-16(a4)
    8000719c:	00078c93          	mv	s9,a5
    800071a0:	f8040793          	addi	a5,s0,-128
    800071a4:	01978cb3          	add	s9,a5,s9
    800071a8:	f7f40d13          	addi	s10,s0,-129
    800071ac:	000cc503          	lbu	a0,0(s9)
    800071b0:	fffc8c93          	addi	s9,s9,-1
    800071b4:	00000097          	auipc	ra,0x0
    800071b8:	b90080e7          	jalr	-1136(ra) # 80006d44 <consputc>
    800071bc:	ffac98e3          	bne	s9,s10,800071ac <__printf+0x284>
    800071c0:	00094503          	lbu	a0,0(s2)
    800071c4:	e00514e3          	bnez	a0,80006fcc <__printf+0xa4>
    800071c8:	1a0c1663          	bnez	s8,80007374 <__printf+0x44c>
    800071cc:	08813083          	ld	ra,136(sp)
    800071d0:	08013403          	ld	s0,128(sp)
    800071d4:	07813483          	ld	s1,120(sp)
    800071d8:	07013903          	ld	s2,112(sp)
    800071dc:	06813983          	ld	s3,104(sp)
    800071e0:	06013a03          	ld	s4,96(sp)
    800071e4:	05813a83          	ld	s5,88(sp)
    800071e8:	05013b03          	ld	s6,80(sp)
    800071ec:	04813b83          	ld	s7,72(sp)
    800071f0:	04013c03          	ld	s8,64(sp)
    800071f4:	03813c83          	ld	s9,56(sp)
    800071f8:	03013d03          	ld	s10,48(sp)
    800071fc:	02813d83          	ld	s11,40(sp)
    80007200:	0d010113          	addi	sp,sp,208
    80007204:	00008067          	ret
    80007208:	07300713          	li	a4,115
    8000720c:	1ce78a63          	beq	a5,a4,800073e0 <__printf+0x4b8>
    80007210:	07800713          	li	a4,120
    80007214:	1ee79e63          	bne	a5,a4,80007410 <__printf+0x4e8>
    80007218:	f7843783          	ld	a5,-136(s0)
    8000721c:	0007a703          	lw	a4,0(a5)
    80007220:	00878793          	addi	a5,a5,8
    80007224:	f6f43c23          	sd	a5,-136(s0)
    80007228:	28074263          	bltz	a4,800074ac <__printf+0x584>
    8000722c:	00002d97          	auipc	s11,0x2
    80007230:	674d8d93          	addi	s11,s11,1652 # 800098a0 <digits>
    80007234:	00f77793          	andi	a5,a4,15
    80007238:	00fd87b3          	add	a5,s11,a5
    8000723c:	0007c683          	lbu	a3,0(a5)
    80007240:	00f00613          	li	a2,15
    80007244:	0007079b          	sext.w	a5,a4
    80007248:	f8d40023          	sb	a3,-128(s0)
    8000724c:	0047559b          	srliw	a1,a4,0x4
    80007250:	0047569b          	srliw	a3,a4,0x4
    80007254:	00000c93          	li	s9,0
    80007258:	0ee65063          	bge	a2,a4,80007338 <__printf+0x410>
    8000725c:	00f6f693          	andi	a3,a3,15
    80007260:	00dd86b3          	add	a3,s11,a3
    80007264:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007268:	0087d79b          	srliw	a5,a5,0x8
    8000726c:	00100c93          	li	s9,1
    80007270:	f8d400a3          	sb	a3,-127(s0)
    80007274:	0cb67263          	bgeu	a2,a1,80007338 <__printf+0x410>
    80007278:	00f7f693          	andi	a3,a5,15
    8000727c:	00dd86b3          	add	a3,s11,a3
    80007280:	0006c583          	lbu	a1,0(a3)
    80007284:	00f00613          	li	a2,15
    80007288:	0047d69b          	srliw	a3,a5,0x4
    8000728c:	f8b40123          	sb	a1,-126(s0)
    80007290:	0047d593          	srli	a1,a5,0x4
    80007294:	28f67e63          	bgeu	a2,a5,80007530 <__printf+0x608>
    80007298:	00f6f693          	andi	a3,a3,15
    8000729c:	00dd86b3          	add	a3,s11,a3
    800072a0:	0006c503          	lbu	a0,0(a3)
    800072a4:	0087d813          	srli	a6,a5,0x8
    800072a8:	0087d69b          	srliw	a3,a5,0x8
    800072ac:	f8a401a3          	sb	a0,-125(s0)
    800072b0:	28b67663          	bgeu	a2,a1,8000753c <__printf+0x614>
    800072b4:	00f6f693          	andi	a3,a3,15
    800072b8:	00dd86b3          	add	a3,s11,a3
    800072bc:	0006c583          	lbu	a1,0(a3)
    800072c0:	00c7d513          	srli	a0,a5,0xc
    800072c4:	00c7d69b          	srliw	a3,a5,0xc
    800072c8:	f8b40223          	sb	a1,-124(s0)
    800072cc:	29067a63          	bgeu	a2,a6,80007560 <__printf+0x638>
    800072d0:	00f6f693          	andi	a3,a3,15
    800072d4:	00dd86b3          	add	a3,s11,a3
    800072d8:	0006c583          	lbu	a1,0(a3)
    800072dc:	0107d813          	srli	a6,a5,0x10
    800072e0:	0107d69b          	srliw	a3,a5,0x10
    800072e4:	f8b402a3          	sb	a1,-123(s0)
    800072e8:	28a67263          	bgeu	a2,a0,8000756c <__printf+0x644>
    800072ec:	00f6f693          	andi	a3,a3,15
    800072f0:	00dd86b3          	add	a3,s11,a3
    800072f4:	0006c683          	lbu	a3,0(a3)
    800072f8:	0147d79b          	srliw	a5,a5,0x14
    800072fc:	f8d40323          	sb	a3,-122(s0)
    80007300:	21067663          	bgeu	a2,a6,8000750c <__printf+0x5e4>
    80007304:	02079793          	slli	a5,a5,0x20
    80007308:	0207d793          	srli	a5,a5,0x20
    8000730c:	00fd8db3          	add	s11,s11,a5
    80007310:	000dc683          	lbu	a3,0(s11)
    80007314:	00800793          	li	a5,8
    80007318:	00700c93          	li	s9,7
    8000731c:	f8d403a3          	sb	a3,-121(s0)
    80007320:	00075c63          	bgez	a4,80007338 <__printf+0x410>
    80007324:	f9040713          	addi	a4,s0,-112
    80007328:	00f70733          	add	a4,a4,a5
    8000732c:	02d00693          	li	a3,45
    80007330:	fed70823          	sb	a3,-16(a4)
    80007334:	00078c93          	mv	s9,a5
    80007338:	f8040793          	addi	a5,s0,-128
    8000733c:	01978cb3          	add	s9,a5,s9
    80007340:	f7f40d13          	addi	s10,s0,-129
    80007344:	000cc503          	lbu	a0,0(s9)
    80007348:	fffc8c93          	addi	s9,s9,-1
    8000734c:	00000097          	auipc	ra,0x0
    80007350:	9f8080e7          	jalr	-1544(ra) # 80006d44 <consputc>
    80007354:	ff9d18e3          	bne	s10,s9,80007344 <__printf+0x41c>
    80007358:	0100006f          	j	80007368 <__printf+0x440>
    8000735c:	00000097          	auipc	ra,0x0
    80007360:	9e8080e7          	jalr	-1560(ra) # 80006d44 <consputc>
    80007364:	000c8493          	mv	s1,s9
    80007368:	00094503          	lbu	a0,0(s2)
    8000736c:	c60510e3          	bnez	a0,80006fcc <__printf+0xa4>
    80007370:	e40c0ee3          	beqz	s8,800071cc <__printf+0x2a4>
    80007374:	00005517          	auipc	a0,0x5
    80007378:	46c50513          	addi	a0,a0,1132 # 8000c7e0 <pr>
    8000737c:	00001097          	auipc	ra,0x1
    80007380:	94c080e7          	jalr	-1716(ra) # 80007cc8 <release>
    80007384:	e49ff06f          	j	800071cc <__printf+0x2a4>
    80007388:	f7843783          	ld	a5,-136(s0)
    8000738c:	03000513          	li	a0,48
    80007390:	01000d13          	li	s10,16
    80007394:	00878713          	addi	a4,a5,8
    80007398:	0007bc83          	ld	s9,0(a5)
    8000739c:	f6e43c23          	sd	a4,-136(s0)
    800073a0:	00000097          	auipc	ra,0x0
    800073a4:	9a4080e7          	jalr	-1628(ra) # 80006d44 <consputc>
    800073a8:	07800513          	li	a0,120
    800073ac:	00000097          	auipc	ra,0x0
    800073b0:	998080e7          	jalr	-1640(ra) # 80006d44 <consputc>
    800073b4:	00002d97          	auipc	s11,0x2
    800073b8:	4ecd8d93          	addi	s11,s11,1260 # 800098a0 <digits>
    800073bc:	03ccd793          	srli	a5,s9,0x3c
    800073c0:	00fd87b3          	add	a5,s11,a5
    800073c4:	0007c503          	lbu	a0,0(a5)
    800073c8:	fffd0d1b          	addiw	s10,s10,-1
    800073cc:	004c9c93          	slli	s9,s9,0x4
    800073d0:	00000097          	auipc	ra,0x0
    800073d4:	974080e7          	jalr	-1676(ra) # 80006d44 <consputc>
    800073d8:	fe0d12e3          	bnez	s10,800073bc <__printf+0x494>
    800073dc:	f8dff06f          	j	80007368 <__printf+0x440>
    800073e0:	f7843783          	ld	a5,-136(s0)
    800073e4:	0007bc83          	ld	s9,0(a5)
    800073e8:	00878793          	addi	a5,a5,8
    800073ec:	f6f43c23          	sd	a5,-136(s0)
    800073f0:	000c9a63          	bnez	s9,80007404 <__printf+0x4dc>
    800073f4:	1080006f          	j	800074fc <__printf+0x5d4>
    800073f8:	001c8c93          	addi	s9,s9,1
    800073fc:	00000097          	auipc	ra,0x0
    80007400:	948080e7          	jalr	-1720(ra) # 80006d44 <consputc>
    80007404:	000cc503          	lbu	a0,0(s9)
    80007408:	fe0518e3          	bnez	a0,800073f8 <__printf+0x4d0>
    8000740c:	f5dff06f          	j	80007368 <__printf+0x440>
    80007410:	02500513          	li	a0,37
    80007414:	00000097          	auipc	ra,0x0
    80007418:	930080e7          	jalr	-1744(ra) # 80006d44 <consputc>
    8000741c:	000c8513          	mv	a0,s9
    80007420:	00000097          	auipc	ra,0x0
    80007424:	924080e7          	jalr	-1756(ra) # 80006d44 <consputc>
    80007428:	f41ff06f          	j	80007368 <__printf+0x440>
    8000742c:	02500513          	li	a0,37
    80007430:	00000097          	auipc	ra,0x0
    80007434:	914080e7          	jalr	-1772(ra) # 80006d44 <consputc>
    80007438:	f31ff06f          	j	80007368 <__printf+0x440>
    8000743c:	00030513          	mv	a0,t1
    80007440:	00000097          	auipc	ra,0x0
    80007444:	7bc080e7          	jalr	1980(ra) # 80007bfc <acquire>
    80007448:	b4dff06f          	j	80006f94 <__printf+0x6c>
    8000744c:	40c0053b          	negw	a0,a2
    80007450:	00a00713          	li	a4,10
    80007454:	02e576bb          	remuw	a3,a0,a4
    80007458:	00002d97          	auipc	s11,0x2
    8000745c:	448d8d93          	addi	s11,s11,1096 # 800098a0 <digits>
    80007460:	ff700593          	li	a1,-9
    80007464:	02069693          	slli	a3,a3,0x20
    80007468:	0206d693          	srli	a3,a3,0x20
    8000746c:	00dd86b3          	add	a3,s11,a3
    80007470:	0006c683          	lbu	a3,0(a3)
    80007474:	02e557bb          	divuw	a5,a0,a4
    80007478:	f8d40023          	sb	a3,-128(s0)
    8000747c:	10b65e63          	bge	a2,a1,80007598 <__printf+0x670>
    80007480:	06300593          	li	a1,99
    80007484:	02e7f6bb          	remuw	a3,a5,a4
    80007488:	02069693          	slli	a3,a3,0x20
    8000748c:	0206d693          	srli	a3,a3,0x20
    80007490:	00dd86b3          	add	a3,s11,a3
    80007494:	0006c683          	lbu	a3,0(a3)
    80007498:	02e7d73b          	divuw	a4,a5,a4
    8000749c:	00200793          	li	a5,2
    800074a0:	f8d400a3          	sb	a3,-127(s0)
    800074a4:	bca5ece3          	bltu	a1,a0,8000707c <__printf+0x154>
    800074a8:	ce5ff06f          	j	8000718c <__printf+0x264>
    800074ac:	40e007bb          	negw	a5,a4
    800074b0:	00002d97          	auipc	s11,0x2
    800074b4:	3f0d8d93          	addi	s11,s11,1008 # 800098a0 <digits>
    800074b8:	00f7f693          	andi	a3,a5,15
    800074bc:	00dd86b3          	add	a3,s11,a3
    800074c0:	0006c583          	lbu	a1,0(a3)
    800074c4:	ff100613          	li	a2,-15
    800074c8:	0047d69b          	srliw	a3,a5,0x4
    800074cc:	f8b40023          	sb	a1,-128(s0)
    800074d0:	0047d59b          	srliw	a1,a5,0x4
    800074d4:	0ac75e63          	bge	a4,a2,80007590 <__printf+0x668>
    800074d8:	00f6f693          	andi	a3,a3,15
    800074dc:	00dd86b3          	add	a3,s11,a3
    800074e0:	0006c603          	lbu	a2,0(a3)
    800074e4:	00f00693          	li	a3,15
    800074e8:	0087d79b          	srliw	a5,a5,0x8
    800074ec:	f8c400a3          	sb	a2,-127(s0)
    800074f0:	d8b6e4e3          	bltu	a3,a1,80007278 <__printf+0x350>
    800074f4:	00200793          	li	a5,2
    800074f8:	e2dff06f          	j	80007324 <__printf+0x3fc>
    800074fc:	00002c97          	auipc	s9,0x2
    80007500:	384c8c93          	addi	s9,s9,900 # 80009880 <CONSOLE_STATUS+0x870>
    80007504:	02800513          	li	a0,40
    80007508:	ef1ff06f          	j	800073f8 <__printf+0x4d0>
    8000750c:	00700793          	li	a5,7
    80007510:	00600c93          	li	s9,6
    80007514:	e0dff06f          	j	80007320 <__printf+0x3f8>
    80007518:	00700793          	li	a5,7
    8000751c:	00600c93          	li	s9,6
    80007520:	c69ff06f          	j	80007188 <__printf+0x260>
    80007524:	00300793          	li	a5,3
    80007528:	00200c93          	li	s9,2
    8000752c:	c5dff06f          	j	80007188 <__printf+0x260>
    80007530:	00300793          	li	a5,3
    80007534:	00200c93          	li	s9,2
    80007538:	de9ff06f          	j	80007320 <__printf+0x3f8>
    8000753c:	00400793          	li	a5,4
    80007540:	00300c93          	li	s9,3
    80007544:	dddff06f          	j	80007320 <__printf+0x3f8>
    80007548:	00400793          	li	a5,4
    8000754c:	00300c93          	li	s9,3
    80007550:	c39ff06f          	j	80007188 <__printf+0x260>
    80007554:	00500793          	li	a5,5
    80007558:	00400c93          	li	s9,4
    8000755c:	c2dff06f          	j	80007188 <__printf+0x260>
    80007560:	00500793          	li	a5,5
    80007564:	00400c93          	li	s9,4
    80007568:	db9ff06f          	j	80007320 <__printf+0x3f8>
    8000756c:	00600793          	li	a5,6
    80007570:	00500c93          	li	s9,5
    80007574:	dadff06f          	j	80007320 <__printf+0x3f8>
    80007578:	00600793          	li	a5,6
    8000757c:	00500c93          	li	s9,5
    80007580:	c09ff06f          	j	80007188 <__printf+0x260>
    80007584:	00800793          	li	a5,8
    80007588:	00700c93          	li	s9,7
    8000758c:	bfdff06f          	j	80007188 <__printf+0x260>
    80007590:	00100793          	li	a5,1
    80007594:	d91ff06f          	j	80007324 <__printf+0x3fc>
    80007598:	00100793          	li	a5,1
    8000759c:	bf1ff06f          	j	8000718c <__printf+0x264>
    800075a0:	00900793          	li	a5,9
    800075a4:	00800c93          	li	s9,8
    800075a8:	be1ff06f          	j	80007188 <__printf+0x260>
    800075ac:	00002517          	auipc	a0,0x2
    800075b0:	2dc50513          	addi	a0,a0,732 # 80009888 <CONSOLE_STATUS+0x878>
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	918080e7          	jalr	-1768(ra) # 80006ecc <panic>

00000000800075bc <printfinit>:
    800075bc:	fe010113          	addi	sp,sp,-32
    800075c0:	00813823          	sd	s0,16(sp)
    800075c4:	00913423          	sd	s1,8(sp)
    800075c8:	00113c23          	sd	ra,24(sp)
    800075cc:	02010413          	addi	s0,sp,32
    800075d0:	00005497          	auipc	s1,0x5
    800075d4:	21048493          	addi	s1,s1,528 # 8000c7e0 <pr>
    800075d8:	00048513          	mv	a0,s1
    800075dc:	00002597          	auipc	a1,0x2
    800075e0:	2bc58593          	addi	a1,a1,700 # 80009898 <CONSOLE_STATUS+0x888>
    800075e4:	00000097          	auipc	ra,0x0
    800075e8:	5f4080e7          	jalr	1524(ra) # 80007bd8 <initlock>
    800075ec:	01813083          	ld	ra,24(sp)
    800075f0:	01013403          	ld	s0,16(sp)
    800075f4:	0004ac23          	sw	zero,24(s1)
    800075f8:	00813483          	ld	s1,8(sp)
    800075fc:	02010113          	addi	sp,sp,32
    80007600:	00008067          	ret

0000000080007604 <uartinit>:
    80007604:	ff010113          	addi	sp,sp,-16
    80007608:	00813423          	sd	s0,8(sp)
    8000760c:	01010413          	addi	s0,sp,16
    80007610:	100007b7          	lui	a5,0x10000
    80007614:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007618:	f8000713          	li	a4,-128
    8000761c:	00e781a3          	sb	a4,3(a5)
    80007620:	00300713          	li	a4,3
    80007624:	00e78023          	sb	a4,0(a5)
    80007628:	000780a3          	sb	zero,1(a5)
    8000762c:	00e781a3          	sb	a4,3(a5)
    80007630:	00700693          	li	a3,7
    80007634:	00d78123          	sb	a3,2(a5)
    80007638:	00e780a3          	sb	a4,1(a5)
    8000763c:	00813403          	ld	s0,8(sp)
    80007640:	01010113          	addi	sp,sp,16
    80007644:	00008067          	ret

0000000080007648 <uartputc>:
    80007648:	00004797          	auipc	a5,0x4
    8000764c:	ed07a783          	lw	a5,-304(a5) # 8000b518 <panicked>
    80007650:	00078463          	beqz	a5,80007658 <uartputc+0x10>
    80007654:	0000006f          	j	80007654 <uartputc+0xc>
    80007658:	fd010113          	addi	sp,sp,-48
    8000765c:	02813023          	sd	s0,32(sp)
    80007660:	00913c23          	sd	s1,24(sp)
    80007664:	01213823          	sd	s2,16(sp)
    80007668:	01313423          	sd	s3,8(sp)
    8000766c:	02113423          	sd	ra,40(sp)
    80007670:	03010413          	addi	s0,sp,48
    80007674:	00004917          	auipc	s2,0x4
    80007678:	eac90913          	addi	s2,s2,-340 # 8000b520 <uart_tx_r>
    8000767c:	00093783          	ld	a5,0(s2)
    80007680:	00004497          	auipc	s1,0x4
    80007684:	ea848493          	addi	s1,s1,-344 # 8000b528 <uart_tx_w>
    80007688:	0004b703          	ld	a4,0(s1)
    8000768c:	02078693          	addi	a3,a5,32
    80007690:	00050993          	mv	s3,a0
    80007694:	02e69c63          	bne	a3,a4,800076cc <uartputc+0x84>
    80007698:	00001097          	auipc	ra,0x1
    8000769c:	834080e7          	jalr	-1996(ra) # 80007ecc <push_on>
    800076a0:	00093783          	ld	a5,0(s2)
    800076a4:	0004b703          	ld	a4,0(s1)
    800076a8:	02078793          	addi	a5,a5,32
    800076ac:	00e79463          	bne	a5,a4,800076b4 <uartputc+0x6c>
    800076b0:	0000006f          	j	800076b0 <uartputc+0x68>
    800076b4:	00001097          	auipc	ra,0x1
    800076b8:	88c080e7          	jalr	-1908(ra) # 80007f40 <pop_on>
    800076bc:	00093783          	ld	a5,0(s2)
    800076c0:	0004b703          	ld	a4,0(s1)
    800076c4:	02078693          	addi	a3,a5,32
    800076c8:	fce688e3          	beq	a3,a4,80007698 <uartputc+0x50>
    800076cc:	01f77693          	andi	a3,a4,31
    800076d0:	00005597          	auipc	a1,0x5
    800076d4:	13058593          	addi	a1,a1,304 # 8000c800 <uart_tx_buf>
    800076d8:	00d586b3          	add	a3,a1,a3
    800076dc:	00170713          	addi	a4,a4,1
    800076e0:	01368023          	sb	s3,0(a3)
    800076e4:	00e4b023          	sd	a4,0(s1)
    800076e8:	10000637          	lui	a2,0x10000
    800076ec:	02f71063          	bne	a4,a5,8000770c <uartputc+0xc4>
    800076f0:	0340006f          	j	80007724 <uartputc+0xdc>
    800076f4:	00074703          	lbu	a4,0(a4)
    800076f8:	00f93023          	sd	a5,0(s2)
    800076fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007700:	00093783          	ld	a5,0(s2)
    80007704:	0004b703          	ld	a4,0(s1)
    80007708:	00f70e63          	beq	a4,a5,80007724 <uartputc+0xdc>
    8000770c:	00564683          	lbu	a3,5(a2)
    80007710:	01f7f713          	andi	a4,a5,31
    80007714:	00e58733          	add	a4,a1,a4
    80007718:	0206f693          	andi	a3,a3,32
    8000771c:	00178793          	addi	a5,a5,1
    80007720:	fc069ae3          	bnez	a3,800076f4 <uartputc+0xac>
    80007724:	02813083          	ld	ra,40(sp)
    80007728:	02013403          	ld	s0,32(sp)
    8000772c:	01813483          	ld	s1,24(sp)
    80007730:	01013903          	ld	s2,16(sp)
    80007734:	00813983          	ld	s3,8(sp)
    80007738:	03010113          	addi	sp,sp,48
    8000773c:	00008067          	ret

0000000080007740 <uartputc_sync>:
    80007740:	ff010113          	addi	sp,sp,-16
    80007744:	00813423          	sd	s0,8(sp)
    80007748:	01010413          	addi	s0,sp,16
    8000774c:	00004717          	auipc	a4,0x4
    80007750:	dcc72703          	lw	a4,-564(a4) # 8000b518 <panicked>
    80007754:	02071663          	bnez	a4,80007780 <uartputc_sync+0x40>
    80007758:	00050793          	mv	a5,a0
    8000775c:	100006b7          	lui	a3,0x10000
    80007760:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007764:	02077713          	andi	a4,a4,32
    80007768:	fe070ce3          	beqz	a4,80007760 <uartputc_sync+0x20>
    8000776c:	0ff7f793          	andi	a5,a5,255
    80007770:	00f68023          	sb	a5,0(a3)
    80007774:	00813403          	ld	s0,8(sp)
    80007778:	01010113          	addi	sp,sp,16
    8000777c:	00008067          	ret
    80007780:	0000006f          	j	80007780 <uartputc_sync+0x40>

0000000080007784 <uartstart>:
    80007784:	ff010113          	addi	sp,sp,-16
    80007788:	00813423          	sd	s0,8(sp)
    8000778c:	01010413          	addi	s0,sp,16
    80007790:	00004617          	auipc	a2,0x4
    80007794:	d9060613          	addi	a2,a2,-624 # 8000b520 <uart_tx_r>
    80007798:	00004517          	auipc	a0,0x4
    8000779c:	d9050513          	addi	a0,a0,-624 # 8000b528 <uart_tx_w>
    800077a0:	00063783          	ld	a5,0(a2)
    800077a4:	00053703          	ld	a4,0(a0)
    800077a8:	04f70263          	beq	a4,a5,800077ec <uartstart+0x68>
    800077ac:	100005b7          	lui	a1,0x10000
    800077b0:	00005817          	auipc	a6,0x5
    800077b4:	05080813          	addi	a6,a6,80 # 8000c800 <uart_tx_buf>
    800077b8:	01c0006f          	j	800077d4 <uartstart+0x50>
    800077bc:	0006c703          	lbu	a4,0(a3)
    800077c0:	00f63023          	sd	a5,0(a2)
    800077c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077c8:	00063783          	ld	a5,0(a2)
    800077cc:	00053703          	ld	a4,0(a0)
    800077d0:	00f70e63          	beq	a4,a5,800077ec <uartstart+0x68>
    800077d4:	01f7f713          	andi	a4,a5,31
    800077d8:	00e806b3          	add	a3,a6,a4
    800077dc:	0055c703          	lbu	a4,5(a1)
    800077e0:	00178793          	addi	a5,a5,1
    800077e4:	02077713          	andi	a4,a4,32
    800077e8:	fc071ae3          	bnez	a4,800077bc <uartstart+0x38>
    800077ec:	00813403          	ld	s0,8(sp)
    800077f0:	01010113          	addi	sp,sp,16
    800077f4:	00008067          	ret

00000000800077f8 <uartgetc>:
    800077f8:	ff010113          	addi	sp,sp,-16
    800077fc:	00813423          	sd	s0,8(sp)
    80007800:	01010413          	addi	s0,sp,16
    80007804:	10000737          	lui	a4,0x10000
    80007808:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000780c:	0017f793          	andi	a5,a5,1
    80007810:	00078c63          	beqz	a5,80007828 <uartgetc+0x30>
    80007814:	00074503          	lbu	a0,0(a4)
    80007818:	0ff57513          	andi	a0,a0,255
    8000781c:	00813403          	ld	s0,8(sp)
    80007820:	01010113          	addi	sp,sp,16
    80007824:	00008067          	ret
    80007828:	fff00513          	li	a0,-1
    8000782c:	ff1ff06f          	j	8000781c <uartgetc+0x24>

0000000080007830 <uartintr>:
    80007830:	100007b7          	lui	a5,0x10000
    80007834:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007838:	0017f793          	andi	a5,a5,1
    8000783c:	0a078463          	beqz	a5,800078e4 <uartintr+0xb4>
    80007840:	fe010113          	addi	sp,sp,-32
    80007844:	00813823          	sd	s0,16(sp)
    80007848:	00913423          	sd	s1,8(sp)
    8000784c:	00113c23          	sd	ra,24(sp)
    80007850:	02010413          	addi	s0,sp,32
    80007854:	100004b7          	lui	s1,0x10000
    80007858:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000785c:	0ff57513          	andi	a0,a0,255
    80007860:	fffff097          	auipc	ra,0xfffff
    80007864:	534080e7          	jalr	1332(ra) # 80006d94 <consoleintr>
    80007868:	0054c783          	lbu	a5,5(s1)
    8000786c:	0017f793          	andi	a5,a5,1
    80007870:	fe0794e3          	bnez	a5,80007858 <uartintr+0x28>
    80007874:	00004617          	auipc	a2,0x4
    80007878:	cac60613          	addi	a2,a2,-852 # 8000b520 <uart_tx_r>
    8000787c:	00004517          	auipc	a0,0x4
    80007880:	cac50513          	addi	a0,a0,-852 # 8000b528 <uart_tx_w>
    80007884:	00063783          	ld	a5,0(a2)
    80007888:	00053703          	ld	a4,0(a0)
    8000788c:	04f70263          	beq	a4,a5,800078d0 <uartintr+0xa0>
    80007890:	100005b7          	lui	a1,0x10000
    80007894:	00005817          	auipc	a6,0x5
    80007898:	f6c80813          	addi	a6,a6,-148 # 8000c800 <uart_tx_buf>
    8000789c:	01c0006f          	j	800078b8 <uartintr+0x88>
    800078a0:	0006c703          	lbu	a4,0(a3)
    800078a4:	00f63023          	sd	a5,0(a2)
    800078a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078ac:	00063783          	ld	a5,0(a2)
    800078b0:	00053703          	ld	a4,0(a0)
    800078b4:	00f70e63          	beq	a4,a5,800078d0 <uartintr+0xa0>
    800078b8:	01f7f713          	andi	a4,a5,31
    800078bc:	00e806b3          	add	a3,a6,a4
    800078c0:	0055c703          	lbu	a4,5(a1)
    800078c4:	00178793          	addi	a5,a5,1
    800078c8:	02077713          	andi	a4,a4,32
    800078cc:	fc071ae3          	bnez	a4,800078a0 <uartintr+0x70>
    800078d0:	01813083          	ld	ra,24(sp)
    800078d4:	01013403          	ld	s0,16(sp)
    800078d8:	00813483          	ld	s1,8(sp)
    800078dc:	02010113          	addi	sp,sp,32
    800078e0:	00008067          	ret
    800078e4:	00004617          	auipc	a2,0x4
    800078e8:	c3c60613          	addi	a2,a2,-964 # 8000b520 <uart_tx_r>
    800078ec:	00004517          	auipc	a0,0x4
    800078f0:	c3c50513          	addi	a0,a0,-964 # 8000b528 <uart_tx_w>
    800078f4:	00063783          	ld	a5,0(a2)
    800078f8:	00053703          	ld	a4,0(a0)
    800078fc:	04f70263          	beq	a4,a5,80007940 <uartintr+0x110>
    80007900:	100005b7          	lui	a1,0x10000
    80007904:	00005817          	auipc	a6,0x5
    80007908:	efc80813          	addi	a6,a6,-260 # 8000c800 <uart_tx_buf>
    8000790c:	01c0006f          	j	80007928 <uartintr+0xf8>
    80007910:	0006c703          	lbu	a4,0(a3)
    80007914:	00f63023          	sd	a5,0(a2)
    80007918:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000791c:	00063783          	ld	a5,0(a2)
    80007920:	00053703          	ld	a4,0(a0)
    80007924:	02f70063          	beq	a4,a5,80007944 <uartintr+0x114>
    80007928:	01f7f713          	andi	a4,a5,31
    8000792c:	00e806b3          	add	a3,a6,a4
    80007930:	0055c703          	lbu	a4,5(a1)
    80007934:	00178793          	addi	a5,a5,1
    80007938:	02077713          	andi	a4,a4,32
    8000793c:	fc071ae3          	bnez	a4,80007910 <uartintr+0xe0>
    80007940:	00008067          	ret
    80007944:	00008067          	ret

0000000080007948 <kinit>:
    80007948:	fc010113          	addi	sp,sp,-64
    8000794c:	02913423          	sd	s1,40(sp)
    80007950:	fffff7b7          	lui	a5,0xfffff
    80007954:	00006497          	auipc	s1,0x6
    80007958:	ecb48493          	addi	s1,s1,-309 # 8000d81f <end+0xfff>
    8000795c:	02813823          	sd	s0,48(sp)
    80007960:	01313c23          	sd	s3,24(sp)
    80007964:	00f4f4b3          	and	s1,s1,a5
    80007968:	02113c23          	sd	ra,56(sp)
    8000796c:	03213023          	sd	s2,32(sp)
    80007970:	01413823          	sd	s4,16(sp)
    80007974:	01513423          	sd	s5,8(sp)
    80007978:	04010413          	addi	s0,sp,64
    8000797c:	000017b7          	lui	a5,0x1
    80007980:	01100993          	li	s3,17
    80007984:	00f487b3          	add	a5,s1,a5
    80007988:	01b99993          	slli	s3,s3,0x1b
    8000798c:	06f9e063          	bltu	s3,a5,800079ec <kinit+0xa4>
    80007990:	00005a97          	auipc	s5,0x5
    80007994:	e90a8a93          	addi	s5,s5,-368 # 8000c820 <end>
    80007998:	0754ec63          	bltu	s1,s5,80007a10 <kinit+0xc8>
    8000799c:	0734fa63          	bgeu	s1,s3,80007a10 <kinit+0xc8>
    800079a0:	00088a37          	lui	s4,0x88
    800079a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800079a8:	00004917          	auipc	s2,0x4
    800079ac:	b8890913          	addi	s2,s2,-1144 # 8000b530 <kmem>
    800079b0:	00ca1a13          	slli	s4,s4,0xc
    800079b4:	0140006f          	j	800079c8 <kinit+0x80>
    800079b8:	000017b7          	lui	a5,0x1
    800079bc:	00f484b3          	add	s1,s1,a5
    800079c0:	0554e863          	bltu	s1,s5,80007a10 <kinit+0xc8>
    800079c4:	0534f663          	bgeu	s1,s3,80007a10 <kinit+0xc8>
    800079c8:	00001637          	lui	a2,0x1
    800079cc:	00100593          	li	a1,1
    800079d0:	00048513          	mv	a0,s1
    800079d4:	00000097          	auipc	ra,0x0
    800079d8:	5e4080e7          	jalr	1508(ra) # 80007fb8 <__memset>
    800079dc:	00093783          	ld	a5,0(s2)
    800079e0:	00f4b023          	sd	a5,0(s1)
    800079e4:	00993023          	sd	s1,0(s2)
    800079e8:	fd4498e3          	bne	s1,s4,800079b8 <kinit+0x70>
    800079ec:	03813083          	ld	ra,56(sp)
    800079f0:	03013403          	ld	s0,48(sp)
    800079f4:	02813483          	ld	s1,40(sp)
    800079f8:	02013903          	ld	s2,32(sp)
    800079fc:	01813983          	ld	s3,24(sp)
    80007a00:	01013a03          	ld	s4,16(sp)
    80007a04:	00813a83          	ld	s5,8(sp)
    80007a08:	04010113          	addi	sp,sp,64
    80007a0c:	00008067          	ret
    80007a10:	00002517          	auipc	a0,0x2
    80007a14:	ea850513          	addi	a0,a0,-344 # 800098b8 <digits+0x18>
    80007a18:	fffff097          	auipc	ra,0xfffff
    80007a1c:	4b4080e7          	jalr	1204(ra) # 80006ecc <panic>

0000000080007a20 <freerange>:
    80007a20:	fc010113          	addi	sp,sp,-64
    80007a24:	000017b7          	lui	a5,0x1
    80007a28:	02913423          	sd	s1,40(sp)
    80007a2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a30:	009504b3          	add	s1,a0,s1
    80007a34:	fffff537          	lui	a0,0xfffff
    80007a38:	02813823          	sd	s0,48(sp)
    80007a3c:	02113c23          	sd	ra,56(sp)
    80007a40:	03213023          	sd	s2,32(sp)
    80007a44:	01313c23          	sd	s3,24(sp)
    80007a48:	01413823          	sd	s4,16(sp)
    80007a4c:	01513423          	sd	s5,8(sp)
    80007a50:	01613023          	sd	s6,0(sp)
    80007a54:	04010413          	addi	s0,sp,64
    80007a58:	00a4f4b3          	and	s1,s1,a0
    80007a5c:	00f487b3          	add	a5,s1,a5
    80007a60:	06f5e463          	bltu	a1,a5,80007ac8 <freerange+0xa8>
    80007a64:	00005a97          	auipc	s5,0x5
    80007a68:	dbca8a93          	addi	s5,s5,-580 # 8000c820 <end>
    80007a6c:	0954e263          	bltu	s1,s5,80007af0 <freerange+0xd0>
    80007a70:	01100993          	li	s3,17
    80007a74:	01b99993          	slli	s3,s3,0x1b
    80007a78:	0734fc63          	bgeu	s1,s3,80007af0 <freerange+0xd0>
    80007a7c:	00058a13          	mv	s4,a1
    80007a80:	00004917          	auipc	s2,0x4
    80007a84:	ab090913          	addi	s2,s2,-1360 # 8000b530 <kmem>
    80007a88:	00002b37          	lui	s6,0x2
    80007a8c:	0140006f          	j	80007aa0 <freerange+0x80>
    80007a90:	000017b7          	lui	a5,0x1
    80007a94:	00f484b3          	add	s1,s1,a5
    80007a98:	0554ec63          	bltu	s1,s5,80007af0 <freerange+0xd0>
    80007a9c:	0534fa63          	bgeu	s1,s3,80007af0 <freerange+0xd0>
    80007aa0:	00001637          	lui	a2,0x1
    80007aa4:	00100593          	li	a1,1
    80007aa8:	00048513          	mv	a0,s1
    80007aac:	00000097          	auipc	ra,0x0
    80007ab0:	50c080e7          	jalr	1292(ra) # 80007fb8 <__memset>
    80007ab4:	00093703          	ld	a4,0(s2)
    80007ab8:	016487b3          	add	a5,s1,s6
    80007abc:	00e4b023          	sd	a4,0(s1)
    80007ac0:	00993023          	sd	s1,0(s2)
    80007ac4:	fcfa76e3          	bgeu	s4,a5,80007a90 <freerange+0x70>
    80007ac8:	03813083          	ld	ra,56(sp)
    80007acc:	03013403          	ld	s0,48(sp)
    80007ad0:	02813483          	ld	s1,40(sp)
    80007ad4:	02013903          	ld	s2,32(sp)
    80007ad8:	01813983          	ld	s3,24(sp)
    80007adc:	01013a03          	ld	s4,16(sp)
    80007ae0:	00813a83          	ld	s5,8(sp)
    80007ae4:	00013b03          	ld	s6,0(sp)
    80007ae8:	04010113          	addi	sp,sp,64
    80007aec:	00008067          	ret
    80007af0:	00002517          	auipc	a0,0x2
    80007af4:	dc850513          	addi	a0,a0,-568 # 800098b8 <digits+0x18>
    80007af8:	fffff097          	auipc	ra,0xfffff
    80007afc:	3d4080e7          	jalr	980(ra) # 80006ecc <panic>

0000000080007b00 <kfree>:
    80007b00:	fe010113          	addi	sp,sp,-32
    80007b04:	00813823          	sd	s0,16(sp)
    80007b08:	00113c23          	sd	ra,24(sp)
    80007b0c:	00913423          	sd	s1,8(sp)
    80007b10:	02010413          	addi	s0,sp,32
    80007b14:	03451793          	slli	a5,a0,0x34
    80007b18:	04079c63          	bnez	a5,80007b70 <kfree+0x70>
    80007b1c:	00005797          	auipc	a5,0x5
    80007b20:	d0478793          	addi	a5,a5,-764 # 8000c820 <end>
    80007b24:	00050493          	mv	s1,a0
    80007b28:	04f56463          	bltu	a0,a5,80007b70 <kfree+0x70>
    80007b2c:	01100793          	li	a5,17
    80007b30:	01b79793          	slli	a5,a5,0x1b
    80007b34:	02f57e63          	bgeu	a0,a5,80007b70 <kfree+0x70>
    80007b38:	00001637          	lui	a2,0x1
    80007b3c:	00100593          	li	a1,1
    80007b40:	00000097          	auipc	ra,0x0
    80007b44:	478080e7          	jalr	1144(ra) # 80007fb8 <__memset>
    80007b48:	00004797          	auipc	a5,0x4
    80007b4c:	9e878793          	addi	a5,a5,-1560 # 8000b530 <kmem>
    80007b50:	0007b703          	ld	a4,0(a5)
    80007b54:	01813083          	ld	ra,24(sp)
    80007b58:	01013403          	ld	s0,16(sp)
    80007b5c:	00e4b023          	sd	a4,0(s1)
    80007b60:	0097b023          	sd	s1,0(a5)
    80007b64:	00813483          	ld	s1,8(sp)
    80007b68:	02010113          	addi	sp,sp,32
    80007b6c:	00008067          	ret
    80007b70:	00002517          	auipc	a0,0x2
    80007b74:	d4850513          	addi	a0,a0,-696 # 800098b8 <digits+0x18>
    80007b78:	fffff097          	auipc	ra,0xfffff
    80007b7c:	354080e7          	jalr	852(ra) # 80006ecc <panic>

0000000080007b80 <kalloc>:
    80007b80:	fe010113          	addi	sp,sp,-32
    80007b84:	00813823          	sd	s0,16(sp)
    80007b88:	00913423          	sd	s1,8(sp)
    80007b8c:	00113c23          	sd	ra,24(sp)
    80007b90:	02010413          	addi	s0,sp,32
    80007b94:	00004797          	auipc	a5,0x4
    80007b98:	99c78793          	addi	a5,a5,-1636 # 8000b530 <kmem>
    80007b9c:	0007b483          	ld	s1,0(a5)
    80007ba0:	02048063          	beqz	s1,80007bc0 <kalloc+0x40>
    80007ba4:	0004b703          	ld	a4,0(s1)
    80007ba8:	00001637          	lui	a2,0x1
    80007bac:	00500593          	li	a1,5
    80007bb0:	00048513          	mv	a0,s1
    80007bb4:	00e7b023          	sd	a4,0(a5)
    80007bb8:	00000097          	auipc	ra,0x0
    80007bbc:	400080e7          	jalr	1024(ra) # 80007fb8 <__memset>
    80007bc0:	01813083          	ld	ra,24(sp)
    80007bc4:	01013403          	ld	s0,16(sp)
    80007bc8:	00048513          	mv	a0,s1
    80007bcc:	00813483          	ld	s1,8(sp)
    80007bd0:	02010113          	addi	sp,sp,32
    80007bd4:	00008067          	ret

0000000080007bd8 <initlock>:
    80007bd8:	ff010113          	addi	sp,sp,-16
    80007bdc:	00813423          	sd	s0,8(sp)
    80007be0:	01010413          	addi	s0,sp,16
    80007be4:	00813403          	ld	s0,8(sp)
    80007be8:	00b53423          	sd	a1,8(a0)
    80007bec:	00052023          	sw	zero,0(a0)
    80007bf0:	00053823          	sd	zero,16(a0)
    80007bf4:	01010113          	addi	sp,sp,16
    80007bf8:	00008067          	ret

0000000080007bfc <acquire>:
    80007bfc:	fe010113          	addi	sp,sp,-32
    80007c00:	00813823          	sd	s0,16(sp)
    80007c04:	00913423          	sd	s1,8(sp)
    80007c08:	00113c23          	sd	ra,24(sp)
    80007c0c:	01213023          	sd	s2,0(sp)
    80007c10:	02010413          	addi	s0,sp,32
    80007c14:	00050493          	mv	s1,a0
    80007c18:	10002973          	csrr	s2,sstatus
    80007c1c:	100027f3          	csrr	a5,sstatus
    80007c20:	ffd7f793          	andi	a5,a5,-3
    80007c24:	10079073          	csrw	sstatus,a5
    80007c28:	fffff097          	auipc	ra,0xfffff
    80007c2c:	8e0080e7          	jalr	-1824(ra) # 80006508 <mycpu>
    80007c30:	07852783          	lw	a5,120(a0)
    80007c34:	06078e63          	beqz	a5,80007cb0 <acquire+0xb4>
    80007c38:	fffff097          	auipc	ra,0xfffff
    80007c3c:	8d0080e7          	jalr	-1840(ra) # 80006508 <mycpu>
    80007c40:	07852783          	lw	a5,120(a0)
    80007c44:	0004a703          	lw	a4,0(s1)
    80007c48:	0017879b          	addiw	a5,a5,1
    80007c4c:	06f52c23          	sw	a5,120(a0)
    80007c50:	04071063          	bnez	a4,80007c90 <acquire+0x94>
    80007c54:	00100713          	li	a4,1
    80007c58:	00070793          	mv	a5,a4
    80007c5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007c60:	0007879b          	sext.w	a5,a5
    80007c64:	fe079ae3          	bnez	a5,80007c58 <acquire+0x5c>
    80007c68:	0ff0000f          	fence
    80007c6c:	fffff097          	auipc	ra,0xfffff
    80007c70:	89c080e7          	jalr	-1892(ra) # 80006508 <mycpu>
    80007c74:	01813083          	ld	ra,24(sp)
    80007c78:	01013403          	ld	s0,16(sp)
    80007c7c:	00a4b823          	sd	a0,16(s1)
    80007c80:	00013903          	ld	s2,0(sp)
    80007c84:	00813483          	ld	s1,8(sp)
    80007c88:	02010113          	addi	sp,sp,32
    80007c8c:	00008067          	ret
    80007c90:	0104b903          	ld	s2,16(s1)
    80007c94:	fffff097          	auipc	ra,0xfffff
    80007c98:	874080e7          	jalr	-1932(ra) # 80006508 <mycpu>
    80007c9c:	faa91ce3          	bne	s2,a0,80007c54 <acquire+0x58>
    80007ca0:	00002517          	auipc	a0,0x2
    80007ca4:	c2050513          	addi	a0,a0,-992 # 800098c0 <digits+0x20>
    80007ca8:	fffff097          	auipc	ra,0xfffff
    80007cac:	224080e7          	jalr	548(ra) # 80006ecc <panic>
    80007cb0:	00195913          	srli	s2,s2,0x1
    80007cb4:	fffff097          	auipc	ra,0xfffff
    80007cb8:	854080e7          	jalr	-1964(ra) # 80006508 <mycpu>
    80007cbc:	00197913          	andi	s2,s2,1
    80007cc0:	07252e23          	sw	s2,124(a0)
    80007cc4:	f75ff06f          	j	80007c38 <acquire+0x3c>

0000000080007cc8 <release>:
    80007cc8:	fe010113          	addi	sp,sp,-32
    80007ccc:	00813823          	sd	s0,16(sp)
    80007cd0:	00113c23          	sd	ra,24(sp)
    80007cd4:	00913423          	sd	s1,8(sp)
    80007cd8:	01213023          	sd	s2,0(sp)
    80007cdc:	02010413          	addi	s0,sp,32
    80007ce0:	00052783          	lw	a5,0(a0)
    80007ce4:	00079a63          	bnez	a5,80007cf8 <release+0x30>
    80007ce8:	00002517          	auipc	a0,0x2
    80007cec:	be050513          	addi	a0,a0,-1056 # 800098c8 <digits+0x28>
    80007cf0:	fffff097          	auipc	ra,0xfffff
    80007cf4:	1dc080e7          	jalr	476(ra) # 80006ecc <panic>
    80007cf8:	01053903          	ld	s2,16(a0)
    80007cfc:	00050493          	mv	s1,a0
    80007d00:	fffff097          	auipc	ra,0xfffff
    80007d04:	808080e7          	jalr	-2040(ra) # 80006508 <mycpu>
    80007d08:	fea910e3          	bne	s2,a0,80007ce8 <release+0x20>
    80007d0c:	0004b823          	sd	zero,16(s1)
    80007d10:	0ff0000f          	fence
    80007d14:	0f50000f          	fence	iorw,ow
    80007d18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007d1c:	ffffe097          	auipc	ra,0xffffe
    80007d20:	7ec080e7          	jalr	2028(ra) # 80006508 <mycpu>
    80007d24:	100027f3          	csrr	a5,sstatus
    80007d28:	0027f793          	andi	a5,a5,2
    80007d2c:	04079a63          	bnez	a5,80007d80 <release+0xb8>
    80007d30:	07852783          	lw	a5,120(a0)
    80007d34:	02f05e63          	blez	a5,80007d70 <release+0xa8>
    80007d38:	fff7871b          	addiw	a4,a5,-1
    80007d3c:	06e52c23          	sw	a4,120(a0)
    80007d40:	00071c63          	bnez	a4,80007d58 <release+0x90>
    80007d44:	07c52783          	lw	a5,124(a0)
    80007d48:	00078863          	beqz	a5,80007d58 <release+0x90>
    80007d4c:	100027f3          	csrr	a5,sstatus
    80007d50:	0027e793          	ori	a5,a5,2
    80007d54:	10079073          	csrw	sstatus,a5
    80007d58:	01813083          	ld	ra,24(sp)
    80007d5c:	01013403          	ld	s0,16(sp)
    80007d60:	00813483          	ld	s1,8(sp)
    80007d64:	00013903          	ld	s2,0(sp)
    80007d68:	02010113          	addi	sp,sp,32
    80007d6c:	00008067          	ret
    80007d70:	00002517          	auipc	a0,0x2
    80007d74:	b7850513          	addi	a0,a0,-1160 # 800098e8 <digits+0x48>
    80007d78:	fffff097          	auipc	ra,0xfffff
    80007d7c:	154080e7          	jalr	340(ra) # 80006ecc <panic>
    80007d80:	00002517          	auipc	a0,0x2
    80007d84:	b5050513          	addi	a0,a0,-1200 # 800098d0 <digits+0x30>
    80007d88:	fffff097          	auipc	ra,0xfffff
    80007d8c:	144080e7          	jalr	324(ra) # 80006ecc <panic>

0000000080007d90 <holding>:
    80007d90:	00052783          	lw	a5,0(a0)
    80007d94:	00079663          	bnez	a5,80007da0 <holding+0x10>
    80007d98:	00000513          	li	a0,0
    80007d9c:	00008067          	ret
    80007da0:	fe010113          	addi	sp,sp,-32
    80007da4:	00813823          	sd	s0,16(sp)
    80007da8:	00913423          	sd	s1,8(sp)
    80007dac:	00113c23          	sd	ra,24(sp)
    80007db0:	02010413          	addi	s0,sp,32
    80007db4:	01053483          	ld	s1,16(a0)
    80007db8:	ffffe097          	auipc	ra,0xffffe
    80007dbc:	750080e7          	jalr	1872(ra) # 80006508 <mycpu>
    80007dc0:	01813083          	ld	ra,24(sp)
    80007dc4:	01013403          	ld	s0,16(sp)
    80007dc8:	40a48533          	sub	a0,s1,a0
    80007dcc:	00153513          	seqz	a0,a0
    80007dd0:	00813483          	ld	s1,8(sp)
    80007dd4:	02010113          	addi	sp,sp,32
    80007dd8:	00008067          	ret

0000000080007ddc <push_off>:
    80007ddc:	fe010113          	addi	sp,sp,-32
    80007de0:	00813823          	sd	s0,16(sp)
    80007de4:	00113c23          	sd	ra,24(sp)
    80007de8:	00913423          	sd	s1,8(sp)
    80007dec:	02010413          	addi	s0,sp,32
    80007df0:	100024f3          	csrr	s1,sstatus
    80007df4:	100027f3          	csrr	a5,sstatus
    80007df8:	ffd7f793          	andi	a5,a5,-3
    80007dfc:	10079073          	csrw	sstatus,a5
    80007e00:	ffffe097          	auipc	ra,0xffffe
    80007e04:	708080e7          	jalr	1800(ra) # 80006508 <mycpu>
    80007e08:	07852783          	lw	a5,120(a0)
    80007e0c:	02078663          	beqz	a5,80007e38 <push_off+0x5c>
    80007e10:	ffffe097          	auipc	ra,0xffffe
    80007e14:	6f8080e7          	jalr	1784(ra) # 80006508 <mycpu>
    80007e18:	07852783          	lw	a5,120(a0)
    80007e1c:	01813083          	ld	ra,24(sp)
    80007e20:	01013403          	ld	s0,16(sp)
    80007e24:	0017879b          	addiw	a5,a5,1
    80007e28:	06f52c23          	sw	a5,120(a0)
    80007e2c:	00813483          	ld	s1,8(sp)
    80007e30:	02010113          	addi	sp,sp,32
    80007e34:	00008067          	ret
    80007e38:	0014d493          	srli	s1,s1,0x1
    80007e3c:	ffffe097          	auipc	ra,0xffffe
    80007e40:	6cc080e7          	jalr	1740(ra) # 80006508 <mycpu>
    80007e44:	0014f493          	andi	s1,s1,1
    80007e48:	06952e23          	sw	s1,124(a0)
    80007e4c:	fc5ff06f          	j	80007e10 <push_off+0x34>

0000000080007e50 <pop_off>:
    80007e50:	ff010113          	addi	sp,sp,-16
    80007e54:	00813023          	sd	s0,0(sp)
    80007e58:	00113423          	sd	ra,8(sp)
    80007e5c:	01010413          	addi	s0,sp,16
    80007e60:	ffffe097          	auipc	ra,0xffffe
    80007e64:	6a8080e7          	jalr	1704(ra) # 80006508 <mycpu>
    80007e68:	100027f3          	csrr	a5,sstatus
    80007e6c:	0027f793          	andi	a5,a5,2
    80007e70:	04079663          	bnez	a5,80007ebc <pop_off+0x6c>
    80007e74:	07852783          	lw	a5,120(a0)
    80007e78:	02f05a63          	blez	a5,80007eac <pop_off+0x5c>
    80007e7c:	fff7871b          	addiw	a4,a5,-1
    80007e80:	06e52c23          	sw	a4,120(a0)
    80007e84:	00071c63          	bnez	a4,80007e9c <pop_off+0x4c>
    80007e88:	07c52783          	lw	a5,124(a0)
    80007e8c:	00078863          	beqz	a5,80007e9c <pop_off+0x4c>
    80007e90:	100027f3          	csrr	a5,sstatus
    80007e94:	0027e793          	ori	a5,a5,2
    80007e98:	10079073          	csrw	sstatus,a5
    80007e9c:	00813083          	ld	ra,8(sp)
    80007ea0:	00013403          	ld	s0,0(sp)
    80007ea4:	01010113          	addi	sp,sp,16
    80007ea8:	00008067          	ret
    80007eac:	00002517          	auipc	a0,0x2
    80007eb0:	a3c50513          	addi	a0,a0,-1476 # 800098e8 <digits+0x48>
    80007eb4:	fffff097          	auipc	ra,0xfffff
    80007eb8:	018080e7          	jalr	24(ra) # 80006ecc <panic>
    80007ebc:	00002517          	auipc	a0,0x2
    80007ec0:	a1450513          	addi	a0,a0,-1516 # 800098d0 <digits+0x30>
    80007ec4:	fffff097          	auipc	ra,0xfffff
    80007ec8:	008080e7          	jalr	8(ra) # 80006ecc <panic>

0000000080007ecc <push_on>:
    80007ecc:	fe010113          	addi	sp,sp,-32
    80007ed0:	00813823          	sd	s0,16(sp)
    80007ed4:	00113c23          	sd	ra,24(sp)
    80007ed8:	00913423          	sd	s1,8(sp)
    80007edc:	02010413          	addi	s0,sp,32
    80007ee0:	100024f3          	csrr	s1,sstatus
    80007ee4:	100027f3          	csrr	a5,sstatus
    80007ee8:	0027e793          	ori	a5,a5,2
    80007eec:	10079073          	csrw	sstatus,a5
    80007ef0:	ffffe097          	auipc	ra,0xffffe
    80007ef4:	618080e7          	jalr	1560(ra) # 80006508 <mycpu>
    80007ef8:	07852783          	lw	a5,120(a0)
    80007efc:	02078663          	beqz	a5,80007f28 <push_on+0x5c>
    80007f00:	ffffe097          	auipc	ra,0xffffe
    80007f04:	608080e7          	jalr	1544(ra) # 80006508 <mycpu>
    80007f08:	07852783          	lw	a5,120(a0)
    80007f0c:	01813083          	ld	ra,24(sp)
    80007f10:	01013403          	ld	s0,16(sp)
    80007f14:	0017879b          	addiw	a5,a5,1
    80007f18:	06f52c23          	sw	a5,120(a0)
    80007f1c:	00813483          	ld	s1,8(sp)
    80007f20:	02010113          	addi	sp,sp,32
    80007f24:	00008067          	ret
    80007f28:	0014d493          	srli	s1,s1,0x1
    80007f2c:	ffffe097          	auipc	ra,0xffffe
    80007f30:	5dc080e7          	jalr	1500(ra) # 80006508 <mycpu>
    80007f34:	0014f493          	andi	s1,s1,1
    80007f38:	06952e23          	sw	s1,124(a0)
    80007f3c:	fc5ff06f          	j	80007f00 <push_on+0x34>

0000000080007f40 <pop_on>:
    80007f40:	ff010113          	addi	sp,sp,-16
    80007f44:	00813023          	sd	s0,0(sp)
    80007f48:	00113423          	sd	ra,8(sp)
    80007f4c:	01010413          	addi	s0,sp,16
    80007f50:	ffffe097          	auipc	ra,0xffffe
    80007f54:	5b8080e7          	jalr	1464(ra) # 80006508 <mycpu>
    80007f58:	100027f3          	csrr	a5,sstatus
    80007f5c:	0027f793          	andi	a5,a5,2
    80007f60:	04078463          	beqz	a5,80007fa8 <pop_on+0x68>
    80007f64:	07852783          	lw	a5,120(a0)
    80007f68:	02f05863          	blez	a5,80007f98 <pop_on+0x58>
    80007f6c:	fff7879b          	addiw	a5,a5,-1
    80007f70:	06f52c23          	sw	a5,120(a0)
    80007f74:	07853783          	ld	a5,120(a0)
    80007f78:	00079863          	bnez	a5,80007f88 <pop_on+0x48>
    80007f7c:	100027f3          	csrr	a5,sstatus
    80007f80:	ffd7f793          	andi	a5,a5,-3
    80007f84:	10079073          	csrw	sstatus,a5
    80007f88:	00813083          	ld	ra,8(sp)
    80007f8c:	00013403          	ld	s0,0(sp)
    80007f90:	01010113          	addi	sp,sp,16
    80007f94:	00008067          	ret
    80007f98:	00002517          	auipc	a0,0x2
    80007f9c:	97850513          	addi	a0,a0,-1672 # 80009910 <digits+0x70>
    80007fa0:	fffff097          	auipc	ra,0xfffff
    80007fa4:	f2c080e7          	jalr	-212(ra) # 80006ecc <panic>
    80007fa8:	00002517          	auipc	a0,0x2
    80007fac:	94850513          	addi	a0,a0,-1720 # 800098f0 <digits+0x50>
    80007fb0:	fffff097          	auipc	ra,0xfffff
    80007fb4:	f1c080e7          	jalr	-228(ra) # 80006ecc <panic>

0000000080007fb8 <__memset>:
    80007fb8:	ff010113          	addi	sp,sp,-16
    80007fbc:	00813423          	sd	s0,8(sp)
    80007fc0:	01010413          	addi	s0,sp,16
    80007fc4:	1a060e63          	beqz	a2,80008180 <__memset+0x1c8>
    80007fc8:	40a007b3          	neg	a5,a0
    80007fcc:	0077f793          	andi	a5,a5,7
    80007fd0:	00778693          	addi	a3,a5,7
    80007fd4:	00b00813          	li	a6,11
    80007fd8:	0ff5f593          	andi	a1,a1,255
    80007fdc:	fff6071b          	addiw	a4,a2,-1
    80007fe0:	1b06e663          	bltu	a3,a6,8000818c <__memset+0x1d4>
    80007fe4:	1cd76463          	bltu	a4,a3,800081ac <__memset+0x1f4>
    80007fe8:	1a078e63          	beqz	a5,800081a4 <__memset+0x1ec>
    80007fec:	00b50023          	sb	a1,0(a0)
    80007ff0:	00100713          	li	a4,1
    80007ff4:	1ae78463          	beq	a5,a4,8000819c <__memset+0x1e4>
    80007ff8:	00b500a3          	sb	a1,1(a0)
    80007ffc:	00200713          	li	a4,2
    80008000:	1ae78a63          	beq	a5,a4,800081b4 <__memset+0x1fc>
    80008004:	00b50123          	sb	a1,2(a0)
    80008008:	00300713          	li	a4,3
    8000800c:	18e78463          	beq	a5,a4,80008194 <__memset+0x1dc>
    80008010:	00b501a3          	sb	a1,3(a0)
    80008014:	00400713          	li	a4,4
    80008018:	1ae78263          	beq	a5,a4,800081bc <__memset+0x204>
    8000801c:	00b50223          	sb	a1,4(a0)
    80008020:	00500713          	li	a4,5
    80008024:	1ae78063          	beq	a5,a4,800081c4 <__memset+0x20c>
    80008028:	00b502a3          	sb	a1,5(a0)
    8000802c:	00700713          	li	a4,7
    80008030:	18e79e63          	bne	a5,a4,800081cc <__memset+0x214>
    80008034:	00b50323          	sb	a1,6(a0)
    80008038:	00700e93          	li	t4,7
    8000803c:	00859713          	slli	a4,a1,0x8
    80008040:	00e5e733          	or	a4,a1,a4
    80008044:	01059e13          	slli	t3,a1,0x10
    80008048:	01c76e33          	or	t3,a4,t3
    8000804c:	01859313          	slli	t1,a1,0x18
    80008050:	006e6333          	or	t1,t3,t1
    80008054:	02059893          	slli	a7,a1,0x20
    80008058:	40f60e3b          	subw	t3,a2,a5
    8000805c:	011368b3          	or	a7,t1,a7
    80008060:	02859813          	slli	a6,a1,0x28
    80008064:	0108e833          	or	a6,a7,a6
    80008068:	03059693          	slli	a3,a1,0x30
    8000806c:	003e589b          	srliw	a7,t3,0x3
    80008070:	00d866b3          	or	a3,a6,a3
    80008074:	03859713          	slli	a4,a1,0x38
    80008078:	00389813          	slli	a6,a7,0x3
    8000807c:	00f507b3          	add	a5,a0,a5
    80008080:	00e6e733          	or	a4,a3,a4
    80008084:	000e089b          	sext.w	a7,t3
    80008088:	00f806b3          	add	a3,a6,a5
    8000808c:	00e7b023          	sd	a4,0(a5)
    80008090:	00878793          	addi	a5,a5,8
    80008094:	fed79ce3          	bne	a5,a3,8000808c <__memset+0xd4>
    80008098:	ff8e7793          	andi	a5,t3,-8
    8000809c:	0007871b          	sext.w	a4,a5
    800080a0:	01d787bb          	addw	a5,a5,t4
    800080a4:	0ce88e63          	beq	a7,a4,80008180 <__memset+0x1c8>
    800080a8:	00f50733          	add	a4,a0,a5
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	0017871b          	addiw	a4,a5,1
    800080b4:	0cc77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	0027871b          	addiw	a4,a5,2
    800080c4:	0ac77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080c8:	00e50733          	add	a4,a0,a4
    800080cc:	00b70023          	sb	a1,0(a4)
    800080d0:	0037871b          	addiw	a4,a5,3
    800080d4:	0ac77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080d8:	00e50733          	add	a4,a0,a4
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	0047871b          	addiw	a4,a5,4
    800080e4:	08c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	0057871b          	addiw	a4,a5,5
    800080f4:	08c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0067871b          	addiw	a4,a5,6
    80008104:	06c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	0077871b          	addiw	a4,a5,7
    80008114:	06c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	0087871b          	addiw	a4,a5,8
    80008124:	04c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	0097871b          	addiw	a4,a5,9
    80008134:	04c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	00a7871b          	addiw	a4,a5,10
    80008144:	02c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	00b7871b          	addiw	a4,a5,11
    80008154:	02c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008158:	00e50733          	add	a4,a0,a4
    8000815c:	00b70023          	sb	a1,0(a4)
    80008160:	00c7871b          	addiw	a4,a5,12
    80008164:	00c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008168:	00e50733          	add	a4,a0,a4
    8000816c:	00b70023          	sb	a1,0(a4)
    80008170:	00d7879b          	addiw	a5,a5,13
    80008174:	00c7f663          	bgeu	a5,a2,80008180 <__memset+0x1c8>
    80008178:	00f507b3          	add	a5,a0,a5
    8000817c:	00b78023          	sb	a1,0(a5)
    80008180:	00813403          	ld	s0,8(sp)
    80008184:	01010113          	addi	sp,sp,16
    80008188:	00008067          	ret
    8000818c:	00b00693          	li	a3,11
    80008190:	e55ff06f          	j	80007fe4 <__memset+0x2c>
    80008194:	00300e93          	li	t4,3
    80008198:	ea5ff06f          	j	8000803c <__memset+0x84>
    8000819c:	00100e93          	li	t4,1
    800081a0:	e9dff06f          	j	8000803c <__memset+0x84>
    800081a4:	00000e93          	li	t4,0
    800081a8:	e95ff06f          	j	8000803c <__memset+0x84>
    800081ac:	00000793          	li	a5,0
    800081b0:	ef9ff06f          	j	800080a8 <__memset+0xf0>
    800081b4:	00200e93          	li	t4,2
    800081b8:	e85ff06f          	j	8000803c <__memset+0x84>
    800081bc:	00400e93          	li	t4,4
    800081c0:	e7dff06f          	j	8000803c <__memset+0x84>
    800081c4:	00500e93          	li	t4,5
    800081c8:	e75ff06f          	j	8000803c <__memset+0x84>
    800081cc:	00600e93          	li	t4,6
    800081d0:	e6dff06f          	j	8000803c <__memset+0x84>

00000000800081d4 <__memmove>:
    800081d4:	ff010113          	addi	sp,sp,-16
    800081d8:	00813423          	sd	s0,8(sp)
    800081dc:	01010413          	addi	s0,sp,16
    800081e0:	0e060863          	beqz	a2,800082d0 <__memmove+0xfc>
    800081e4:	fff6069b          	addiw	a3,a2,-1
    800081e8:	0006881b          	sext.w	a6,a3
    800081ec:	0ea5e863          	bltu	a1,a0,800082dc <__memmove+0x108>
    800081f0:	00758713          	addi	a4,a1,7
    800081f4:	00a5e7b3          	or	a5,a1,a0
    800081f8:	40a70733          	sub	a4,a4,a0
    800081fc:	0077f793          	andi	a5,a5,7
    80008200:	00f73713          	sltiu	a4,a4,15
    80008204:	00174713          	xori	a4,a4,1
    80008208:	0017b793          	seqz	a5,a5
    8000820c:	00e7f7b3          	and	a5,a5,a4
    80008210:	10078863          	beqz	a5,80008320 <__memmove+0x14c>
    80008214:	00900793          	li	a5,9
    80008218:	1107f463          	bgeu	a5,a6,80008320 <__memmove+0x14c>
    8000821c:	0036581b          	srliw	a6,a2,0x3
    80008220:	fff8081b          	addiw	a6,a6,-1
    80008224:	02081813          	slli	a6,a6,0x20
    80008228:	01d85893          	srli	a7,a6,0x1d
    8000822c:	00858813          	addi	a6,a1,8
    80008230:	00058793          	mv	a5,a1
    80008234:	00050713          	mv	a4,a0
    80008238:	01088833          	add	a6,a7,a6
    8000823c:	0007b883          	ld	a7,0(a5)
    80008240:	00878793          	addi	a5,a5,8
    80008244:	00870713          	addi	a4,a4,8
    80008248:	ff173c23          	sd	a7,-8(a4)
    8000824c:	ff0798e3          	bne	a5,a6,8000823c <__memmove+0x68>
    80008250:	ff867713          	andi	a4,a2,-8
    80008254:	02071793          	slli	a5,a4,0x20
    80008258:	0207d793          	srli	a5,a5,0x20
    8000825c:	00f585b3          	add	a1,a1,a5
    80008260:	40e686bb          	subw	a3,a3,a4
    80008264:	00f507b3          	add	a5,a0,a5
    80008268:	06e60463          	beq	a2,a4,800082d0 <__memmove+0xfc>
    8000826c:	0005c703          	lbu	a4,0(a1)
    80008270:	00e78023          	sb	a4,0(a5)
    80008274:	04068e63          	beqz	a3,800082d0 <__memmove+0xfc>
    80008278:	0015c603          	lbu	a2,1(a1)
    8000827c:	00100713          	li	a4,1
    80008280:	00c780a3          	sb	a2,1(a5)
    80008284:	04e68663          	beq	a3,a4,800082d0 <__memmove+0xfc>
    80008288:	0025c603          	lbu	a2,2(a1)
    8000828c:	00200713          	li	a4,2
    80008290:	00c78123          	sb	a2,2(a5)
    80008294:	02e68e63          	beq	a3,a4,800082d0 <__memmove+0xfc>
    80008298:	0035c603          	lbu	a2,3(a1)
    8000829c:	00300713          	li	a4,3
    800082a0:	00c781a3          	sb	a2,3(a5)
    800082a4:	02e68663          	beq	a3,a4,800082d0 <__memmove+0xfc>
    800082a8:	0045c603          	lbu	a2,4(a1)
    800082ac:	00400713          	li	a4,4
    800082b0:	00c78223          	sb	a2,4(a5)
    800082b4:	00e68e63          	beq	a3,a4,800082d0 <__memmove+0xfc>
    800082b8:	0055c603          	lbu	a2,5(a1)
    800082bc:	00500713          	li	a4,5
    800082c0:	00c782a3          	sb	a2,5(a5)
    800082c4:	00e68663          	beq	a3,a4,800082d0 <__memmove+0xfc>
    800082c8:	0065c703          	lbu	a4,6(a1)
    800082cc:	00e78323          	sb	a4,6(a5)
    800082d0:	00813403          	ld	s0,8(sp)
    800082d4:	01010113          	addi	sp,sp,16
    800082d8:	00008067          	ret
    800082dc:	02061713          	slli	a4,a2,0x20
    800082e0:	02075713          	srli	a4,a4,0x20
    800082e4:	00e587b3          	add	a5,a1,a4
    800082e8:	f0f574e3          	bgeu	a0,a5,800081f0 <__memmove+0x1c>
    800082ec:	02069613          	slli	a2,a3,0x20
    800082f0:	02065613          	srli	a2,a2,0x20
    800082f4:	fff64613          	not	a2,a2
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00c78633          	add	a2,a5,a2
    80008300:	fff7c683          	lbu	a3,-1(a5)
    80008304:	fff78793          	addi	a5,a5,-1
    80008308:	fff70713          	addi	a4,a4,-1
    8000830c:	00d70023          	sb	a3,0(a4)
    80008310:	fec798e3          	bne	a5,a2,80008300 <__memmove+0x12c>
    80008314:	00813403          	ld	s0,8(sp)
    80008318:	01010113          	addi	sp,sp,16
    8000831c:	00008067          	ret
    80008320:	02069713          	slli	a4,a3,0x20
    80008324:	02075713          	srli	a4,a4,0x20
    80008328:	00170713          	addi	a4,a4,1
    8000832c:	00e50733          	add	a4,a0,a4
    80008330:	00050793          	mv	a5,a0
    80008334:	0005c683          	lbu	a3,0(a1)
    80008338:	00178793          	addi	a5,a5,1
    8000833c:	00158593          	addi	a1,a1,1
    80008340:	fed78fa3          	sb	a3,-1(a5)
    80008344:	fee798e3          	bne	a5,a4,80008334 <__memmove+0x160>
    80008348:	f89ff06f          	j	800082d0 <__memmove+0xfc>

000000008000834c <__putc>:
    8000834c:	fe010113          	addi	sp,sp,-32
    80008350:	00813823          	sd	s0,16(sp)
    80008354:	00113c23          	sd	ra,24(sp)
    80008358:	02010413          	addi	s0,sp,32
    8000835c:	00050793          	mv	a5,a0
    80008360:	fef40593          	addi	a1,s0,-17
    80008364:	00100613          	li	a2,1
    80008368:	00000513          	li	a0,0
    8000836c:	fef407a3          	sb	a5,-17(s0)
    80008370:	fffff097          	auipc	ra,0xfffff
    80008374:	b3c080e7          	jalr	-1220(ra) # 80006eac <console_write>
    80008378:	01813083          	ld	ra,24(sp)
    8000837c:	01013403          	ld	s0,16(sp)
    80008380:	02010113          	addi	sp,sp,32
    80008384:	00008067          	ret

0000000080008388 <__getc>:
    80008388:	fe010113          	addi	sp,sp,-32
    8000838c:	00813823          	sd	s0,16(sp)
    80008390:	00113c23          	sd	ra,24(sp)
    80008394:	02010413          	addi	s0,sp,32
    80008398:	fe840593          	addi	a1,s0,-24
    8000839c:	00100613          	li	a2,1
    800083a0:	00000513          	li	a0,0
    800083a4:	fffff097          	auipc	ra,0xfffff
    800083a8:	ae8080e7          	jalr	-1304(ra) # 80006e8c <console_read>
    800083ac:	fe844503          	lbu	a0,-24(s0)
    800083b0:	01813083          	ld	ra,24(sp)
    800083b4:	01013403          	ld	s0,16(sp)
    800083b8:	02010113          	addi	sp,sp,32
    800083bc:	00008067          	ret

00000000800083c0 <console_handler>:
    800083c0:	fe010113          	addi	sp,sp,-32
    800083c4:	00813823          	sd	s0,16(sp)
    800083c8:	00113c23          	sd	ra,24(sp)
    800083cc:	00913423          	sd	s1,8(sp)
    800083d0:	02010413          	addi	s0,sp,32
    800083d4:	14202773          	csrr	a4,scause
    800083d8:	100027f3          	csrr	a5,sstatus
    800083dc:	0027f793          	andi	a5,a5,2
    800083e0:	06079e63          	bnez	a5,8000845c <console_handler+0x9c>
    800083e4:	00074c63          	bltz	a4,800083fc <console_handler+0x3c>
    800083e8:	01813083          	ld	ra,24(sp)
    800083ec:	01013403          	ld	s0,16(sp)
    800083f0:	00813483          	ld	s1,8(sp)
    800083f4:	02010113          	addi	sp,sp,32
    800083f8:	00008067          	ret
    800083fc:	0ff77713          	andi	a4,a4,255
    80008400:	00900793          	li	a5,9
    80008404:	fef712e3          	bne	a4,a5,800083e8 <console_handler+0x28>
    80008408:	ffffe097          	auipc	ra,0xffffe
    8000840c:	6dc080e7          	jalr	1756(ra) # 80006ae4 <plic_claim>
    80008410:	00a00793          	li	a5,10
    80008414:	00050493          	mv	s1,a0
    80008418:	02f50c63          	beq	a0,a5,80008450 <console_handler+0x90>
    8000841c:	fc0506e3          	beqz	a0,800083e8 <console_handler+0x28>
    80008420:	00050593          	mv	a1,a0
    80008424:	00001517          	auipc	a0,0x1
    80008428:	3f450513          	addi	a0,a0,1012 # 80009818 <CONSOLE_STATUS+0x808>
    8000842c:	fffff097          	auipc	ra,0xfffff
    80008430:	afc080e7          	jalr	-1284(ra) # 80006f28 <__printf>
    80008434:	01013403          	ld	s0,16(sp)
    80008438:	01813083          	ld	ra,24(sp)
    8000843c:	00048513          	mv	a0,s1
    80008440:	00813483          	ld	s1,8(sp)
    80008444:	02010113          	addi	sp,sp,32
    80008448:	ffffe317          	auipc	t1,0xffffe
    8000844c:	6d430067          	jr	1748(t1) # 80006b1c <plic_complete>
    80008450:	fffff097          	auipc	ra,0xfffff
    80008454:	3e0080e7          	jalr	992(ra) # 80007830 <uartintr>
    80008458:	fddff06f          	j	80008434 <console_handler+0x74>
    8000845c:	00001517          	auipc	a0,0x1
    80008460:	4bc50513          	addi	a0,a0,1212 # 80009918 <digits+0x78>
    80008464:	fffff097          	auipc	ra,0xfffff
    80008468:	a68080e7          	jalr	-1432(ra) # 80006ecc <panic>
	...
