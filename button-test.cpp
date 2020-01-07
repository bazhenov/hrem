#include <avr/io.h>
#include <util/delay.h>
#include <lib/button.h>
#include <lib/DigitalOutput.h>

void handle_click(EventType response);

Button<PortB, 2> button(&handle_click);
DigitalOutput<PortB, 1> led;
DigitalOutput<PortB, 4> buzzer;

int main() {
  PollingEntry entries[] = {
    {button}
  };

  run_poll_loop(entries, sizeof(entries) / sizeof(entries[0]));
}

void handle_click(EventType response) {
  if (response == Click)
    led.toggle();
  else if ( response == LongPress ) {
    for (int i=0; i < 3; i ++) {
      led.strobe(100);
      buzzer.strobe(100);
    }
  }
}