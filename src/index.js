#!/usr/bin/env node
/*
MIT License

Copyright (c) 2018 Bryan Hughes <bryan@nebri.us>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

const five = require('johnny-five');
const { RaspiIO } = require('raspi-io');
const prompts = require('prompts');
const Oled = require('oled-js');
const font = require('oled-font-5x7');

const board = new five.Board({
  io: new RaspiIO()
});

const LED_PIN = 'GPIO18';
const BUTTON_PIN = 'GPIO20';
const PWM_PIN = 'GPIO18';

async function prompt(message) {
  const response = await prompts({
    type: 'confirm',
    name: 'passed',
    message,
    initial: true
  });
  if (!response.passed) {
    process.exit(-1);
  }
}

async function ledBlink() {
  console.log(`Blinking LED on pin ${LED_PIN}`);
  const led = new five.Pin({
    pin: LED_PIN,
    type: 'digital'
  });

  let value = 0;
  const interval = setInterval(() => {
    value = value ? 0 : 1;
    led.write(value);
  }, 500);
  await prompt(`Is the LED connected to pin ${LED_PIN} blinking?`);
  clearInterval(interval);
  led.write(0);

}

async function buttonClick() {
  console.log(`Blinking LED on pin ${LED_PIN}`);
  const button = new five.Button(BUTTON_PIN);

  button.on('press', () => {
    console.log('Button pressed!');
  });

  await prompt(`Did pressing the button connected to pin ${LED_PIN} print a message to the console?`);
}

async function pwmTest() {
  console.log(`Testing range of PWM on pin ${PWM_PIN}`);
  const led = new five.Led(PWM_PIN);

  led.brightness(0);
  await prompt(`Does the PWM signal on pin ${PWM_PIN} have a duty cycle of 0%?`);

  led.brightness(64);
  await prompt(`Does the PWM signal on pin ${PWM_PIN} have a duty cycle of 25%?`);

  led.brightness(128);
  await prompt(`Does the PWM signal on pin ${PWM_PIN} have a duty cycle of 50%?`);

  led.brightness(196);
  await prompt(`Does the PWM signal on pin ${PWM_PIN} have a duty cycle of 75%?`);

  led.brightness(255);
  await prompt(`Does the PWM signal on pin ${PWM_PIN} have a duty cycle of 100%?`);

  led.stop();
  led.off();
}

async function gpsTest() {
  const gps = new five.GPS({
    port: board.io.SERIAL_PORT_IDs.DEFAULT
  });

  gps.on('change', () => {
    console.log(`position: ${gps.latitude} ${gps.longitude}`);
  });

  await prompt(`Do you see the GPS heading from the sensor printed on the screen?`);
}

async function lcdTest() {
  console.log('Testing LCD screen over I2C');

  const oled = new Oled(board, five, {
    width: 128,
    height: 64,
    address: 0x3C
  });
  oled.setCursor(1, 1);
  const message = 'Cats and dogs are really cool animals, you know.';
  oled.writeString(font, 1, message, 1, true, 2);
  await prompt(`Do you see the text "${message}" on the screen?`);
}

async function temperatureTest() {
  const thermometer = new five.Thermometer({
    controller: 'MCP9808'
  });

  thermometer.on('change', () => {
    console.log(`Temperature: ${thermometer.F} F`);
  });

  await prompt(`Do you see the temperature from the sensor printed on the screen?`);
}

board.on('ready', async function() {
  const tests = [
    // ledBlink,
    // buttonClick,
    // pwmTest,
    gpsTest,
    // lcdTest,
    // temperatureTest
  ];
  console.log('Running tests');
  for (const test of tests) {
    await test();
  }
  console.log('Tests complete');
  process.exit(0);
});
