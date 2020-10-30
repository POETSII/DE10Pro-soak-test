OUTPUT_ARCH( "riscv" )

__stackBase = 0x00000ffc ;

SECTIONS
{
. = 0;
  .text   : { *.o(.text*) }
. = 0x1000;
  .bss    : { *.o(.bss*) }
  .rodata : { *.o(.rodata*) }
  .sdata  : { *.o(.sdata*) }
  .data   : { *.o(.data*) }
  __heapBase = ALIGN(.);
}
