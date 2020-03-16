F_CPU ?= 1000000L
MCU = attiny85
PROGRAMMER ?= usbtiny

CXX = avr-gcc
CXXFLAGS = -Wall -Os -I. -mmcu=$(MCU) -DF_CPU=$(F_CPU) -g

all:	main.hex

SOURCES := $(wildcard lib/*.cpp)
OBJECTS := $(SOURCES:.cpp=.o)

%.hex: %.bin
	avr-objcopy -j .text -j .data -O ihex $< $@

lib/%.o: lib/%.cpp

%.bin: %.o $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^
	avr-size -d --mcu=$(MCU) -C $@

clean:
	rm -f *.hex *.o *.bin lib/*.o

%.flash: %.hex
	avrdude -c $(PROGRAMMER) -p $(MCU) -U flash:w:$<

sim: main.bin
	simavr -m $(MCU) -f $(F_CPU) -g $<

gdb: main.bin
	avr-gdb -ex "symbol-file $<" -ex "b main" -ex "target remote localhost:1234" -ex "continue"

.PHONY: *.flash clean sim gdb
