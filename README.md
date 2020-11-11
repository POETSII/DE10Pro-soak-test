# DE10-Pro Soak Test

This is a project for the DE10-Pro with 4xDDR4 controllers (memory
test driven by NIOS-II), 4x100G MACs (always transmitting), and a
configurable number of RV32IM scalar Pebbles cores (800 by default).
The temperature and power are polled and reported over the JTAG UART.

## Usage

To clone via HTTPS:

```sh
> git clone --recursive https://github.com/POETSII/de10-soak-test
```

Or via SSH:

```sh
> git clone --recursive git@github.com:POETSII/de10-soak-test
```

The only prerequisite needed to build a bitfile is Quartus 19.2.  To
build a bitfile:

```sh
> cd de10-soak-test/de10-pro
> make
```

Warning: by default the design includes 800 Pebbles cores, which takes
around 16 hours to build.

To program a DE10-Pro on cable 1:

```sh
> quartus_pgm -c 1 -m jtag -o "p;output_files/DE10_Pro.sof"
```

To run the temperature and power reader:

```sh
> cd software
> make
> cd MEM_TEST
> DOWNLOAD_CABLE=1 make download-elf
> nios2-terminal -c 1 --instance 0
```
