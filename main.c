#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h>

#define bit_get(p, m) (((p) >> m) & 1)
#define bit_set(p, m) ((p) |= (1 << m))
#define bit_clear(p, m) ((p) &= ~(1 << m))
#define bit_flip(p, m) ((p) ^= (1 << m))
#define bit_write(c, p, m) (c ? bit_set(p, m) : bit_clear(p, m))

void initADC() {
  ADMUX =
            (1 << ADLAR) |     // left shift result
            (0 << REFS1) |     // Sets ref. voltage to VCC, bit 1
            (0 << REFS0) |     // Sets ref. voltage to VCC, bit 0
            (0 << MUX3)  |     // use ADC2 for input (PB4), MUX bit 3
            (0 << MUX2)  |     // use ADC2 for input (PB4), MUX bit 2
            (1 << MUX1)  |     // use ADC2 for input (PB4), MUX bit 1
            (0 << MUX0);       // use ADC2 for input (PB4), MUX bit 0

  ADCSRA = 
            (1 << ADEN)  |     // Enable ADC 
            (0 << ADPS2) |     // set prescaler
            (0 << ADPS1) |     // set prescaler
            (0 << ADPS0);      // set prescaler
}

int readAdc() {
	ADCSRA |= (1 << ADSC);         // start ADC measurement
	while (ADCSRA & (1 << ADSC) ); // wait till conversion complete
	return ADCH;
}

char isLatchClosed() {
  bit_set(PORTB, 2);              // powering hall sensor up
  int value = abs(readAdc() - 128);
  bit_clear(PORTB, 2);            // power down hall sensor
  return value <= 5;
}

void beep() {
  int i;
  for (i=0; i<3; i++) {
    bit_set(PORTB, 3);
    _delay_ms(100);
    bit_clear(PORTB, 3);
    _delay_ms(100);
  }
}

void ledIndicate() {
  bit_set(PORTB, 1);
  _delay_ms(200);
  bit_clear(PORTB, 1);
}

int	main(void) {
	initADC();
	DDRB = _BV(PINB2) | _BV(PINB3) | _BV(PINB1);
  PORTB = 0;            // disable all pull ups and clearing ouput

  for (;;) {
		if (isLatchClosed()) {
			beep();
		}
    ledIndicate();
    _delay_ms(1000);
	}
	return 0;
}

