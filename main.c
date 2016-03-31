#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h>
#include <avr/power.h>
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>

#define bit_get(p, m) (((p) >> m) & 1)
#define bit_set(p, m) ((p) |= (1 << m))
#define bit_clear(p, m) ((p) &= ~(1 << m))
#define bit_flip(p, m) ((p) ^= (1 << m))
#define bit_write(c, p, m) (c ? bit_set(p, m) : bit_clear(p, m))

void setup() {
  cli();

  bit_clear(MCUSR, WDRF); // Clear the reset flag

  /* Enabling watchdog */ {
    WDTCR |= _BV(WDCE) | _BV(WDE);
    WDTCR = _BV(WDP3) | _BV(WDP0) | _BV(WDIE);

    set_sleep_mode(SLEEP_MODE_PWR_DOWN);   /* EDIT: could also use SLEEP_MODE_PWR_DOWN for lowest power consumption. */
  }

  sei();
}

int readAdc() {
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

  bit_set(ADCSRA, ADSC);          // start ADC measurement
	while (ADCSRA & (1 << ADSC));  // wait till conversion complete
	return ADCH;
}

char isLatchClosed() {
  bit_set(PORTB, 2);              // powering hall sensor up
  int value = abs(readAdc() - 128);
  bit_clear(PORTB, 2);            // power down hall sensor
  return value <= 5;
}

void enterSleep() {
  // Disabling ADC
  ADCSRA = 0;

  // Disabling all peripherals
  PORTB = 0;

  // Disable Brown out Detection
  sleep_bod_disable();

  wdt_reset();
  /* Now enter sleep mode. */
  sleep_mode();

  /* Re-enable the peripherals. */
  power_all_enable();
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
	setup();
	DDRB = _BV(PINB2) | _BV(PINB3) | _BV(PINB1);
  PORTB = 0;            // disable all pull ups and clearing ouput

  for (;;) {
    cli();
    ledIndicate();
		if (isLatchClosed()) {
			beep();
		}
    sei();
    enterSleep();
	}
	return 0;
}
