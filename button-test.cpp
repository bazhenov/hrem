#include <avr/io.h>
#include <util/delay.h>
#include <lib/button.h>
#include <lib/led.h>

int main() {
  
  Button b(DDRB, PORTB, PINB2);
  Led led(DDRB, PORTB, PINB1);

  for (;;) {
    if (b.peek() == Response::Click) {
      led.toggle();
      _delay_ms(100);
    }
  }
}