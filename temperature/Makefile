.PHONY: verilog
verilog:
	bsc -u -verilog -p +:DE10-I2C-devices -vdir . \
    -g $(TOPMOD) mkTempReader DE10-I2C-devices/Temp.bsv
	cp mkTempReader.v ../de10-pro

.PHONY: clean
clean:
	rm -f mkTempReader.v
	rm -f DE10-I2C-devices/*.bo
