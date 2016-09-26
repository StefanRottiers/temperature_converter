require './lib/temperature_converter.rb'
require "open-uri"

input = ARGV.first.to_f

temperature_converter = TemperatureConverter.new input

puts "Converted values from commandline"
puts temperature_converter.convert_to_fahrenheit
puts temperature_converter.convert_to_kelvin
puts temperature_converter.convert_to_celcius + "\r\n\n"
puts "Values from txt file"
puts temperature_converter.from_file_temp_fahrenheit
puts temperature_converter.from_file_temp_kelvin
puts temperature_converter.from_file_temp_celcius
puts "Values from url"
commandline_temperatureARGV = TemperatureConverter.new open('http://labict.be/software-engineering/temperature/api/temperature/fake') {|a| a.read }
puts commandline_temperatureARGV.convert_to_fahrenheit
