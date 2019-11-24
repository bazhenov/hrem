#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h>
#include <avr/power.h>
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>

// User button
#define PIN_BUTTON PINB2
#define PIN_LED PINB1
#define PIN_HALL_POWER PINB0
#define PIN_BUZZER PINB3

void setup() {
  cli();

  MCUSR &= ~_BV(WDRF); // Clear the reset flag

  /* Enabling watchdog */ {
    WDTCR |= _BV(WDCE) | _BV(WDE);
    WDTCR = _BV(WDP3) | _BV(WDP0) | _BV(WDIE);

    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  }

  // Enable button interrupt
    
  // Triggering interrupt on low level
  MCUCR |= (0 << ISC01) | (0 << ISC00);
  // Enabling interrupt on INT0 channel  
  GIMSK = 1 << INT0;

  SREG |= (1 << 7);

  sei();
}

void ledIndicate() {
  PORTB |= _BV(PIN_LED);
  _delay_ms(50);
  PORTB &= ~_BV(PIN_LED);
}

ISR(INT0_vect) {
  cli();
  beep();
  sei();
}

int readAdc() {
  ADMUX =
    (1 << ADLAR) |     // left shift result
    (0 << REFS1) |     // Sets ref. voltage to VCC, bit 1
    (0 << REFS0) |     // Sets ref. voltage to VCC, bit 0
    (0 << MUX3)  |     // use ADC3 for input (PB3)
    (0 << MUX2)  |     // use ADC3 for input (PB3)
    (1 << MUX1)  |     // use ADC3 for input (PB3)
    (0 << MUX0);       // use ADC3 for input (PB3)

  ADCSRA =
    (1 << ADEN)  |     // Enable ADC
    (0 << ADPS2) |     // set prescaler
    (0 << ADPS1) |     // set prescaler
    (0 << ADPS0);      // set prescaler

  ADCSRA |= _BV(ADSC);           // start ADC measurement
	while (ADCSRA & _BV(ADSC));  // wait till conversion complete
	return ADCH;
}

char isLatchClosed() {
  PORTB |= _BV(PIN_HALL_POWER);
  int value = abs(readAdc() - 128);
  PORTB &= ~_BV(PIN_HALL_POWER);
  return value <= 5;
}

void enterSleep() {
  // Disabling ADC
  ADCSRA = 0;

  // Disabling Hall Effect Sensor
  PORTB &= ~_BV(PIN_HALL_POWER);

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
    PORTB |= _BV(PIN_BUZZER);
    _delay_ms(50);
    PORTB &= ~_BV(PIN_BUZZER);
    _delay_ms(50);
  }
}

int	main(void) {
	setup();
	DDRB = _BV(PIN_HALL_POWER) | _BV(PIN_BUZZER) | _BV(PIN_LED);
  PORTB = _BV(PIN_BUTTON);

  for (;;) {
    cli();
    ledIndicate();
		if (isLatchClosed()) {
			//beep();
		}
    sei();
    enterSleep();
	}
	return 0;
}
