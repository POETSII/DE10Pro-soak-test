OUTPUT_ARCH( "riscv" )

__stackBase = 0x000007fc ;

SECTIONS
{
. = 0;
  .text   : { *.o(.text*) }
. = 0x800;
  .bss    : { *.o(.bss*) }
  .rodata : { *.o(.rodata*) }
  .sdata  : { *.o(.sdata*) }
  .data   : { *.o(.data*) }
  __heapBase = ALIGN(.);
}
