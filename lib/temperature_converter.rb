require 'net/http'
require 'uri'


class TemperatureConverter

  def initialize temp
    @temp = temp

  end

  def convert_to_fahrenheit
      ((@temp * 1.8)+32).to_s + " °F"
  end

  def convert_to_kelvin
    (@temp + 273.15).to_s + " °K"
  end

  def convert_to_celcius
    (@temp).to_s + " °C"
  end

  def from_file_temp
    @temp=File.read("./data/temp.txt").to_s + " °C"
  end

  def open(url)
    Net::HTTP.get(URI.parse(url))
  end

  # def from_url_temp
  #   @temp = open(http://labict.be/software-engineering/temperature/api/temperature/fake).to_f
  # end



end
