ifndef QUARTUS_ROOTDIR
  ifneq ($(MAKECMDGOALS), clean)
    $(error Please set QUARTUS_ROOTDIR)
  endif
endif

.PHONY: all
all:
	nios2-bsp-generate-files \
    --settings=MEM_TEST_bsp/settings.bsp \
    --bsp-dir=MEM_TEST_bsp
	make -C MEM_TEST_bsp
	make -C MEM_TEST

.PHONY: clean
clean:
	make -C MEM_TEST_bsp clean
	make -C MEM_TEST clean
