class Convertor
  def initialize(value)
    @value = value
  end

  def to_fahrenheit
    #ref: http://www.metric-conversions.org/temperature/celsius-to-fahrenheit.htm
    @value * 1.8 + 32.00
  end

  def to_celsius
    (@value - 32) / 1.8
  end
end
