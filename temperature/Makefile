.PHONY: verilog
verilog:
	bsc -u -verilog -p +:DE10-I2C-devices -vdir . \
    -g $(TOPMOD) mkTempReader DE10-I2C-devices/Temp.bsv
	bsc -u -verilog -p +:DE10-I2C-devices -vdir . \
    -g $(TOPMOD) mkPowerReader DE10-I2C-devices/Power.bsv

.PHONY: clean
clean:
	rm -f DE10-I2C-devices/*.bo
