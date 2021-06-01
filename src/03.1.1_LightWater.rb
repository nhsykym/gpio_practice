require 'pi_piper'
include PiPiper

leds = [
  PiPiper::Pin.new(pin: 17, direction: :out),
  PiPiper::Pin.new(pin: 18, direction: :out),
  PiPiper::Pin.new(pin: 27, direction: :out),
  PiPiper::Pin.new(pin: 22, direction: :out),
  PiPiper::Pin.new(pin: 23, direction: :out),
  PiPiper::Pin.new(pin: 24, direction: :out),
  PiPiper::Pin.new(pin: 25, direction: :out),
  PiPiper::Pin.new(pin:  2, direction: :out),
  PiPiper::Pin.new(pin:  3, direction: :out),
  PiPiper::Pin.new(pin:  8, direction: :out),
]

leds.each { |led| led.on }

loop do
  leds.each do |led|
    led.off
    sleep 0.1
    led.on
  end
  
  leds.reverse.each do |led|
    led.off
    sleep 0.1
    led.on
  end
end