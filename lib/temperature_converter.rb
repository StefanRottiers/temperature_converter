class TemperatureConverter

  private

  def initialize temp
    @temp = temp.to_f
  end

  public

  def convert_to_fahrenheit
      ((@temp * 1.8)+32).to_s + "°F"
  end

  def convert_to_kelvin
    (@temp + 273.15).to_s + "°K"
  end

  def convert_to_celcius
    (@temp).to_s + "°C"
  end

  def from_file_temp_fahrenheit
    @temp=((File.read("./data/temp.txt").to_f*1.8)+32).to_s + " °F"
  end

  def from_file_temp_kelvin
    @temp=(File.read("./data/temp.txt").to_f+273.15).to_s + " °K"
  end

  def from_file_temp_celcius
    @temp=File.read("./data/temp.txt").to_s + " °C"
  end

  def from_url_temp_fahrenheit
    @temp=(((open('http://labict.be/software-engineering/temperature/api/temperature/fake') {|a| a.read }).to_f*1.8)+32).to_s + " °F"
  end

  def from_url_temp_kelvin
    @temp=((open('http://labict.be/software-engineering/temperature/api/temperature/fake') {|a| a.read }).to_f+273.15).to_s + " °K"
  end

  def from_url_temp_celcius
    @temp=(open('http://labict.be/software-engineering/temperature/api/temperature/fake') {|a| a.read }) + " °C"
  end





end
