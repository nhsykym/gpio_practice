require 'pi_piper'
include PiPiper

pwm_red = PiPiper::Pwm.new pin: 13, clock: 2.kilohertz, range: 255
pwm_green = PiPiper::Pwm.new pin: 18, clock: 2.kilohertz, range: 255
pwm_blue = PiPiper::Pwm.new pin: 19, clock: 2.kilohertz, range: 255

pwm_red.value = 0
pwm_green.value = 0
pwm_blue.value = 0

pwm_red.on
pwm_green.on
pwm_blue.on

loop do
  r = rand.ceil(2)
  g = rand.ceil(2)
  b = rand.ceil(2)

  pwm_red.value = r
  pwm_green.value = g
  pwm_blue.value = b

  puts "r=#{r}, g=#{g}, b=#{b}"
  sleep 1
end
