require './lib/temperature_converter.rb'

input = ARGV.first.to_f

temperature_converter = TemperatureConverter.new input
puts temperature_converter.convert_to_fahrenheit
puts temperature_converter.convert_to_kelvin
puts temperature_converter.convert_to_celcius
