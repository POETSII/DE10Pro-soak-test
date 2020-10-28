ifndef QUARTUS_ROOTDIR
  ifneq ($(MAKECMDGOALS), clean)
    $(error Please set QUARTUS_ROOTDIR)
  endif
endif

.PHONY: one verilog
one: qsys sw
	quartus_sh --flow compile DE10_Pro.qpf

.PHONY: qsys
qsys:
	qsys-generate -syn DE10_Pro_QSYS.qsys --quartus-project=DE10_Pro.qpf

.PHONY: sw
sw: qsys
	make -C software

.PHONY: update-mif
update-mif:
	make -C software
	quartus_cdb --update_mif de10-pro/DE10_Pro.qpf
	quartus_asm DE10_Pro.qpf

.PHONY: clean
clean:
	rm -rf DE10_Pro_QSYS
	rm -rf reset_release
	rm -rf ip/DE10_Pro_QSYS/*/
	rm -rf output_files synth_dumps tmp-clearbox qdb
	make -C software clean
	rm -f *.csv
