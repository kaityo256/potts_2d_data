# frozen_string_literal: true

if ARGV.size < 2
  puts "Usage: ruby param.rb Q SystemSize"
  exit
end

Q = ARGV[0].to_i
L = ARGV[1].to_i

ND = 72
Nlow = ND/3
Nhigh = ND - Nlow
ts_low = -10
ts_high = 20
yt = 6.0/5.0

temperatures = []
tc = 1.0/Math.log(1.0 + Math.sqrt(Q))
Nlow.times do |i|
  tmin = tc + ts_low * L ** -yt
  tmax = tc
  t = tmin + (tmax-tmin)*i/Nlow
  temperatures.push t
end

Nhigh.times do |i|
  tmin = tc
  tmax = tc + ts_high * L ** -yt
  t = tmin + (tmax-tmin)*i/Nhigh
  temperatures.push t
end
filename = format("L%<size>03d.dat", size: L)
tomlfile = format("L%<size>03d.toml", size: L)

File.open(tomlfile, "w") do |f|
  f.puts <<-FILE
Q = #{Q}
SystemSize = #{L}
SamplingNumber = 256
OutputFile = "#{filename}"
ThermalizationLoop = 10000
ObservationLoop = 100000
Temperatures = [#{temperatures.join(',')}]
  FILE
end

puts "Filename: #{tomlfile}"
puts "DataPoints: #{temperatures.size}"
