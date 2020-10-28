.PHONY: verilog
verilog: blarney/Makefile
	make -C src

.PHONY: clean
clean:
	make -C boot clean
	make -C src clean

# Fetch blarney repo if it's not there
blarney/Makefile:
	git submodule update --init --recursive
