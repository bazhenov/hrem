F_CPU ?= 1000000L
MCU = attiny85
PROGRAMMER ?= usbtiny

CXX = avr-gcc
CXXFLAGS = -Wall -Os -I. -mmcu=$(MCU) -DF_CPU=$(F_CPU)

all:	main.hex

main.hex:	main.bin
	avr-objcopy -j .text -j .data -O ihex main.bin main.hex

main.bin: *.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

clean:
	rm -f main.hex main.o main.bin

flash: main.hex
	avrdude -c $(PROGRAMMER) -p $(MCU) -U flash:w:$<

.PHONY: flash clean