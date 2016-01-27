class Converter
  class << self
    def celsius_to_fahrenheit(value)
      #ref: http://www.metric-conversions.org/temperature/celsius-to-fahrenheit.htm
      value * 1.8 + 32
    end

    def fahrenheit_to_celsius(value)
      (value - 32) / 1.8
    end
  end
end
