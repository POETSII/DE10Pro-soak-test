OUTPUT_ARCH( "riscv" )

__stackBase = 0x0000fffc ;

SECTIONS
{
. = 0;
  .text   : { *.o(.text*) }
. = 0x400;
  .bss    : { *.o(.bss*) }
  .rodata : { *.o(.rodata*) }
  .sdata  : { *.o(.sdata*) }
  .data   : { *.o(.data*) }
  __heapBase = ALIGN(.);
}
