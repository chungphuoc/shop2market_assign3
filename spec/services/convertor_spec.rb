require 'rails_helper'
describe Convertor do
  it 'convert to celsius' do
    convertor = Convertor.new(50)
    expect(convertor.to_celsius).to eq (10.0)
  end

  it 'convert to faherit' do
    convertor = Convertor.new(50)
    expect(convertor.to_fahrenheit).to eq (122.0)
  end
end