F_CPU=16000000L
MCU=atmega8

GCC = avr-gcc -Wall -Os -I. -mmcu=$(MCU) -DF_CPU=$(F_CPU)
OBJECTS = *.o

all:	main.hex

main.bin:
		$(GCC) -o main.bin *.c

main.hex:	main.bin
	avr-objcopy -j .text -j .data -O ihex main.bin main.hex

clean:
	rm -f main.hex main.o main.bin
