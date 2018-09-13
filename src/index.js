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
const Raspi = require('raspi-io');
const prompts = require('prompts');

const board = new five.Board({
  io: new Raspi({
    enableSoftPwm: true
  })
});

const LED_PIN = 'P1-7';
const PWM_PIN = 'P1-12';
const SOFT_PWM_PIN = 'P1-11';

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
  const led = new five.Led(LED_PIN);

  led.blink();
  await prompt(`Is the LED connected to pin ${LED_PIN} blinking?`);

  led.stop();
  led.off();
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

async function softPwmTest() {
  console.log(`Testing range of PWM on pin ${SOFT_PWM_PIN}`);
  const led = new five.Led(SOFT_PWM_PIN);

  led.brightness(0);
  await prompt(`Does the Software PWM signal on pin ${SOFT_PWM_PIN} have a duty cycle of 0%?`);

  led.brightness(64);
  await prompt(`Does the Software PWM signal on pin ${SOFT_PWM_PIN} have a duty cycle of 25%?`);

  led.brightness(128);
  await prompt(`Does the Software PWM signal on pin ${SOFT_PWM_PIN} have a duty cycle of 50%?`);

  led.brightness(196);
  await prompt(`Does the Software PWM signal on pin ${SOFT_PWM_PIN} have a duty cycle of 75%?`);

  led.brightness(255);
  await prompt(`Does the Software PWM signal on pin ${SOFT_PWM_PIN} have a duty cycle of 100%?`);

  led.stop();
  led.off();
}

async function gpsTest() {

}

async function lcdTest() {

}

async function temperatureTest() {

}

board.on('ready', async function() {
  const tests = [
    ledBlink,
    pwmTest,
    softPwmTest,
    gpsTest,
    lcdTest,
    temperatureTest
  ];
  console.log('Running tests');
  for (const test of tests) {
    await test();
  }
  console.log('Tests complete');
  process.exit(0);
});
