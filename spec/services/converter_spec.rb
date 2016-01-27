require 'rails_helper'
describe Converter do
  it 'convert to celsius' do
    expect(Converter.fahrenheit_to_celsius(50)).to eq (10.0)
  end

  it 'convert to faherit' do
    expect(Converter.celsius_to_fahrenheit(50)).to eq (122.0)
  end
end