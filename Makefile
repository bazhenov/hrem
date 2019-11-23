F_CPU=1000000L
MCU=attiny85

GCC = avr-gcc -Wall -Os -I. -mmcu=$(MCU) -DF_CPU=$(F_CPU)
OBJECTS = *.o

all:	main.hex

main.bin: *.c
	$(GCC) -o main.bin *.c

main.hex:	main.bin
	avr-objcopy -j .text -j .data -O ihex main.bin main.hex

clean:
	rm -f main.hex main.o main.bin

flash:
	avrdude -c usbtiny -p $(MCU) -U flash:w:main.hex
