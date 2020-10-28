PEBBLES_ROOT = $(realpath ..)
BLARNEY_ROOT = $(PEBBLES_ROOT)/blarney
BLC = $(BLARNEY_ROOT)/Scripts/blc

.PHONY: all
all:
	$(BLC) $(BLC_FLAGS) Main.hs -o Main
	./Main
	cp *.v $(PEBBLES_ROOT)/../de10-pro/

clean:
	rm -rf *.o *.hi
	rm -f $(shell find Pebbles -regex ".*\.\(hi\|o\)$$")
	rm -f Main
	rm -f Pebbles.v pebbles_core.v
