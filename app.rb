require 'temperature_converter.rb'
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
puts "<div>Celcius: " + temperature_converter.convert_to_celcius + " </div> "
puts "<div>Fahrenheit: " + temperature_converter.convert_to_fahrenheit + " </div> "
puts "<div>Kelvin: " + temperature_converter.convert_to_kelvin + " </div>\r\n\n "

puts "Values from txt file"
puts temperature_converter.from_file_temp_fahrenheit
puts temperature_converter.from_file_temp_kelvin
puts temperature_converter.from_file_temp_celcius + "\r\n\n"
puts "{celsius: " +temperature_converter.from_file_temp_celcius + ", fahrenheit: " +temperature_converter.from_file_temp_fahrenheit + ", kelvin: " + temperature_converter.from_file_temp_kelvin + "}\r\n\n"
puts "<div>Celcius: " + temperature_converter.from_file_temp_celcius + " </div> "
puts "<div>Fahrenheit: " + temperature_converter.from_file_temp_fahrenheit + " </div> "
puts "<div>Kelvin: " + temperature_converter.from_file_temp_kelvin + " </div>\r\n\n "

puts "Values from url"
puts temperature_converter.from_url_temp_fahrenheit
puts temperature_converter.from_url_temp_kelvin
puts temperature_converter.from_url_temp_celcius + "\r\n\n"
puts "{celsius: " +temperature_converter.from_url_temp_celcius + ", fahrenheit: " +temperature_converter.from_url_temp_fahrenheit + ", kelvin: " + temperature_converter.from_url_temp_kelvin + "}\r\n\n"
puts "<div>Celcius: " + temperature_converter.from_url_temp_celcius + " </div> "
puts "<div>Fahrenheit: " + temperature_converter.from_url_temp_fahrenheit + " </div> "
puts "<div>Kelvin: " + temperature_converter.from_url_temp_kelvin + " </div>\r\n\n "

puts "Values from server"
client = MQTT::Client.connect(
  :host => 'staging.thethingsnetwork.org',
  :port => 1883,
  :username =>'70B3D57ED00012B2',
  :password =>'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w=',
)

#Get values from server
client.get('70B3D57ED00012B2/devices/00000000AE6C63E4/up') do |topic,message|
puts a  = JSON.parse(message)['fields']['temperature']
client.disconnect()

#puts topic
end
