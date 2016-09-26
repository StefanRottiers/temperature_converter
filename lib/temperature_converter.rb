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

end
