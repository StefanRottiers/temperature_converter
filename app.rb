require './lib/temperature_converter.rb'
require "open-uri"
require 'rubygems'
require 'mqtt'
require 'json'


input = ARGV.first.to_f

temperature_converter = TemperatureConverter.new input

puts "Converted values from commandline"
puts temperature_converter.convert_to_fahrenheit
puts temperature_converter.convert_to_kelvin
puts temperature_converter.convert_to_celcius + "\r\n\n"
puts "{celsius: " +temperature_converter.convert_to_celcius + ", fahrenheit: " +temperature_converter.convert_to_fahrenheit + ", kelvin: " + temperature_converter.convert_to_kelvin + "}\r\n\n"
puts "Values from txt file"
puts temperature_converter.from_file_temp_fahrenheit
puts temperature_converter.from_file_temp_kelvin
puts temperature_converter.from_file_temp_celcius + "\r\n\n"
puts "Values from url"
puts temperature_converter.from_url_temp_fahrenheit
puts temperature_converter.from_url_temp_kelvin
puts temperature_converter.from_url_temp_celcius + "\r\n\n"

puts "Values from server"
client = MQTT::Client.connect(
  :host => 'staging.thethingsnetwork.org',
  :port => 1883,
  :username =>'70B3D57ED00012B2',
  :password =>'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w=',
)

client.get('70B3D57ED00012B2/devices/00000000AE6C63E4/up') do |topic,message|
puts a  = JSON.parse(message)['fields']['temperature']
#puts topic
end
