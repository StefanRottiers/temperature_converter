require './lib/temperature_converter.rb'

input = ARGV.first.to_f

commandline_temperatureARGV = TemperatureConverter.new input

puts commandline_temperatureARGV.convert_to_fahrenheit
puts commandline_temperatureARGV.convert_to_kelvin
puts commandline_temperatureARGV.convert_to_celcius
puts commandline_temperatureARGV.from_file_temp
